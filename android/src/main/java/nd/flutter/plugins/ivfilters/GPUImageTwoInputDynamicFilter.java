package nd.flutter.plugins.ivfilters;

import android.graphics.Bitmap;
import android.opengl.GLES20;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.util.HashMap;
import java.util.Map;

import jp.co.cyberagent.android.gpuimage.filter.GPUImageFilter;
import jp.co.cyberagent.android.gpuimage.util.OpenGlUtils;
import jp.co.cyberagent.android.gpuimage.util.Rotation;
import jp.co.cyberagent.android.gpuimage.util.TextureRotationUtil;

public class GPUImageTwoInputDynamicFilter extends GPUImageFilter {
    private static final String VERTEX_SHADER = "attribute vec4 position;\n" +
            "attribute vec4 inputTextureCoordinate;\n" +
            "attribute vec4 inputTextureCoordinate2;\n" +
            " \n" +
            "varying vec2 textureCoordinate;\n" +
            "varying vec2 textureCoordinate2;\n" +
            " \n" +
            "void main()\n" +
            "{\n" +
            "    gl_Position = position;\n" +
            "    textureCoordinate = inputTextureCoordinate.xy;\n" +
            "    textureCoordinate2 = inputTextureCoordinate2.xy;\n" +
            "}";

    @androidx.annotation.NonNull
    private final Map<String, Map<String, Object>> attributes;
    private final Map<String, Integer> bindings;
    public final Map<String, Object> values;

    private int filterSecondTextureCoordinateAttribute;
    private int filterInputTextureUniform2;
    private int filterSourceTexture2 = OpenGlUtils.NO_TEXTURE;
    private ByteBuffer texture2CoordinatesBuffer;
    private Bitmap bitmap;

    public GPUImageTwoInputDynamicFilter(String fragmentShader, Map<String, Map<String, Object>> attributes) {
        this(VERTEX_SHADER, fragmentShader, attributes);
    }

    public GPUImageTwoInputDynamicFilter(String vertexShader, String fragmentShader, Map<String, Map<String, Object>> attributes) {
        super(vertexShader, fragmentShader);
        this.attributes = attributes;
        this.values = new HashMap<>();
        this.bindings = new HashMap<>();
        setRotation(Rotation.NORMAL, false, false);
    }

    @Override
    public void onInit() {
        super.onInit();
        for (String key : attributes.keySet()) {
            if (key.startsWith("inputTexture")) {
                filterSecondTextureCoordinateAttribute = GLES20.glGetAttribLocation(getProgram(), "inputTextureCoordinate2");
                filterInputTextureUniform2 = GLES20.glGetUniformLocation(getProgram(), key); // This does assume a name of "inputImageTexture2" for second input texture in the fragment shader
                GLES20.glEnableVertexAttribArray(filterSecondTextureCoordinateAttribute);
            } else if (key.startsWith("input")) {
                bindings.put(key, GLES20.glGetUniformLocation(getProgram(), key));
            }
        }
    }

    @Override
    public void onInitialized() {
        super.onInitialized();
        if (bitmap != null && !bitmap.isRecycled()) {
            setBitmap(bitmap);
        }
        for (String key : attributes.keySet()) {
            if (key.startsWith("input") && !key.startsWith("inputTexture")) {
                setFloatValueIfNeeded(key);
            }
        }
    }

    public void setBitmap(final Bitmap bitmap) {
        if (bitmap != null && bitmap.isRecycled()) {
            return;
        }
        this.bitmap = bitmap;
        if (this.bitmap == null) {
            return;
        }
        runOnDraw(new Runnable() {
            public void run() {
                if (filterSourceTexture2 == OpenGlUtils.NO_TEXTURE) {
                    if (bitmap == null || bitmap.isRecycled()) {
                        return;
                    }
                    GLES20.glActiveTexture(GLES20.GL_TEXTURE3);
                    filterSourceTexture2 = OpenGlUtils.loadTexture(bitmap, OpenGlUtils.NO_TEXTURE, false);
                }
            }
        });
    }

    public Bitmap getBitmap() {
        return bitmap;
    }

    public void recycleBitmap() {
        if (bitmap != null && !bitmap.isRecycled()) {
            bitmap.recycle();
            bitmap = null;
        }
    }

    public void onDestroy() {
        super.onDestroy();
        GLES20.glDeleteTextures(1, new int[]{
                filterSourceTexture2
        }, 0);
        filterSourceTexture2 = OpenGlUtils.NO_TEXTURE;
    }

    @Override
    protected void onDrawArraysPre() {
        GLES20.glEnableVertexAttribArray(filterSecondTextureCoordinateAttribute);
        GLES20.glActiveTexture(GLES20.GL_TEXTURE3);
        GLES20.glBindTexture(GLES20.GL_TEXTURE_2D, filterSourceTexture2);
        GLES20.glUniform1i(filterInputTextureUniform2, 3);

        texture2CoordinatesBuffer.position(0);
        GLES20.glVertexAttribPointer(filterSecondTextureCoordinateAttribute, 2, GLES20.GL_FLOAT, false, 0, texture2CoordinatesBuffer);
    }

    public void setRotation(final Rotation rotation, final boolean flipHorizontal, final boolean flipVertical) {
        float[] buffer = TextureRotationUtil.getRotation(rotation, flipHorizontal, flipVertical);

        ByteBuffer bBuffer = ByteBuffer.allocateDirect(32).order(ByteOrder.nativeOrder());
        FloatBuffer fBuffer = bBuffer.asFloatBuffer();
        fBuffer.put(buffer);
        fBuffer.flip();

        texture2CoordinatesBuffer = bBuffer;
    }


    private void setFloatValueIfNeeded(String key) {
        int location = bindings.get(key);
        final Map<String, Object> attribute = (Map<String, Object>) attributes.get(key);
        String attributeClass = (String) attribute.get("AttributeClass");
        if (attributeClass.equalsIgnoreCase("float")) {
            final Object current = values.get(key);
            if (current != null) {
                setFloat(location, (float) current);
            } else {
                setFloat(location, floatValue(attribute.get("AttributeDefault")));
            }
        }
    }

    public void update(String key, Object value) {
        final Map<String, Object> attribute = (Map<String, Object>) attributes.get(key);
        String attributeClass = (String) attribute.get("AttributeClass");
        if (attributeClass.equalsIgnoreCase("float")) {
            if (isInitialized()) {
                int location = bindings.get(key);
                setFloat(location, floatValue(value));
                values.put(key, floatValue(value));
            } else {
                values.put(key, floatValue(value));
            }
        } else if (attributeClass.equalsIgnoreCase("float[]")) {
            if (isInitialized()) {
                int location = bindings.get(key);
                setFloatVec3(location, (float[]) value);
                values.put(key, value);
            } else {
                values.put(key, value);
            }
        }
    }

    public float floatValue(Object value) {
        return ((Double) value).floatValue();
    }
}

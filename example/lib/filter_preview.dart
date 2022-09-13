import 'package:flutter/material.dart';
import 'package:native_filters/native_filters.dart';

class FilterPreviewScreen extends StatefulWidget {
  final Filter filter;
  final bool video;

  const FilterPreviewScreen({
    Key? key,
    required this.filter,
    this.video = false,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _FilterPreviewState();
}

class _FilterPreviewState extends State<FilterPreviewScreen> {
  late FilterBasePreviewController _controller;

  String get asset => widget.video ? 'videos/test.mp4' : 'images/test.jpg';

  @override
  void initState() {
    super.initState();
    widget.filter.setAssetSource(asset).then((_) => setState(() {}));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(widget.filter.name),
      ),
      body: Center(
        child: widget.video ? videoPreview : imagePreview,
      ),
    );
  }

  Widget get imagePreview {
    return FilterImagePreview(
      filter: widget.filter,
      onCreated: (controller) {
        _controller = controller;
        _controller.update().then(
              (_) => setState(() {}),
            );
      },
    );
  }

  Widget get videoPreview {
    return FilterVideoPreview(
      filter: widget.filter,
      onCreated: (controller) {
        _controller = controller;
        _controller.update().then(
              (_) => setState(() {}),
            );
      },
    );
  }
}

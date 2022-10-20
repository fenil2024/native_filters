// Copyright 2022
// Autogenerated from Pigeon (v4.2.3), do not edit directly.
// See also: https://pub.dev/packages/pigeon
#import "messages.g.h"
#import <Flutter/Flutter.h>

#if !__has_feature(objc_arc)
#error File requires ARC to be enabled.
#endif

static NSDictionary<NSString *, id> *wrapResult(id result, FlutterError *error) {
  NSDictionary *errorDict = (NSDictionary *)[NSNull null];
  if (error) {
    errorDict = @{
        @"code": (error.code ?: [NSNull null]),
        @"message": (error.message ?: [NSNull null]),
        @"details": (error.details ?: [NSNull null]),
        };
  }
  return @{
      @"result": (result ?: [NSNull null]),
      @"error": errorDict,
      };
}
static id GetNullableObject(NSDictionary* dict, id key) {
  id result = dict[key];
  return (result == [NSNull null]) ? nil : result;
}
static id GetNullableObjectAtIndex(NSArray* array, NSInteger key) {
  id result = array[key];
  return (result == [NSNull null]) ? nil : result;
}


@interface FLTCreateFilterGroupMessage ()
+ (FLTCreateFilterGroupMessage *)fromMap:(NSDictionary *)dict;
+ (nullable FLTCreateFilterGroupMessage *)nullableFromMap:(NSDictionary *)dict;
- (NSDictionary *)toMap;
@end
@interface FLTCreateFilterMessage ()
+ (FLTCreateFilterMessage *)fromMap:(NSDictionary *)dict;
+ (nullable FLTCreateFilterMessage *)nullableFromMap:(NSDictionary *)dict;
- (NSDictionary *)toMap;
@end
@interface FLTAppendFilterMessage ()
+ (FLTAppendFilterMessage *)fromMap:(NSDictionary *)dict;
+ (nullable FLTAppendFilterMessage *)nullableFromMap:(NSDictionary *)dict;
- (NSDictionary *)toMap;
@end
@interface FLTRemoveFilterMessage ()
+ (FLTRemoveFilterMessage *)fromMap:(NSDictionary *)dict;
+ (nullable FLTRemoveFilterMessage *)nullableFromMap:(NSDictionary *)dict;
- (NSDictionary *)toMap;
@end
@interface FLTReplaceFilterMessage ()
+ (FLTReplaceFilterMessage *)fromMap:(NSDictionary *)dict;
+ (nullable FLTReplaceFilterMessage *)nullableFromMap:(NSDictionary *)dict;
- (NSDictionary *)toMap;
@end
@interface FLTInputSourceMessage ()
+ (FLTInputSourceMessage *)fromMap:(NSDictionary *)dict;
+ (nullable FLTInputSourceMessage *)nullableFromMap:(NSDictionary *)dict;
- (NSDictionary *)toMap;
@end
@interface FLTInputDataMessage ()
+ (FLTInputDataMessage *)fromMap:(NSDictionary *)dict;
+ (nullable FLTInputDataMessage *)nullableFromMap:(NSDictionary *)dict;
- (NSDictionary *)toMap;
@end
@interface FLTExportFileMessage ()
+ (FLTExportFileMessage *)fromMap:(NSDictionary *)dict;
+ (nullable FLTExportFileMessage *)nullableFromMap:(NSDictionary *)dict;
- (NSDictionary *)toMap;
@end
@interface FLTExportDataMessage ()
+ (FLTExportDataMessage *)fromMap:(NSDictionary *)dict;
+ (nullable FLTExportDataMessage *)nullableFromMap:(NSDictionary *)dict;
- (NSDictionary *)toMap;
@end
@interface FLTInputNumberValueMessage ()
+ (FLTInputNumberValueMessage *)fromMap:(NSDictionary *)dict;
+ (nullable FLTInputNumberValueMessage *)nullableFromMap:(NSDictionary *)dict;
- (NSDictionary *)toMap;
@end
@interface FLTInputNumberListValueMessage ()
+ (FLTInputNumberListValueMessage *)fromMap:(NSDictionary *)dict;
+ (nullable FLTInputNumberListValueMessage *)nullableFromMap:(NSDictionary *)dict;
- (NSDictionary *)toMap;
@end
@interface FLTInputDataValueMessage ()
+ (FLTInputDataValueMessage *)fromMap:(NSDictionary *)dict;
+ (nullable FLTInputDataValueMessage *)nullableFromMap:(NSDictionary *)dict;
- (NSDictionary *)toMap;
@end
@interface FLTInputDataSourceValueMessage ()
+ (FLTInputDataSourceValueMessage *)fromMap:(NSDictionary *)dict;
+ (nullable FLTInputDataSourceValueMessage *)nullableFromMap:(NSDictionary *)dict;
- (NSDictionary *)toMap;
@end
@interface FLTFilterMessage ()
+ (FLTFilterMessage *)fromMap:(NSDictionary *)dict;
+ (nullable FLTFilterMessage *)nullableFromMap:(NSDictionary *)dict;
- (NSDictionary *)toMap;
@end

@implementation FLTCreateFilterGroupMessage
+ (instancetype)makeWithFilterId:(NSNumber *)filterId {
  FLTCreateFilterGroupMessage* pigeonResult = [[FLTCreateFilterGroupMessage alloc] init];
  pigeonResult.filterId = filterId;
  return pigeonResult;
}
+ (FLTCreateFilterGroupMessage *)fromMap:(NSDictionary *)dict {
  FLTCreateFilterGroupMessage *pigeonResult = [[FLTCreateFilterGroupMessage alloc] init];
  pigeonResult.filterId = GetNullableObject(dict, @"filterId");
  NSAssert(pigeonResult.filterId != nil, @"");
  return pigeonResult;
}
+ (nullable FLTCreateFilterGroupMessage *)nullableFromMap:(NSDictionary *)dict { return (dict) ? [FLTCreateFilterGroupMessage fromMap:dict] : nil; }
- (NSDictionary *)toMap {
  return @{
    @"filterId" : (self.filterId ?: [NSNull null]),
  };
}
@end

@implementation FLTCreateFilterMessage
+ (instancetype)makeWithName:(NSString *)name
    filterId:(NSNumber *)filterId {
  FLTCreateFilterMessage* pigeonResult = [[FLTCreateFilterMessage alloc] init];
  pigeonResult.name = name;
  pigeonResult.filterId = filterId;
  return pigeonResult;
}
+ (FLTCreateFilterMessage *)fromMap:(NSDictionary *)dict {
  FLTCreateFilterMessage *pigeonResult = [[FLTCreateFilterMessage alloc] init];
  pigeonResult.name = GetNullableObject(dict, @"name");
  NSAssert(pigeonResult.name != nil, @"");
  pigeonResult.filterId = GetNullableObject(dict, @"filterId");
  NSAssert(pigeonResult.filterId != nil, @"");
  return pigeonResult;
}
+ (nullable FLTCreateFilterMessage *)nullableFromMap:(NSDictionary *)dict { return (dict) ? [FLTCreateFilterMessage fromMap:dict] : nil; }
- (NSDictionary *)toMap {
  return @{
    @"name" : (self.name ?: [NSNull null]),
    @"filterId" : (self.filterId ?: [NSNull null]),
  };
}
@end

@implementation FLTAppendFilterMessage
+ (instancetype)makeWithName:(NSString *)name
    filterId:(NSNumber *)filterId {
  FLTAppendFilterMessage* pigeonResult = [[FLTAppendFilterMessage alloc] init];
  pigeonResult.name = name;
  pigeonResult.filterId = filterId;
  return pigeonResult;
}
+ (FLTAppendFilterMessage *)fromMap:(NSDictionary *)dict {
  FLTAppendFilterMessage *pigeonResult = [[FLTAppendFilterMessage alloc] init];
  pigeonResult.name = GetNullableObject(dict, @"name");
  NSAssert(pigeonResult.name != nil, @"");
  pigeonResult.filterId = GetNullableObject(dict, @"filterId");
  NSAssert(pigeonResult.filterId != nil, @"");
  return pigeonResult;
}
+ (nullable FLTAppendFilterMessage *)nullableFromMap:(NSDictionary *)dict { return (dict) ? [FLTAppendFilterMessage fromMap:dict] : nil; }
- (NSDictionary *)toMap {
  return @{
    @"name" : (self.name ?: [NSNull null]),
    @"filterId" : (self.filterId ?: [NSNull null]),
  };
}
@end

@implementation FLTRemoveFilterMessage
+ (instancetype)makeWithFilterId:(NSNumber *)filterId
    filterIndex:(NSNumber *)filterIndex {
  FLTRemoveFilterMessage* pigeonResult = [[FLTRemoveFilterMessage alloc] init];
  pigeonResult.filterId = filterId;
  pigeonResult.filterIndex = filterIndex;
  return pigeonResult;
}
+ (FLTRemoveFilterMessage *)fromMap:(NSDictionary *)dict {
  FLTRemoveFilterMessage *pigeonResult = [[FLTRemoveFilterMessage alloc] init];
  pigeonResult.filterId = GetNullableObject(dict, @"filterId");
  NSAssert(pigeonResult.filterId != nil, @"");
  pigeonResult.filterIndex = GetNullableObject(dict, @"filterIndex");
  NSAssert(pigeonResult.filterIndex != nil, @"");
  return pigeonResult;
}
+ (nullable FLTRemoveFilterMessage *)nullableFromMap:(NSDictionary *)dict { return (dict) ? [FLTRemoveFilterMessage fromMap:dict] : nil; }
- (NSDictionary *)toMap {
  return @{
    @"filterId" : (self.filterId ?: [NSNull null]),
    @"filterIndex" : (self.filterIndex ?: [NSNull null]),
  };
}
@end

@implementation FLTReplaceFilterMessage
+ (instancetype)makeWithFilterId:(NSNumber *)filterId
    filterIndex:(NSNumber *)filterIndex
    name:(NSString *)name {
  FLTReplaceFilterMessage* pigeonResult = [[FLTReplaceFilterMessage alloc] init];
  pigeonResult.filterId = filterId;
  pigeonResult.filterIndex = filterIndex;
  pigeonResult.name = name;
  return pigeonResult;
}
+ (FLTReplaceFilterMessage *)fromMap:(NSDictionary *)dict {
  FLTReplaceFilterMessage *pigeonResult = [[FLTReplaceFilterMessage alloc] init];
  pigeonResult.filterId = GetNullableObject(dict, @"filterId");
  NSAssert(pigeonResult.filterId != nil, @"");
  pigeonResult.filterIndex = GetNullableObject(dict, @"filterIndex");
  NSAssert(pigeonResult.filterIndex != nil, @"");
  pigeonResult.name = GetNullableObject(dict, @"name");
  NSAssert(pigeonResult.name != nil, @"");
  return pigeonResult;
}
+ (nullable FLTReplaceFilterMessage *)nullableFromMap:(NSDictionary *)dict { return (dict) ? [FLTReplaceFilterMessage fromMap:dict] : nil; }
- (NSDictionary *)toMap {
  return @{
    @"filterId" : (self.filterId ?: [NSNull null]),
    @"filterIndex" : (self.filterIndex ?: [NSNull null]),
    @"name" : (self.name ?: [NSNull null]),
  };
}
@end

@implementation FLTInputSourceMessage
+ (instancetype)makeWithFilterId:(NSNumber *)filterId
    path:(NSString *)path
    asset:(NSNumber *)asset
    video:(NSNumber *)video {
  FLTInputSourceMessage* pigeonResult = [[FLTInputSourceMessage alloc] init];
  pigeonResult.filterId = filterId;
  pigeonResult.path = path;
  pigeonResult.asset = asset;
  pigeonResult.video = video;
  return pigeonResult;
}
+ (FLTInputSourceMessage *)fromMap:(NSDictionary *)dict {
  FLTInputSourceMessage *pigeonResult = [[FLTInputSourceMessage alloc] init];
  pigeonResult.filterId = GetNullableObject(dict, @"filterId");
  NSAssert(pigeonResult.filterId != nil, @"");
  pigeonResult.path = GetNullableObject(dict, @"path");
  NSAssert(pigeonResult.path != nil, @"");
  pigeonResult.asset = GetNullableObject(dict, @"asset");
  NSAssert(pigeonResult.asset != nil, @"");
  pigeonResult.video = GetNullableObject(dict, @"video");
  NSAssert(pigeonResult.video != nil, @"");
  return pigeonResult;
}
+ (nullable FLTInputSourceMessage *)nullableFromMap:(NSDictionary *)dict { return (dict) ? [FLTInputSourceMessage fromMap:dict] : nil; }
- (NSDictionary *)toMap {
  return @{
    @"filterId" : (self.filterId ?: [NSNull null]),
    @"path" : (self.path ?: [NSNull null]),
    @"asset" : (self.asset ?: [NSNull null]),
    @"video" : (self.video ?: [NSNull null]),
  };
}
@end

@implementation FLTInputDataMessage
+ (instancetype)makeWithFilterId:(NSNumber *)filterId
    data:(FlutterStandardTypedData *)data {
  FLTInputDataMessage* pigeonResult = [[FLTInputDataMessage alloc] init];
  pigeonResult.filterId = filterId;
  pigeonResult.data = data;
  return pigeonResult;
}
+ (FLTInputDataMessage *)fromMap:(NSDictionary *)dict {
  FLTInputDataMessage *pigeonResult = [[FLTInputDataMessage alloc] init];
  pigeonResult.filterId = GetNullableObject(dict, @"filterId");
  NSAssert(pigeonResult.filterId != nil, @"");
  pigeonResult.data = GetNullableObject(dict, @"data");
  NSAssert(pigeonResult.data != nil, @"");
  return pigeonResult;
}
+ (nullable FLTInputDataMessage *)nullableFromMap:(NSDictionary *)dict { return (dict) ? [FLTInputDataMessage fromMap:dict] : nil; }
- (NSDictionary *)toMap {
  return @{
    @"filterId" : (self.filterId ?: [NSNull null]),
    @"data" : (self.data ?: [NSNull null]),
  };
}
@end

@implementation FLTExportFileMessage
+ (instancetype)makeWithFilterId:(NSNumber *)filterId
    path:(NSString *)path
    video:(NSNumber *)video {
  FLTExportFileMessage* pigeonResult = [[FLTExportFileMessage alloc] init];
  pigeonResult.filterId = filterId;
  pigeonResult.path = path;
  pigeonResult.video = video;
  return pigeonResult;
}
+ (FLTExportFileMessage *)fromMap:(NSDictionary *)dict {
  FLTExportFileMessage *pigeonResult = [[FLTExportFileMessage alloc] init];
  pigeonResult.filterId = GetNullableObject(dict, @"filterId");
  NSAssert(pigeonResult.filterId != nil, @"");
  pigeonResult.path = GetNullableObject(dict, @"path");
  NSAssert(pigeonResult.path != nil, @"");
  pigeonResult.video = GetNullableObject(dict, @"video");
  NSAssert(pigeonResult.video != nil, @"");
  return pigeonResult;
}
+ (nullable FLTExportFileMessage *)nullableFromMap:(NSDictionary *)dict { return (dict) ? [FLTExportFileMessage fromMap:dict] : nil; }
- (NSDictionary *)toMap {
  return @{
    @"filterId" : (self.filterId ?: [NSNull null]),
    @"path" : (self.path ?: [NSNull null]),
    @"video" : (self.video ?: [NSNull null]),
  };
}
@end

@implementation FLTExportDataMessage
+ (instancetype)makeWithFilterId:(NSNumber *)filterId
    data:(FlutterStandardTypedData *)data {
  FLTExportDataMessage* pigeonResult = [[FLTExportDataMessage alloc] init];
  pigeonResult.filterId = filterId;
  pigeonResult.data = data;
  return pigeonResult;
}
+ (FLTExportDataMessage *)fromMap:(NSDictionary *)dict {
  FLTExportDataMessage *pigeonResult = [[FLTExportDataMessage alloc] init];
  pigeonResult.filterId = GetNullableObject(dict, @"filterId");
  NSAssert(pigeonResult.filterId != nil, @"");
  pigeonResult.data = GetNullableObject(dict, @"data");
  NSAssert(pigeonResult.data != nil, @"");
  return pigeonResult;
}
+ (nullable FLTExportDataMessage *)nullableFromMap:(NSDictionary *)dict { return (dict) ? [FLTExportDataMessage fromMap:dict] : nil; }
- (NSDictionary *)toMap {
  return @{
    @"filterId" : (self.filterId ?: [NSNull null]),
    @"data" : (self.data ?: [NSNull null]),
  };
}
@end

@implementation FLTInputNumberValueMessage
+ (instancetype)makeWithFilterId:(NSNumber *)filterId
    filterIndex:(NSNumber *)filterIndex
    key:(NSString *)key
    value:(NSNumber *)value {
  FLTInputNumberValueMessage* pigeonResult = [[FLTInputNumberValueMessage alloc] init];
  pigeonResult.filterId = filterId;
  pigeonResult.filterIndex = filterIndex;
  pigeonResult.key = key;
  pigeonResult.value = value;
  return pigeonResult;
}
+ (FLTInputNumberValueMessage *)fromMap:(NSDictionary *)dict {
  FLTInputNumberValueMessage *pigeonResult = [[FLTInputNumberValueMessage alloc] init];
  pigeonResult.filterId = GetNullableObject(dict, @"filterId");
  NSAssert(pigeonResult.filterId != nil, @"");
  pigeonResult.filterIndex = GetNullableObject(dict, @"filterIndex");
  NSAssert(pigeonResult.filterIndex != nil, @"");
  pigeonResult.key = GetNullableObject(dict, @"key");
  NSAssert(pigeonResult.key != nil, @"");
  pigeonResult.value = GetNullableObject(dict, @"value");
  NSAssert(pigeonResult.value != nil, @"");
  return pigeonResult;
}
+ (nullable FLTInputNumberValueMessage *)nullableFromMap:(NSDictionary *)dict { return (dict) ? [FLTInputNumberValueMessage fromMap:dict] : nil; }
- (NSDictionary *)toMap {
  return @{
    @"filterId" : (self.filterId ?: [NSNull null]),
    @"filterIndex" : (self.filterIndex ?: [NSNull null]),
    @"key" : (self.key ?: [NSNull null]),
    @"value" : (self.value ?: [NSNull null]),
  };
}
@end

@implementation FLTInputNumberListValueMessage
+ (instancetype)makeWithFilterId:(NSNumber *)filterId
    filterIndex:(NSNumber *)filterIndex
    key:(NSString *)key
    value:(NSArray<NSNumber *> *)value {
  FLTInputNumberListValueMessage* pigeonResult = [[FLTInputNumberListValueMessage alloc] init];
  pigeonResult.filterId = filterId;
  pigeonResult.filterIndex = filterIndex;
  pigeonResult.key = key;
  pigeonResult.value = value;
  return pigeonResult;
}
+ (FLTInputNumberListValueMessage *)fromMap:(NSDictionary *)dict {
  FLTInputNumberListValueMessage *pigeonResult = [[FLTInputNumberListValueMessage alloc] init];
  pigeonResult.filterId = GetNullableObject(dict, @"filterId");
  NSAssert(pigeonResult.filterId != nil, @"");
  pigeonResult.filterIndex = GetNullableObject(dict, @"filterIndex");
  NSAssert(pigeonResult.filterIndex != nil, @"");
  pigeonResult.key = GetNullableObject(dict, @"key");
  NSAssert(pigeonResult.key != nil, @"");
  pigeonResult.value = GetNullableObject(dict, @"value");
  NSAssert(pigeonResult.value != nil, @"");
  return pigeonResult;
}
+ (nullable FLTInputNumberListValueMessage *)nullableFromMap:(NSDictionary *)dict { return (dict) ? [FLTInputNumberListValueMessage fromMap:dict] : nil; }
- (NSDictionary *)toMap {
  return @{
    @"filterId" : (self.filterId ?: [NSNull null]),
    @"filterIndex" : (self.filterIndex ?: [NSNull null]),
    @"key" : (self.key ?: [NSNull null]),
    @"value" : (self.value ?: [NSNull null]),
  };
}
@end

@implementation FLTInputDataValueMessage
+ (instancetype)makeWithFilterId:(NSNumber *)filterId
    filterIndex:(NSNumber *)filterIndex
    key:(NSString *)key
    value:(FlutterStandardTypedData *)value {
  FLTInputDataValueMessage* pigeonResult = [[FLTInputDataValueMessage alloc] init];
  pigeonResult.filterId = filterId;
  pigeonResult.filterIndex = filterIndex;
  pigeonResult.key = key;
  pigeonResult.value = value;
  return pigeonResult;
}
+ (FLTInputDataValueMessage *)fromMap:(NSDictionary *)dict {
  FLTInputDataValueMessage *pigeonResult = [[FLTInputDataValueMessage alloc] init];
  pigeonResult.filterId = GetNullableObject(dict, @"filterId");
  NSAssert(pigeonResult.filterId != nil, @"");
  pigeonResult.filterIndex = GetNullableObject(dict, @"filterIndex");
  NSAssert(pigeonResult.filterIndex != nil, @"");
  pigeonResult.key = GetNullableObject(dict, @"key");
  NSAssert(pigeonResult.key != nil, @"");
  pigeonResult.value = GetNullableObject(dict, @"value");
  NSAssert(pigeonResult.value != nil, @"");
  return pigeonResult;
}
+ (nullable FLTInputDataValueMessage *)nullableFromMap:(NSDictionary *)dict { return (dict) ? [FLTInputDataValueMessage fromMap:dict] : nil; }
- (NSDictionary *)toMap {
  return @{
    @"filterId" : (self.filterId ?: [NSNull null]),
    @"filterIndex" : (self.filterIndex ?: [NSNull null]),
    @"key" : (self.key ?: [NSNull null]),
    @"value" : (self.value ?: [NSNull null]),
  };
}
@end

@implementation FLTInputDataSourceValueMessage
+ (instancetype)makeWithFilterId:(NSNumber *)filterId
    filterIndex:(NSNumber *)filterIndex
    key:(NSString *)key
    value:(NSString *)value {
  FLTInputDataSourceValueMessage* pigeonResult = [[FLTInputDataSourceValueMessage alloc] init];
  pigeonResult.filterId = filterId;
  pigeonResult.filterIndex = filterIndex;
  pigeonResult.key = key;
  pigeonResult.value = value;
  return pigeonResult;
}
+ (FLTInputDataSourceValueMessage *)fromMap:(NSDictionary *)dict {
  FLTInputDataSourceValueMessage *pigeonResult = [[FLTInputDataSourceValueMessage alloc] init];
  pigeonResult.filterId = GetNullableObject(dict, @"filterId");
  NSAssert(pigeonResult.filterId != nil, @"");
  pigeonResult.filterIndex = GetNullableObject(dict, @"filterIndex");
  NSAssert(pigeonResult.filterIndex != nil, @"");
  pigeonResult.key = GetNullableObject(dict, @"key");
  NSAssert(pigeonResult.key != nil, @"");
  pigeonResult.value = GetNullableObject(dict, @"value");
  NSAssert(pigeonResult.value != nil, @"");
  return pigeonResult;
}
+ (nullable FLTInputDataSourceValueMessage *)nullableFromMap:(NSDictionary *)dict { return (dict) ? [FLTInputDataSourceValueMessage fromMap:dict] : nil; }
- (NSDictionary *)toMap {
  return @{
    @"filterId" : (self.filterId ?: [NSNull null]),
    @"filterIndex" : (self.filterIndex ?: [NSNull null]),
    @"key" : (self.key ?: [NSNull null]),
    @"value" : (self.value ?: [NSNull null]),
  };
}
@end

@implementation FLTFilterMessage
+ (instancetype)makeWithFilterId:(NSNumber *)filterId {
  FLTFilterMessage* pigeonResult = [[FLTFilterMessage alloc] init];
  pigeonResult.filterId = filterId;
  return pigeonResult;
}
+ (FLTFilterMessage *)fromMap:(NSDictionary *)dict {
  FLTFilterMessage *pigeonResult = [[FLTFilterMessage alloc] init];
  pigeonResult.filterId = GetNullableObject(dict, @"filterId");
  NSAssert(pigeonResult.filterId != nil, @"");
  return pigeonResult;
}
+ (nullable FLTFilterMessage *)nullableFromMap:(NSDictionary *)dict { return (dict) ? [FLTFilterMessage fromMap:dict] : nil; }
- (NSDictionary *)toMap {
  return @{
    @"filterId" : (self.filterId ?: [NSNull null]),
  };
}
@end

@interface FLTImageVideoFilterFactoryApiCodecReader : FlutterStandardReader
@end
@implementation FLTImageVideoFilterFactoryApiCodecReader
- (nullable id)readValueOfType:(UInt8)type 
{
  switch (type) {
    case 128:     
      return [FLTAppendFilterMessage fromMap:[self readValue]];
    
    case 129:     
      return [FLTCreateFilterGroupMessage fromMap:[self readValue]];
    
    case 130:     
      return [FLTCreateFilterMessage fromMap:[self readValue]];
    
    case 131:     
      return [FLTExportDataMessage fromMap:[self readValue]];
    
    case 132:     
      return [FLTExportFileMessage fromMap:[self readValue]];
    
    case 133:     
      return [FLTFilterMessage fromMap:[self readValue]];
    
    case 134:     
      return [FLTInputDataMessage fromMap:[self readValue]];
    
    case 135:     
      return [FLTInputDataSourceValueMessage fromMap:[self readValue]];
    
    case 136:     
      return [FLTInputDataValueMessage fromMap:[self readValue]];
    
    case 137:     
      return [FLTInputNumberListValueMessage fromMap:[self readValue]];
    
    case 138:     
      return [FLTInputNumberValueMessage fromMap:[self readValue]];
    
    case 139:     
      return [FLTInputSourceMessage fromMap:[self readValue]];
    
    case 140:     
      return [FLTRemoveFilterMessage fromMap:[self readValue]];
    
    case 141:     
      return [FLTReplaceFilterMessage fromMap:[self readValue]];
    
    default:    
      return [super readValueOfType:type];
    
  }
}
@end

@interface FLTImageVideoFilterFactoryApiCodecWriter : FlutterStandardWriter
@end
@implementation FLTImageVideoFilterFactoryApiCodecWriter
- (void)writeValue:(id)value 
{
  if ([value isKindOfClass:[FLTAppendFilterMessage class]]) {
    [self writeByte:128];
    [self writeValue:[value toMap]];
  } else 
  if ([value isKindOfClass:[FLTCreateFilterGroupMessage class]]) {
    [self writeByte:129];
    [self writeValue:[value toMap]];
  } else 
  if ([value isKindOfClass:[FLTCreateFilterMessage class]]) {
    [self writeByte:130];
    [self writeValue:[value toMap]];
  } else 
  if ([value isKindOfClass:[FLTExportDataMessage class]]) {
    [self writeByte:131];
    [self writeValue:[value toMap]];
  } else 
  if ([value isKindOfClass:[FLTExportFileMessage class]]) {
    [self writeByte:132];
    [self writeValue:[value toMap]];
  } else 
  if ([value isKindOfClass:[FLTFilterMessage class]]) {
    [self writeByte:133];
    [self writeValue:[value toMap]];
  } else 
  if ([value isKindOfClass:[FLTInputDataMessage class]]) {
    [self writeByte:134];
    [self writeValue:[value toMap]];
  } else 
  if ([value isKindOfClass:[FLTInputDataSourceValueMessage class]]) {
    [self writeByte:135];
    [self writeValue:[value toMap]];
  } else 
  if ([value isKindOfClass:[FLTInputDataValueMessage class]]) {
    [self writeByte:136];
    [self writeValue:[value toMap]];
  } else 
  if ([value isKindOfClass:[FLTInputNumberListValueMessage class]]) {
    [self writeByte:137];
    [self writeValue:[value toMap]];
  } else 
  if ([value isKindOfClass:[FLTInputNumberValueMessage class]]) {
    [self writeByte:138];
    [self writeValue:[value toMap]];
  } else 
  if ([value isKindOfClass:[FLTInputSourceMessage class]]) {
    [self writeByte:139];
    [self writeValue:[value toMap]];
  } else 
  if ([value isKindOfClass:[FLTRemoveFilterMessage class]]) {
    [self writeByte:140];
    [self writeValue:[value toMap]];
  } else 
  if ([value isKindOfClass:[FLTReplaceFilterMessage class]]) {
    [self writeByte:141];
    [self writeValue:[value toMap]];
  } else 
{
    [super writeValue:value];
  }
}
@end

@interface FLTImageVideoFilterFactoryApiCodecReaderWriter : FlutterStandardReaderWriter
@end
@implementation FLTImageVideoFilterFactoryApiCodecReaderWriter
- (FlutterStandardWriter *)writerWithData:(NSMutableData *)data {
  return [[FLTImageVideoFilterFactoryApiCodecWriter alloc] initWithData:data];
}
- (FlutterStandardReader *)readerWithData:(NSData *)data {
  return [[FLTImageVideoFilterFactoryApiCodecReader alloc] initWithData:data];
}
@end


NSObject<FlutterMessageCodec> *FLTImageVideoFilterFactoryApiGetCodec() {
  static FlutterStandardMessageCodec *sSharedObject = nil;
  static dispatch_once_t sPred = 0;
  dispatch_once(&sPred, ^{
    FLTImageVideoFilterFactoryApiCodecReaderWriter *readerWriter = [[FLTImageVideoFilterFactoryApiCodecReaderWriter alloc] init];
    sSharedObject = [FlutterStandardMessageCodec codecWithReaderWriter:readerWriter];
  });
  return sSharedObject;
}

void FLTImageVideoFilterFactoryApiSetup(id<FlutterBinaryMessenger> binaryMessenger, NSObject<FLTImageVideoFilterFactoryApi> *api) {
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.ImageVideoFilterFactoryApi.createFilter"
        binaryMessenger:binaryMessenger
        codec:FLTImageVideoFilterFactoryApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(createFilter:error:)], @"FLTImageVideoFilterFactoryApi api (%@) doesn't respond to @selector(createFilter:error:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        FLTCreateFilterMessage *arg_msg = GetNullableObjectAtIndex(args, 0);
        FlutterError *error;
        FLTFilterMessage *output = [api createFilter:arg_msg error:&error];
        callback(wrapResult(output, error));
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.ImageVideoFilterFactoryApi.createFilterGroup"
        binaryMessenger:binaryMessenger
        codec:FLTImageVideoFilterFactoryApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(createFilterGroup:error:)], @"FLTImageVideoFilterFactoryApi api (%@) doesn't respond to @selector(createFilterGroup:error:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        FLTCreateFilterGroupMessage *arg_msg = GetNullableObjectAtIndex(args, 0);
        FlutterError *error;
        FLTFilterMessage *output = [api createFilterGroup:arg_msg error:&error];
        callback(wrapResult(output, error));
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.ImageVideoFilterFactoryApi.appendFilter"
        binaryMessenger:binaryMessenger
        codec:FLTImageVideoFilterFactoryApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(appendFilter:error:)], @"FLTImageVideoFilterFactoryApi api (%@) doesn't respond to @selector(appendFilter:error:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        FLTAppendFilterMessage *arg_msg = GetNullableObjectAtIndex(args, 0);
        FlutterError *error;
        [api appendFilter:arg_msg error:&error];
        callback(wrapResult(nil, error));
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.ImageVideoFilterFactoryApi.removeFilter"
        binaryMessenger:binaryMessenger
        codec:FLTImageVideoFilterFactoryApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(removeFilter:error:)], @"FLTImageVideoFilterFactoryApi api (%@) doesn't respond to @selector(removeFilter:error:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        FLTRemoveFilterMessage *arg_msg = GetNullableObjectAtIndex(args, 0);
        FlutterError *error;
        [api removeFilter:arg_msg error:&error];
        callback(wrapResult(nil, error));
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.ImageVideoFilterFactoryApi.replaceFilter"
        binaryMessenger:binaryMessenger
        codec:FLTImageVideoFilterFactoryApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(replaceFilter:error:)], @"FLTImageVideoFilterFactoryApi api (%@) doesn't respond to @selector(replaceFilter:error:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        FLTReplaceFilterMessage *arg_msg = GetNullableObjectAtIndex(args, 0);
        FlutterError *error;
        [api replaceFilter:arg_msg error:&error];
        callback(wrapResult(nil, error));
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.ImageVideoFilterFactoryApi.setInputData"
        binaryMessenger:binaryMessenger
        codec:FLTImageVideoFilterFactoryApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(setInputData:error:)], @"FLTImageVideoFilterFactoryApi api (%@) doesn't respond to @selector(setInputData:error:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        FLTInputDataMessage *arg_msg = GetNullableObjectAtIndex(args, 0);
        FlutterError *error;
        [api setInputData:arg_msg error:&error];
        callback(wrapResult(nil, error));
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.ImageVideoFilterFactoryApi.setInputSource"
        binaryMessenger:binaryMessenger
        codec:FLTImageVideoFilterFactoryApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(setInputSource:error:)], @"FLTImageVideoFilterFactoryApi api (%@) doesn't respond to @selector(setInputSource:error:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        FLTInputSourceMessage *arg_msg = GetNullableObjectAtIndex(args, 0);
        FlutterError *error;
        [api setInputSource:arg_msg error:&error];
        callback(wrapResult(nil, error));
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.ImageVideoFilterFactoryApi.exportData"
        binaryMessenger:binaryMessenger
        codec:FLTImageVideoFilterFactoryApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(exportData:error:)], @"FLTImageVideoFilterFactoryApi api (%@) doesn't respond to @selector(exportData:error:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        FLTFilterMessage *arg_msg = GetNullableObjectAtIndex(args, 0);
        FlutterError *error;
        FLTExportDataMessage *output = [api exportData:arg_msg error:&error];
        callback(wrapResult(output, error));
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.ImageVideoFilterFactoryApi.exportFile"
        binaryMessenger:binaryMessenger
        codec:FLTImageVideoFilterFactoryApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(exportFile:completion:)], @"FLTImageVideoFilterFactoryApi api (%@) doesn't respond to @selector(exportFile:completion:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        FLTExportFileMessage *arg_msg = GetNullableObjectAtIndex(args, 0);
        [api exportFile:arg_msg completion:^(FlutterError *_Nullable error) {
          callback(wrapResult(nil, error));
        }];
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.ImageVideoFilterFactoryApi.setNumberValue"
        binaryMessenger:binaryMessenger
        codec:FLTImageVideoFilterFactoryApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(setNumberValue:error:)], @"FLTImageVideoFilterFactoryApi api (%@) doesn't respond to @selector(setNumberValue:error:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        FLTInputNumberValueMessage *arg_msg = GetNullableObjectAtIndex(args, 0);
        FlutterError *error;
        [api setNumberValue:arg_msg error:&error];
        callback(wrapResult(nil, error));
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.ImageVideoFilterFactoryApi.setNumberListValue"
        binaryMessenger:binaryMessenger
        codec:FLTImageVideoFilterFactoryApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(setNumberListValue:error:)], @"FLTImageVideoFilterFactoryApi api (%@) doesn't respond to @selector(setNumberListValue:error:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        FLTInputNumberListValueMessage *arg_msg = GetNullableObjectAtIndex(args, 0);
        FlutterError *error;
        [api setNumberListValue:arg_msg error:&error];
        callback(wrapResult(nil, error));
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.ImageVideoFilterFactoryApi.setDataValue"
        binaryMessenger:binaryMessenger
        codec:FLTImageVideoFilterFactoryApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(setDataValue:error:)], @"FLTImageVideoFilterFactoryApi api (%@) doesn't respond to @selector(setDataValue:error:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        FLTInputDataValueMessage *arg_msg = GetNullableObjectAtIndex(args, 0);
        FlutterError *error;
        [api setDataValue:arg_msg error:&error];
        callback(wrapResult(nil, error));
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.ImageVideoFilterFactoryApi.setDataSourceValue"
        binaryMessenger:binaryMessenger
        codec:FLTImageVideoFilterFactoryApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(setDataSourceValue:error:)], @"FLTImageVideoFilterFactoryApi api (%@) doesn't respond to @selector(setDataSourceValue:error:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        FLTInputDataSourceValueMessage *arg_msg = GetNullableObjectAtIndex(args, 0);
        FlutterError *error;
        [api setDataSourceValue:arg_msg error:&error];
        callback(wrapResult(nil, error));
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
  {
    FlutterBasicMessageChannel *channel =
      [[FlutterBasicMessageChannel alloc]
        initWithName:@"dev.flutter.pigeon.ImageVideoFilterFactoryApi.dispose"
        binaryMessenger:binaryMessenger
        codec:FLTImageVideoFilterFactoryApiGetCodec()];
    if (api) {
      NSCAssert([api respondsToSelector:@selector(disposeFilter:error:)], @"FLTImageVideoFilterFactoryApi api (%@) doesn't respond to @selector(disposeFilter:error:)", api);
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        NSArray *args = message;
        FLTFilterMessage *arg_msg = GetNullableObjectAtIndex(args, 0);
        FlutterError *error;
        [api disposeFilter:arg_msg error:&error];
        callback(wrapResult(nil, error));
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
}

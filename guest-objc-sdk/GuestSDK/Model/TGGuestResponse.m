#import "TGGuestResponse.h"

@implementation TGGuestResponse

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    
  }
  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"title": @"title", @"sequence": @"sequence", @"_id": @"id", @"pageType": @"page_type", @"customFields": @"custom_fields" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"title", @"sequence", @"_id", @"pageType", @"customFields"];
  return [optionalProperties containsObject:propertyName];
}

@end

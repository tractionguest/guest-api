#import "TGAuditLogChange.h"

@implementation TGAuditLogChange

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"fieldName": @"field_name", @"fieldValueBefore": @"field_value_before", @"fieldValueAfter": @"field_value_after", @"format": @"format" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"fieldName", @"fieldValueBefore", @"fieldValueAfter", @"format"];
  return [optionalProperties containsObject:propertyName];
}

@end

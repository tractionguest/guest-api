#import "TGNotificationTrigger.h"

@implementation TGNotificationTrigger

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"offsetDirection": @"offset_direction", @"offsetAmount": @"offset_amount", @"offsetOrigin": @"offset_origin", @"emailTemplateId": @"email_template_id", @"notificationGroups": @"notification_groups", @"offsetUnit": @"offset_unit", @"emailTemplateName": @"email_template_name" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[];
  return [optionalProperties containsObject:propertyName];
}

@end

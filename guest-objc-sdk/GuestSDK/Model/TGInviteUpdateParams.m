#import "TGInviteUpdateParams.h"

@implementation TGInviteUpdateParams

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"mobileNumber": @"mobile_number", @"userId": @"user_id", @"onPremise": @"on_premise", @"notificationTriggers": @"notification_triggers", @"firstName": @"first_name", @"emailTemplateId": @"email_template_id", @"customFields": @"custom_fields", @"hostIds": @"host_ids", @"title": @"title", @"startDate": @"start_date", @"lastName": @"last_name", @"endDate": @"end_date", @"email": @"email", @"company": @"company" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"mobileNumber", @"userId", @"onPremise", @"notificationTriggers", @"firstName", @"emailTemplateId", @"customFields", @"hostIds", @"title", @"startDate", @"lastName", @"endDate", @"email", @"company"];
  return [optionalProperties containsObject:propertyName];
}

@end

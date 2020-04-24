#import "OAIInviteUpdateParams.h"

@implementation OAIInviteUpdateParams

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"company": @"company", @"email": @"email", @"endDate": @"end_date", @"lastName": @"last_name", @"startDate": @"start_date", @"title": @"title", @"hostIds": @"host_ids", @"customFields": @"custom_fields", @"emailTemplateId": @"email_template_id", @"firstName": @"first_name", @"notificationTriggers": @"notification_triggers", @"onPremise": @"on_premise", @"userId": @"user_id", @"mobileNumber": @"mobile_number" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"company", @"email", @"endDate", @"lastName", @"startDate", @"title", @"hostIds", @"customFields", @"emailTemplateId", @"firstName", @"notificationTriggers", @"onPremise", @"userId", @"mobileNumber"];
  return [optionalProperties containsObject:propertyName];
}

@end

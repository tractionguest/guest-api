#import "OAISigninCreateParams.h"

@implementation OAISigninCreateParams

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"guestEmailTemplateId": @"guest_email_template_id", @"hostEmailTemplateId": @"host_email_template_id", @"hostIds": @"host_ids", @"locationId": @"location_id", @"sendNotifications": @"send_notifications", @"smsMessage": @"sms_message", @"firstName": @"first_name", @"lastName": @"last_name", @"company": @"company", @"email": @"email", @"registrationId": @"registration_id" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"guestEmailTemplateId", @"hostEmailTemplateId", @"hostIds", @"locationId", @"sendNotifications", @"smsMessage", @"firstName", @"lastName", @"company", @"email", @"registrationId"];
  return [optionalProperties containsObject:propertyName];
}

@end

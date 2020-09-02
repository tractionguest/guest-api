#import "TGSigninCreateParams.h"

@implementation TGSigninCreateParams

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"registrationId": @"registration_id", @"email": @"email", @"company": @"company", @"lastName": @"last_name", @"firstName": @"first_name", @"smsMessage": @"sms_message", @"sendNotifications": @"send_notifications", @"locationId": @"location_id", @"hostIds": @"host_ids", @"hostEmailTemplateId": @"host_email_template_id", @"guestEmailTemplateId": @"guest_email_template_id" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"registrationId", @"email", @"company", @"lastName", @"firstName", @"smsMessage", @"sendNotifications", @"locationId", @"hostIds", @"hostEmailTemplateId", @"guestEmailTemplateId"];
  return [optionalProperties containsObject:propertyName];
}

@end

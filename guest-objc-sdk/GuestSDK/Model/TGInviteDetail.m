#import "TGInviteDetail.h"

@implementation TGInviteDetail

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"registration": @"registration", @"mobileNumber": @"mobile_number", @"emailTemplate": @"email_template", @"inviteWatchlist": @"invite_watchlist", @"notificationTriggers": @"notification_triggers", @"customFields": @"custom_fields", @"watchlistColour": @"watchlist_colour", @"location": @"location", @"hosts": @"hosts", @"startDate": @"start_date", @"lastName": @"last_name", @"firstName": @"first_name", @"endDate": @"end_date", @"email": @"email", @"createdAt": @"created_at", @"company": @"company", @"groupVisit": @"group_visit" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"registration", @"mobileNumber", @"emailTemplate", @"inviteWatchlist", @"notificationTriggers", @"customFields", @"watchlistColour", @"location", @"hosts", @"startDate", @"endDate", @"createdAt", @"company", @"groupVisit"];
  return [optionalProperties containsObject:propertyName];
}

@end

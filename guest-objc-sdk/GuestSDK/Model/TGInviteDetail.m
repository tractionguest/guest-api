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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"company": @"company", @"createdAt": @"created_at", @"email": @"email", @"endDate": @"end_date", @"firstName": @"first_name", @"lastName": @"last_name", @"startDate": @"start_date", @"hosts": @"hosts", @"location": @"location", @"watchlistColour": @"watchlist_colour", @"customFields": @"custom_fields", @"notificationTriggers": @"notification_triggers", @"inviteWatchlist": @"invite_watchlist", @"emailTemplate": @"email_template", @"mobileNumber": @"mobile_number", @"registration": @"registration" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"company", @"createdAt", @"endDate", @"startDate", @"hosts", @"location", @"watchlistColour", @"customFields", @"notificationTriggers", @"inviteWatchlist", @"emailTemplate", @"mobileNumber", @"registration"];
  return [optionalProperties containsObject:propertyName];
}

@end

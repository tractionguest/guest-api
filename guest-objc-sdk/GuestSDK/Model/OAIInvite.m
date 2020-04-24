#import "OAIInvite.h"

@implementation OAIInvite

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"firstName": @"first_name", @"lastName": @"last_name", @"startDate": @"start_date", @"location": @"location", @"watchlistColour": @"watchlist_colour", @"hosts": @"hosts", @"inviteWatchlist": @"invite_watchlist", @"endDate": @"end_date", @"email": @"email", @"mobileNumber": @"mobile_number" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"startDate", @"location", @"watchlistColour", @"hosts", @"inviteWatchlist", @"endDate", @"mobileNumber"];
  return [optionalProperties containsObject:propertyName];
}

@end

#import "TGInvite.h"

@implementation TGInvite

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"registration": @"registration", @"mobileNumber": @"mobile_number", @"email": @"email", @"endDate": @"end_date", @"inviteWatchlist": @"invite_watchlist", @"hosts": @"hosts", @"watchlistColour": @"watchlist_colour", @"location": @"location", @"startDate": @"start_date", @"lastName": @"last_name", @"firstName": @"first_name", @"groupVisit": @"group_visit" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"registration", @"mobileNumber", @"endDate", @"inviteWatchlist", @"hosts", @"watchlistColour", @"location", @"startDate", @"groupVisit"];
  return [optionalProperties containsObject:propertyName];
}

@end

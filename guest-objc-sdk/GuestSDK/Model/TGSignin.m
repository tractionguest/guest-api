#import "TGSignin.h"

@implementation TGSignin

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"mobileNumber": @"mobile_number", @"signinWatchlist": @"signin_watchlist", @"hosts": @"hosts", @"signinTimestamp": @"signin_timestamp", @"signinPhotoUrl": @"signin_photo_url", @"signedOutTimestamp": @"signed_out_timestamp", @"locationName": @"location_name", @"lastName": @"last_name", @"isAcknowledged": @"is_acknowledged", @"isAccountedFor": @"is_accounted_for", @"firstName": @"first_name", @"email": @"email", @"company": @"company" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"mobileNumber", @"signinWatchlist", @"signinTimestamp", @"signinPhotoUrl", @"signedOutTimestamp", @"locationName", @"lastName", @"isAcknowledged", @"isAccountedFor", @"firstName", @"email", @"company"];
  return [optionalProperties containsObject:propertyName];
}

@end

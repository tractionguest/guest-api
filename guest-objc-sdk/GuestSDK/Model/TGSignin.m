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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"company": @"company", @"email": @"email", @"firstName": @"first_name", @"isAccountedFor": @"is_accounted_for", @"isAcknowledged": @"is_acknowledged", @"lastName": @"last_name", @"locationName": @"location_name", @"signedOutTimestamp": @"signed_out_timestamp", @"signinPhotoUrl": @"signin_photo_url", @"signinTimestamp": @"signin_timestamp", @"hosts": @"hosts", @"signinWatchlist": @"signin_watchlist", @"mobileNumber": @"mobile_number" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"company", @"email", @"firstName", @"isAccountedFor", @"isAcknowledged", @"lastName", @"locationName", @"signedOutTimestamp", @"signinPhotoUrl", @"signinTimestamp", @"signinWatchlist", @"mobileNumber"];
  return [optionalProperties containsObject:propertyName];
}

@end

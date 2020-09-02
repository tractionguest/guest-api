#import "TGSigninDetail.h"

@implementation TGSigninDetail

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"documents": @"documents", @"signinWatchlist": @"signin_watchlist", @"hosts": @"hosts", @"signinData": @"signin_data", @"signinAcknowledgement": @"signin_acknowledgement", @"note": @"note", @"isSignedOut": @"is_signed_out", @"signinTimestamp": @"signin_timestamp", @"signinPhotoUrl": @"signin_photo_url", @"signedOutTimestamp": @"signed_out_timestamp", @"mobileNumber": @"mobile_number", @"locationName": @"location_name", @"lastName": @"last_name", @"isAcknowledged": @"is_acknowledged", @"isAccountedFor": @"is_accounted_for", @"firstName": @"first_name", @"email": @"email", @"company": @"company", @"registration": @"registration" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"documents", @"signinWatchlist", @"hosts", @"signinData", @"signinAcknowledgement", @"note", @"isSignedOut", @"signinTimestamp", @"signinPhotoUrl", @"signedOutTimestamp", @"mobileNumber", @"locationName", @"lastName", @"isAcknowledged", @"isAccountedFor", @"firstName", @"email", @"company", @"registration"];
  return [optionalProperties containsObject:propertyName];
}

@end

#import "OAISigninDetail.h"

@implementation OAISigninDetail

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"company": @"company", @"email": @"email", @"firstName": @"first_name", @"isAccountedFor": @"is_accounted_for", @"isAcknowledged": @"is_acknowledged", @"lastName": @"last_name", @"locationName": @"location_name", @"mobileNumber": @"mobile_number", @"signedOutTimestamp": @"signed_out_timestamp", @"signinPhotoUrl": @"signin_photo_url", @"signinTimestamp": @"signin_timestamp", @"isSignedOut": @"is_signed_out", @"note": @"note", @"signinAcknowledgement": @"signin_acknowledgement", @"signinData": @"signin_data", @"hosts": @"hosts", @"signinWatchlist": @"signin_watchlist", @"documents": @"documents" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"company", @"email", @"firstName", @"isAccountedFor", @"isAcknowledged", @"lastName", @"locationName", @"mobileNumber", @"signedOutTimestamp", @"signinPhotoUrl", @"signinTimestamp", @"isSignedOut", @"note", @"signinAcknowledgement", @"signinData", @"hosts", @"signinWatchlist", @"documents"];
  return [optionalProperties containsObject:propertyName];
}

@end

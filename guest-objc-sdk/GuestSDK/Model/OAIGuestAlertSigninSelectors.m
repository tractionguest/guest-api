#import "OAIGuestAlertSigninSelectors.h"

@implementation OAIGuestAlertSigninSelectors

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"isSignedOut": @"is_signed_out", @"signinIds": @"signin_ids", @"locationIds": @"location_ids" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"isSignedOut", @"signinIds", @"locationIds"];
  return [optionalProperties containsObject:propertyName];
}

@end

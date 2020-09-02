#import "TGUser.h"

@implementation TGUser

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"mobileAccessEnabled": @"mobile_access_enabled", @"permissionGroups": @"permission_groups", @"email": @"email", @"lastName": @"last_name", @"firstName": @"first_name", @"registrationPortalEnabled": @"registration_portal_enabled" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"permissionGroups", @"lastName", @"firstName", ];
  return [optionalProperties containsObject:propertyName];
}

@end

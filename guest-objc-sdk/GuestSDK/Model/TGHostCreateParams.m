#import "TGHostCreateParams.h"

@implementation TGHostCreateParams

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"email": @"email", @"firstName": @"first_name", @"lastName": @"last_name", @"profilePicUrl": @"profile_pic_url", @"department": @"department", @"mobileNumber": @"mobile_number" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"email", @"firstName", @"lastName", @"profilePicUrl", @"department", @"mobileNumber"];
  return [optionalProperties containsObject:propertyName];
}

@end

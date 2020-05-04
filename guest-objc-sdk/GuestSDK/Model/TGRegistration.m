#import "TGRegistration.h"

@implementation TGRegistration

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"visitor": @"visitor", @"invite": @"invite", @"guestResponses": @"guest_responses", @"photoUrl": @"photo_url", @"company": @"company", @"email": @"email", @"name": @"name", @"createdAt": @"created_at" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"visitor", @"invite", @"guestResponses", @"photoUrl", @"company", @"email", @"name", @"createdAt"];
  return [optionalProperties containsObject:propertyName];
}

@end

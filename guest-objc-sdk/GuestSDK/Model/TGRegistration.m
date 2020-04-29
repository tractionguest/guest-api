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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"createdAt": @"created_at", @"name": @"name", @"email": @"email", @"company": @"company", @"photoUrl": @"photo_url", @"guestReponses": @"guest_reponses", @"invite": @"invite", @"visitor": @"visitor" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"createdAt", @"name", @"email", @"company", @"photoUrl", @"guestReponses", @"invite", @"visitor"];
  return [optionalProperties containsObject:propertyName];
}

@end

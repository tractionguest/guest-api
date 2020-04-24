#import "OAIWatchlistCreateParams.h"

@implementation OAIWatchlistCreateParams

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"colour": @"colour", @"email": @"email", @"firstName": @"first_name", @"lastName": @"last_name", @"notes": @"notes", @"aliases": @"aliases" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"colour", @"email", @"firstName", @"lastName", @"notes", @"aliases"];
  return [optionalProperties containsObject:propertyName];
}

@end

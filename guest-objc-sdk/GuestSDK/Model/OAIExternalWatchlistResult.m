#import "OAIExternalWatchlistResult.h"

@implementation OAIExternalWatchlistResult

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"searchTerms": @"search_terms", @"integration": @"integration", @"colour": @"colour", @"matches": @"matches" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"searchTerms", @"integration", @"colour", @"matches"];
  return [optionalProperties containsObject:propertyName];
}

@end

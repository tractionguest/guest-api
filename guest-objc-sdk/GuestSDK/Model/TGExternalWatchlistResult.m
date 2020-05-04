#import "TGExternalWatchlistResult.h"

@implementation TGExternalWatchlistResult

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"matches": @"matches", @"colour": @"colour", @"integration": @"integration", @"searchTerms": @"search_terms" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"matches", @"colour", @"integration", @"searchTerms"];
  return [optionalProperties containsObject:propertyName];
}

@end

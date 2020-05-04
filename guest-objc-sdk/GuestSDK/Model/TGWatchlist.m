#import "TGWatchlist.h"

@implementation TGWatchlist

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"aliases": @"aliases", @"photo": @"photo", @"notes": @"notes", @"lastName": @"last_name", @"firstName": @"first_name", @"email": @"email", @"colour": @"colour" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"aliases", @"photo", @"notes", @"lastName", @"firstName", @"email", @"colour"];
  return [optionalProperties containsObject:propertyName];
}

@end

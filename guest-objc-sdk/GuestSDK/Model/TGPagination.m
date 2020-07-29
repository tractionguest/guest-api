#import "TGPagination.h"

@implementation TGPagination

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"totalRecords": @"total_records", @"currentOffset": @"current_offset", @"nextOffset": @"next_offset", @"lastId": @"last_id", @"limit": @"limit" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"totalRecords", @"currentOffset", @"nextOffset", @"lastId", @"limit"];
  return [optionalProperties containsObject:propertyName];
}

@end

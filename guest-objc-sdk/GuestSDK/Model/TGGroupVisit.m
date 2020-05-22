#import "TGGroupVisit.h"

@implementation TGGroupVisit

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"location": @"location", @"hosts": @"hosts", @"name": @"name", @"startTime": @"start_time", @"endTime": @"end_time", @"createdAt": @"created_at", @"updatedAt": @"updated_at" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"location", @"hosts", @"name", @"startTime", @"endTime", @"createdAt", @"updatedAt"];
  return [optionalProperties containsObject:propertyName];
}

@end

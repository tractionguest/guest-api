#import "TGBatchJob.h"

@implementation TGBatchJob

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"bid": @"bid", @"createdAt": @"created_at", @"status": @"status", @"totalRecords": @"total_records", @"workerName": @"worker_name", @"user": @"user" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"bid", @"createdAt", @"status", @"totalRecords", @"workerName", @"user"];
  return [optionalProperties containsObject:propertyName];
}

@end

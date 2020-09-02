#import "TGPackage.h"

@implementation TGPackage

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"recipient": @"recipient", @"location": @"location", @"packageState": @"package_state", @"carrierName": @"carrier_name", @"pickedUpAt": @"picked_up_at", @"createdAt": @"created_at", @"image": @"image" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"recipient", @"carrierName", @"pickedUpAt", @"image"];
  return [optionalProperties containsObject:propertyName];
}

@end

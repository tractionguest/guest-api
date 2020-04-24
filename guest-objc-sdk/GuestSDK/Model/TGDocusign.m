#import "TGDocusign.h"

@implementation TGDocusign

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"templateId": @"template_id", @"integration": @"integration", @"ndaStatus": @"nda_status", @"ndaSignedDate": @"nda_signed_date", @"envelopeId": @"envelope_id", @"sequence": @"sequence", @"docusignId": @"docusign_id", @"docusignName": @"docusign_name", @"title": @"title" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"templateId", @"integration", @"ndaStatus", @"ndaSignedDate", @"envelopeId", @"sequence", @"docusignId", @"docusignName", @"title"];
  return [optionalProperties containsObject:propertyName];
}

@end

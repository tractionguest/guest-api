#import "TGAuditLog.h"

@implementation TGAuditLog

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"createdAt": @"created_at", @"requestUuid": @"request_uuid", @"remoteAddress": @"remote_address", @"comment": @"comment", @"version": @"version", @"auditedChanges": @"audited_changes", @"action": @"action", @"username": @"username", @"userId": @"user_id", @"auditableType": @"auditable_type", @"auditableId": @"auditable_id" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"createdAt", @"requestUuid", @"remoteAddress", @"comment", @"version", @"auditedChanges", @"action", @"username", @"userId", @"auditableType", @"auditableId"];
  return [optionalProperties containsObject:propertyName];
}

@end

#import "OAIAuditLog.h"

@implementation OAIAuditLog

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"auditableId": @"auditable_id", @"auditableType": @"auditable_type", @"userId": @"user_id", @"username": @"username", @"action": @"action", @"auditedChanges": @"audited_changes", @"version": @"version", @"comment": @"comment", @"remoteAddress": @"remote_address", @"requestUuid": @"request_uuid", @"createdAt": @"created_at" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"auditableId", @"auditableType", @"userId", @"username", @"action", @"auditedChanges", @"version", @"comment", @"remoteAddress", @"requestUuid", @"createdAt"];
  return [optionalProperties containsObject:propertyName];
}

@end

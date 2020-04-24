#import "TGVisitor.h"

@implementation TGVisitor

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"active": @"active", @"company": @"company", @"createdVia": @"created_via", @"email": @"email", @"firstName": @"first_name", @"lastName": @"last_name", @"mobile": @"mobile", @"note": @"note", @"profilePicContentType": @"profile_pic_content_type", @"profilePicFileName": @"profile_pic_file_name", @"profilePicFileSize": @"profile_pic_file_size", @"profilePicUpdatedAt": @"profile_pic_updated_at", @"watchlistLevel": @"watchlist_level", @"createdAt": @"created_at", @"updatedAt": @"updated_at" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"active", @"company", @"createdVia", @"email", @"firstName", @"lastName", @"mobile", @"note", @"profilePicContentType", @"profilePicFileName", @"profilePicFileSize", @"profilePicUpdatedAt", @"watchlistLevel", @"createdAt", @"updatedAt"];
  return [optionalProperties containsObject:propertyName];
}

@end

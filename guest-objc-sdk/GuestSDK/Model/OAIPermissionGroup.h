#import <Foundation/Foundation.h>
#import "OAIObject.h"

/**
* Traction Guest API
* A compelling story about a lone device, on a quest for its data.
*
* The version of the OpenAPI document: 0.11.1
* Contact: bmckay@tractionguest.com
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/





@protocol OAIPermissionGroup
@end

@interface OAIPermissionGroup : OAIObject


@property(nonatomic) NSString* name;

@property(nonatomic) NSString* visibility;

@property(nonatomic) NSArray<NSString*>* permissions;

@end

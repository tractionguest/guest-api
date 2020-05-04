#import <Foundation/Foundation.h>
#import "TGObject.h"

/**
* Traction Guest API
* The leader in enterprise visitor management, empowers businesses across five continents and dozens of industries to keep people safe while creating connection in the contactless world.
*
* The version of the OpenAPI document: 0.11.5
* Contact: bmckay@tractionguest.com
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/


#import "TGPermissionGroup.h"
@protocol TGPermissionGroup;
@class TGPermissionGroup;



@protocol TGUser
@end

@interface TGUser : TGObject


@property(nonatomic) NSNumber* _id;
/* Identifies if user has access to mobile app features. 
 */
@property(nonatomic) NSNumber* mobileAccessEnabled;

@property(nonatomic) NSArray<TGPermissionGroup>* permissionGroups;
/*  
 */
@property(nonatomic) NSString* email;
/*  [optional]
 */
@property(nonatomic) NSString* lastName;
/*  [optional]
 */
@property(nonatomic) NSString* firstName;

@end

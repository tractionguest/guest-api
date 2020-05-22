#import <Foundation/Foundation.h>
#import "TGObject.h"

/**
* Traction Guest API
* The leader in enterprise visitor management, empowers businesses across five continents and dozens of industries to keep people safe while creating connection in the contactless world.
*
* The version of the OpenAPI document: 0.11.7
* Contact: bmckay@tractionguest.com
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/





@protocol TGNotificationTriggerCreateParams
@end

@interface TGNotificationTriggerCreateParams : TGObject

/* Whether the offset should be calculated as `days` or `hours` 
 */
@property(nonatomic) NSString* offsetUnit;
/* An array made of only `INVITEE`, `HOSTS, or `LEP` as possible string values 
 */
@property(nonatomic) NSArray<NSString*>* notificationGroups;

@property(nonatomic) NSNumber* emailTemplateId;
/* Whether the offset should be calculated from the start, or finish of the event 
 */
@property(nonatomic) NSString* offsetOrigin;
/* The amount to offset the notification from the event 
 */
@property(nonatomic) NSNumber* offsetAmount;
/* Whether the offset should be calculated for before, or after the event 
 */
@property(nonatomic) NSString* offsetDirection;

@end

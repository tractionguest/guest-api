#import <Foundation/Foundation.h>
#import "TGObject.h"

/**
* Traction Guest API
* A compelling story about a lone device, on a quest for its data.
*
* The version of the OpenAPI document: 0.11.3
* Contact: bmckay@tractionguest.com
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/


#import "TGCustomField.h"
#import "TGNotificationTriggerCreateParams.h"
@protocol TGCustomField;
@class TGCustomField;
@protocol TGNotificationTriggerCreateParams;
@class TGNotificationTriggerCreateParams;



@protocol TGInviteUpdateParams
@end

@interface TGInviteUpdateParams : TGObject


@property(nonatomic) NSString* company;

@property(nonatomic) NSString* email;

@property(nonatomic) NSDate* endDate;

@property(nonatomic) NSString* lastName;

@property(nonatomic) NSDate* startDate;

@property(nonatomic) NSString* title;

@property(nonatomic) NSArray<NSNumber*>* hostIds;

@property(nonatomic) NSArray<TGCustomField>* customFields;

@property(nonatomic) NSNumber* emailTemplateId;

@property(nonatomic) NSString* firstName;

@property(nonatomic) NSArray<TGNotificationTriggerCreateParams>* notificationTriggers;

@property(nonatomic) NSNumber* onPremise;
/* Used for transfering ownership of an `Invite` to another member of the Account [optional]
 */
@property(nonatomic) NSNumber* userId;

@property(nonatomic) NSString* mobileNumber;

@end

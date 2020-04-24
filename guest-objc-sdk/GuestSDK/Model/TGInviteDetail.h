#import <Foundation/Foundation.h>
#import "TGObject.h"

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


#import "TGCustomField.h"
#import "TGEmailTemplate.h"
#import "TGHost.h"
#import "TGInviteWatchlist.h"
#import "TGLocation.h"
#import "TGNotificationTrigger.h"
@protocol TGCustomField;
@class TGCustomField;
@protocol TGEmailTemplate;
@class TGEmailTemplate;
@protocol TGHost;
@class TGHost;
@protocol TGInviteWatchlist;
@class TGInviteWatchlist;
@protocol TGLocation;
@class TGLocation;
@protocol TGNotificationTrigger;
@class TGNotificationTrigger;



@protocol TGInviteDetail
@end

@interface TGInviteDetail : TGObject


@property(nonatomic) NSNumber* _id;

@property(nonatomic) NSString* company;

@property(nonatomic) NSDate* createdAt;

@property(nonatomic) NSString* email;

@property(nonatomic) NSDate* endDate;

@property(nonatomic) NSString* firstName;

@property(nonatomic) NSString* lastName;

@property(nonatomic) NSDate* startDate;

@property(nonatomic) NSArray<TGHost>* hosts;

@property(nonatomic) TGLocation* location;

@property(nonatomic) NSString* watchlistColour;

@property(nonatomic) NSArray<TGCustomField>* customFields;
/* List of scheduled notifications for an invite [optional]
 */
@property(nonatomic) NSArray<TGNotificationTrigger>* notificationTriggers;

@property(nonatomic) TGInviteWatchlist* inviteWatchlist;

@property(nonatomic) TGEmailTemplate* emailTemplate;
/* Phone number [optional]
 */
@property(nonatomic) NSString* mobileNumber;

@end

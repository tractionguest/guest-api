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


#import "TGHost.h"
#import "TGSigninWatchlist.h"
@protocol TGHost;
@class TGHost;
@protocol TGSigninWatchlist;
@class TGSigninWatchlist;



@protocol TGSignin
@end

@interface TGSignin : TGObject


@property(nonatomic) NSNumber* _id;

@property(nonatomic) NSString* company;

@property(nonatomic) NSString* email;

@property(nonatomic) NSString* firstName;

@property(nonatomic) NSNumber* isAccountedFor;

@property(nonatomic) NSNumber* isAcknowledged;

@property(nonatomic) NSString* lastName;

@property(nonatomic) NSString* locationName;

@property(nonatomic) NSDate* signedOutTimestamp;

@property(nonatomic) NSString* signinPhotoUrl;

@property(nonatomic) NSDate* signinTimestamp;

@property(nonatomic) NSArray<TGHost>* hosts;

@property(nonatomic) TGSigninWatchlist* signinWatchlist;

@property(nonatomic) NSString* mobileNumber;

@end

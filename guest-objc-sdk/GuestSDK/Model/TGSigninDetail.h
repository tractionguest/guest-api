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


#import "TGHost.h"
#import "TGSignableDocument.h"
#import "TGSigninAcknowledgement.h"
#import "TGSigninData.h"
#import "TGSigninWatchlist.h"
@protocol TGHost;
@class TGHost;
@protocol TGSignableDocument;
@class TGSignableDocument;
@protocol TGSigninAcknowledgement;
@class TGSigninAcknowledgement;
@protocol TGSigninData;
@class TGSigninData;
@protocol TGSigninWatchlist;
@class TGSigninWatchlist;



@protocol TGSigninDetail
@end

@interface TGSigninDetail : TGObject


@property(nonatomic) NSNumber* _id;

@property(nonatomic) NSString* company;

@property(nonatomic) NSString* email;

@property(nonatomic) NSString* firstName;

@property(nonatomic) NSNumber* isAccountedFor;
/* Whether this Signin has been acknowledged yet. Can also be used as a one-way method of setting the Signin as acknowledged. [optional]
 */
@property(nonatomic) NSNumber* isAcknowledged;

@property(nonatomic) NSString* lastName;

@property(nonatomic) NSString* locationName;

@property(nonatomic) NSString* mobileNumber;

@property(nonatomic) NSDate* signedOutTimestamp;

@property(nonatomic) NSString* signinPhotoUrl;

@property(nonatomic) NSDate* signinTimestamp;
/* A one-way method of Signing out a Signin [optional]
 */
@property(nonatomic) NSNumber* isSignedOut;

@property(nonatomic) NSString* note;

@property(nonatomic) TGSigninAcknowledgement* signinAcknowledgement;

@property(nonatomic) NSArray<TGSigninData>* signinData;

@property(nonatomic) NSArray<TGHost>* hosts;

@property(nonatomic) TGSigninWatchlist* signinWatchlist;

@property(nonatomic) NSArray<TGSignableDocument>* documents;

@end

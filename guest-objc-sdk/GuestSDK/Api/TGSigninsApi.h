#import <Foundation/Foundation.h>
#import "TGErrorsList.h"
#import "TGPaginatedSigninsList.h"
#import "TGSignin.h"
#import "TGSigninCreateParams.h"
#import "TGSigninDetail.h"
#import "TGSigninUpdateParams.h"
#import "TGApi.h"

/**
* Traction Guest API
* A compelling story about a lone device, on a quest for its data.
*
* The version of the OpenAPI document: 0.11.4
* Contact: bmckay@tractionguest.com
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/



@interface TGSigninsApi: NSObject <TGApi>

extern NSString* kTGSigninsApiErrorDomain;
extern NSInteger kTGSigninsApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(TGApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// Create a Signin
/// Creates a new instance of a `Signin`.
///
/// @param signinCreateParams A new &#x60;Signin&#x60; to be created.
/// @param idempotencyKey An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it&#39;s submitted. We store idempotency keys for only 24 hours. Any &#x60;Idempotency-Key&#x60; shorter than 10 characters will be ignored (optional)
/// 
///  code:201 message:"Successful response.",
///  code:400 message:"A generic error",
///  code:401 message:"You don't have permission to create this Signin",
///  code:403 message:"You do not have permission for this action",
///  code:422 message:"Your request was not formatted correctly"
///
/// @return TGSignin*
-(NSURLSessionTask*) createSigninWithSigninCreateParams: (TGSigninCreateParams*) signinCreateParams
    idempotencyKey: (NSString*) idempotencyKey
    completionHandler: (void (^)(TGSignin* output, NSError* error)) handler;


/// Get a Signin
/// Gets the details of a single instance of a `Signin`.
///
/// @param signinId A unique identifier for a &#x60;Signin&#x60;.
/// @param include A list of comma-separated related models to include (optional)
/// 
///  code:200 message:"Successful response - returns a single `Signin`.",
///  code:400 message:"A generic error",
///  code:401 message:"You don't have permission to view this Signin",
///  code:403 message:"You do not have permission for this action",
///  code:404 message:"The Signin does not exist"
///
/// @return TGSigninDetail*
-(NSURLSessionTask*) getSigninWithSigninId: (NSString*) signinId
    include: (NSString*) include
    completionHandler: (void (^)(TGSigninDetail* output, NSError* error)) handler;


/// List All Signins
/// Gets a list of all `Signin` entities.
///
/// @param locationIds A comma separated list of Location IDs (optional)
/// @param withColours A comma separated list of case-insensitive colour values. i.e., &#x60;red&#x60;, &#x60;green&#x60;, &#x60;yellow&#x60;, and &#x60;orange&#x60; (optional)
/// @param query Allows you to query by &#x60;company&#x60;, &#x60;email&#x60;, &#x60;first_name&#x60;, &#x60;last_name&#x60;, and &#x60;location_name&#x60; (optional)
/// @param withAcknowledged Filters to all those &#x60;Signin&#x60;s that have, or have not been acknowledged (optional)
/// @param withSignedIn Filters to all &#x60;Signin&#x60;s that are, or are not currently signed out. (optional)
/// @param signinBefore Filters results to all those *before* the provided datetime (optional)
/// @param signinAfter Filters results to all those *after* the provided datetime (optional)
/// @param limit Limits the results to a specified number, defaults to 50 (optional)
/// @param offset Offsets the results to a specified number, defaults to 0 (optional)
/// @param querySort Allows you to override ordering by most relevant results when querying (optional)
/// @param include A list of comma-separated related models to include (optional)
/// 
///  code:200 message:"Successful response - returns an array of `Signin` entities.",
///  code:400 message:"A generic error",
///  code:401 message:"You don't have permission to view these Signins",
///  code:403 message:"You do not have permission for this action"
///
/// @return TGPaginatedSigninsList*
-(NSURLSessionTask*) getSigninsWithLocationIds: (NSString*) locationIds
    withColours: (NSString*) withColours
    query: (NSString*) query
    withAcknowledged: (NSNumber*) withAcknowledged
    withSignedIn: (NSNumber*) withSignedIn
    signinBefore: (NSDate*) signinBefore
    signinAfter: (NSDate*) signinAfter
    limit: (NSNumber*) limit
    offset: (NSNumber*) offset
    querySort: (NSString*) querySort
    include: (NSString*) include
    completionHandler: (void (^)(TGPaginatedSigninsList* output, NSError* error)) handler;


/// Update a Signin attribute
/// Update, acknowledge, or `Signout` a `Signin`
///
/// @param signinId A unique identifier for a &#x60;Signin&#x60;.
/// @param signinUpdateParams The only updatable values for a &#x60;Signin&#x60; are &#x60;badge_number&#x60;, &#x60;badge_returned&#x60;, &#x60;is_accounted_for&#x60;, &#x60;is_signed_out&#x60;, and &#x60;is_acknowledged&#x60;. &#x60;is_signed_out&#x60;, and &#x60;is_acknowledged&#x60; are pseudo attributes where once they are set to true, there&#39;s no going back.
/// @param idempotencyKey An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it&#39;s submitted. We store idempotency keys for only 24 hours. Any &#x60;Idempotency-Key&#x60; shorter than 10 characters will be ignored (optional)
/// 
///  code:200 message:"The Signin has been acknowledged, or signed out.",
///  code:400 message:"A generic error",
///  code:401 message:"You don't have permission to update this Signin",
///  code:403 message:"You do not have permission for this action",
///  code:404 message:"The Signin does not exist",
///  code:422 message:"Your request was not formatted correctly"
///
/// @return TGSigninDetail*
-(NSURLSessionTask*) updateSigninWithSigninId: (NSString*) signinId
    signinUpdateParams: (TGSigninUpdateParams*) signinUpdateParams
    idempotencyKey: (NSString*) idempotencyKey
    completionHandler: (void (^)(TGSigninDetail* output, NSError* error)) handler;



@end

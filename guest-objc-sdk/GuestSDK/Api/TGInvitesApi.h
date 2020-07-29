#import <Foundation/Foundation.h>
#import "TGErrorsList.h"
#import "TGInviteCreateParams.h"
#import "TGInviteDetail.h"
#import "TGInviteUpdateParams.h"
#import "TGPaginatedInvitesList.h"
#import "TGApi.h"

/**
* Traction Guest API
* The Traction Guest API is currently in **closed beta**. We're still building, testing, and fixing bugs.  If you're interested in helping us get to version 1.0.0, contact your CS team representative. Only paid accounts are elligible.  # Slack  Do you have Slack? Want faster answers to Traction Guest API questions?  Ask to be added to the Traction Guest API Slack channel!  Talk to your CS team representative, or send an email to the API support email above, and we'll add you.  # Versioning  This API follows [semantic versioning](https://semver.org/), which follows the `Major`.`Minor`.`Patch` format. In short:  * The `Major` number increments when potentially incompatible changes are made. * The `Minor` number increments when backwards-compatible additions are made. * The `Patch` number increments when backwards-compatible bug-fixes are made.  So, once the API is out of closed beta, and has reached version 1.0.0, some things may change.  **However**, the developers at Traction Guest strive to keep things running smoothly for our clients. We plan to **deprecate and warn** before making any potentially breaking changes; you may receive messages that follow the format \"this is deprecated, and will be removed in version X.X.X, which is scheduled for release on or after 20XX-01-01.\" Please note that the deprecation message format and content may change.  At this time, we are not planning to make older or 'legacy' versions of the API available, going forward.  # Getting Started  Would you like your team to be a part of closed beta testing? Talk to your CS team representative. We'll walk you through the process of enabling API access and provisioning your account. 
*
* The version of the OpenAPI document: 0.12.2
* Contact: support@tractionguest.com
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/



@interface TGInvitesApi: NSObject <TGApi>

extern NSString* kTGInvitesApiErrorDomain;
extern NSInteger kTGInvitesApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(TGApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// Create an Invite
/// Creates a new `Invite` for a specific `Location`.
///
/// @param locationId 
/// @param inviteCreateParams 
/// @param idempotencyKey An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it&#39;s submitted. We store idempotency keys for only 24 hours. Any &#x60;Idempotency-Key&#x60; shorter than 10 characters will be ignored (optional)
/// 
///  code:201 message:"Created the `Invite` for the `Location`",
///  code:400 message:"A generic error",
///  code:401 message:"You don't have permission to create this Invite",
///  code:403 message:"You do not have permission for this action",
///  code:404 message:"The Location does not exist",
///  code:422 message:"Your request was not formatted correctly"
///
/// @return TGInviteDetail*
-(NSURLSessionTask*) createLocationInviteWithLocationId: (NSString*) locationId
    inviteCreateParams: (TGInviteCreateParams*) inviteCreateParams
    idempotencyKey: (NSString*) idempotencyKey
    completionHandler: (void (^)(TGInviteDetail* output, NSError* error)) handler;


/// Deletes an Invite
/// Deletes a single instance of `Invite`
///
/// @param inviteId 
/// @param idempotencyKey An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it&#39;s submitted. We store idempotency keys for only 24 hours. Any &#x60;Idempotency-Key&#x60; shorter than 10 characters will be ignored (optional)
/// 
///  code:204 message:"The `Invite` has been deleted",
///  code:400 message:"There was an error in trying to delete the `Invite`"
///
/// @return void
-(NSURLSessionTask*) deleteInviteWithInviteId: (NSString*) inviteId
    idempotencyKey: (NSString*) idempotencyKey
    completionHandler: (void (^)(NSError* error)) handler;


/// Get an Invite
/// Gets the details of a single instance of a `Invite`.
///
/// @param inviteId 
/// @param include A list of comma-separated related models to include (optional)
/// 
///  code:200 message:"Successful response - returns a single `Invite`.",
///  code:400 message:"A generic error",
///  code:401 message:"You don't have permission to view this Invite",
///  code:403 message:"You do not have permission for this action",
///  code:404 message:"The Invite you are looking for does not exist"
///
/// @return TGInviteDetail*
-(NSURLSessionTask*) getInviteWithInviteId: (NSString*) inviteId
    include: (NSString*) include
    completionHandler: (void (^)(TGInviteDetail* output, NSError* error)) handler;


/// List all Invites
/// Gets a list of all `Invite` entities.
///
/// @param limit Limits the results to a specified number, defaults to 50 (optional)
/// @param offset Offsets the results to a specified number, defaults to 0 (optional)
/// @param query Filters by &#x60;first_name&#x60;, &#x60;last_name&#x60;, &#x60;company&#x60;, and &#x60;email&#x60; (optional)
/// @param withColours A comma separated list of case-insensitive colour values. i.e., &#x60;red&#x60;, &#x60;green&#x60;, &#x60;yellow&#x60;, and &#x60;orange&#x60; (optional)
/// @param locationIds A comma separated list of Location IDs (optional)
/// @param sortBy Sorts by the field name and direction provided where the pattern is &#x60;FIELD_NAME_DIRECTION&#x60; (optional)
/// @param startsBefore Filters results to all those *before* the provided datetime (optional)
/// @param startsAfter Filters results to all those *after* the provided datetime (optional)
/// @param include A list of comma-separated related models to include (optional)
/// @param isApproved True to return approved and auto approved invites, False to return pending and rejected invites (optional)
/// @param activeAfter Checks that an invite hasn&#39;t yet started, or has started and is still active after a specified time (optional)
/// @param activeBefore Checks that an invite hasn&#39;t ended before a specified time (optional)
/// 
///  code:200 message:"Successful response - returns an array of `Invite` entities.",
///  code:400 message:"A generic error",
///  code:401 message:"You don't have permission to view these Invites",
///  code:403 message:"You do not have permission for this action"
///
/// @return TGPaginatedInvitesList*
-(NSURLSessionTask*) getInvitesWithLimit: (NSNumber*) limit
    offset: (NSNumber*) offset
    query: (NSString*) query
    withColours: (NSString*) withColours
    locationIds: (NSString*) locationIds
    sortBy: (NSString*) sortBy
    startsBefore: (NSDate*) startsBefore
    startsAfter: (NSDate*) startsAfter
    include: (NSString*) include
    isApproved: (NSNumber*) isApproved
    activeAfter: (NSDate*) activeAfter
    activeBefore: (NSDate*) activeBefore
    completionHandler: (void (^)(TGPaginatedInvitesList* output, NSError* error)) handler;


/// Update an Invite
/// Updates an existing `Invite`.
///
/// @param inviteId 
/// @param inviteUpdateParams Updated &#x60;Invite&#x60; information.
/// @param idempotencyKey An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it&#39;s submitted. We store idempotency keys for only 24 hours. Any &#x60;Idempotency-Key&#x60; shorter than 10 characters will be ignored (optional)
/// 
///  code:202 message:"Successful response.",
///  code:400 message:"A generic error",
///  code:401 message:"You don't have permission to view this Invite",
///  code:403 message:"You do not have permission for this action",
///  code:404 message:"The Invite does not exist",
///  code:422 message:"Your request was not formatted correctly"
///
/// @return TGInviteDetail*
-(NSURLSessionTask*) updateInviteWithInviteId: (NSString*) inviteId
    inviteUpdateParams: (TGInviteUpdateParams*) inviteUpdateParams
    idempotencyKey: (NSString*) idempotencyKey
    completionHandler: (void (^)(TGInviteDetail* output, NSError* error)) handler;



@end

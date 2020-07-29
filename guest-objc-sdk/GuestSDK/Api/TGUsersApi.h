#import <Foundation/Foundation.h>
#import "TGErrorsList.h"
#import "TGUser.h"
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



@interface TGUsersApi: NSObject <TGApi>

extern NSString* kTGUsersApiErrorDomain;
extern NSInteger kTGUsersApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(TGApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// Get the current User
/// Gets the details of a single instance of the current `User`.
///
/// @param userId 
/// @param include A list of comma-separated related models to include (optional)
/// 
///  code:200 message:"Successful response - returns a single `User`.",
///  code:400 message:"A generic error",
///  code:401 message:"You don't have permission to view this User",
///  code:403 message:"You do not have permission for this action",
///  code:404 message:"The User does not exist"
///
/// @return TGUser*
-(NSURLSessionTask*) getCurrentUserWithUserId: (NSString*) userId
    include: (NSString*) include
    completionHandler: (void (^)(TGUser* output, NSError* error)) handler;



@end

#import <Foundation/Foundation.h>
#import "TGErrorsList.h"
#import "TGUser.h"
#import "TGApi.h"

/**
* Traction Guest API
* A compelling story about a lone device, on a quest for its data.
*
* The version of the OpenAPI document: 0.11.2
* Contact: bmckay@tractionguest.com
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
/// @param userId The user ID, represented as a string. &#x60;\&quot;current\&quot;&#x60; can be used as a shortcut for the currently-authenticated user
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

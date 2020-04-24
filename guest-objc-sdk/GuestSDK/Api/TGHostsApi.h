#import <Foundation/Foundation.h>
#import "TGErrorsList.h"
#import "TGHost.h"
#import "TGPaginatedHostsList.h"
#import "TGApi.h"

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



@interface TGHostsApi: NSObject <TGApi>

extern NSString* kTGHostsApiErrorDomain;
extern NSInteger kTGHostsApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(TGApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// Create a Host
/// 
///
/// @param host 
/// @param idempotencyKey An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it&#39;s submitted. We store idempotency keys for only 24 hours. Any &#x60;Idempotency-Key&#x60; shorter than 10 characters will be ignored (optional)
/// 
///  code:201 message:"Successful response"
///
/// @return TGHost*
-(NSURLSessionTask*) createHostWithHost: (TGHost*) host
    idempotencyKey: (NSString*) idempotencyKey
    completionHandler: (void (^)(TGHost* output, NSError* error)) handler;


/// List All Hosts
/// Gets a list of all `Host` entities.
///
/// @param query Will filter by &#x60;first_name&#x60;, &#x60;last_name&#x60;, and &#x60;email&#x60; (optional)
/// @param limit Limits the results to a specified number, defaults to 50 (optional)
/// @param offset Offsets the results to a specified number, defaults to 0 (optional)
/// @param include A list of comma-separated related models to include (optional)
/// 
///  code:200 message:"Successful response - returns an array of `Host` entities.",
///  code:400 message:"A generic error",
///  code:401 message:"You don't have permission to view these Hosts",
///  code:403 message:"You do not have permission for this action"
///
/// @return TGPaginatedHostsList*
-(NSURLSessionTask*) getHostsWithQuery: (NSString*) query
    limit: (NSNumber*) limit
    offset: (NSNumber*) offset
    include: (NSString*) include
    completionHandler: (void (^)(TGPaginatedHostsList* output, NSError* error)) handler;



@end
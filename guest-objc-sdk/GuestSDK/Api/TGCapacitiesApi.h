#import <Foundation/Foundation.h>
#import "TGCapacity.h"
#import "TGCapacityForecast.h"
#import "TGErrorsList.h"
#import "TGApi.h"

/**
* Traction Guest API
* The Traction Guest API is currently in **closed beta**. We're still building, testing, and fixing bugs.  If you're interested in helping us get to version 1.0.0, contact your CS team representative. Only paid accounts are elligible.  # Slack  Do you have Slack? Want faster answers to Traction Guest API questions?  Ask to be added to the Traction Guest API Slack channel!  Talk to your CS team representative, or send an email to the API support email above, and we'll add you.  # Versioning  This API follows [semantic versioning](https://semver.org/), which follows the `Major`.`Minor`.`Patch` format. In short:  * The `Major` number increments when potentially incompatible changes are made. * The `Minor` number increments when backwards-compatible additions are made. * The `Patch` number increments when backwards-compatible bug-fixes are made.  So, once the API is out of closed beta, and has reached version 1.0.0, some things may change.  **However**, the developers at Traction Guest strive to keep things running smoothly for our clients. We plan to **deprecate and warn** before making any potentially breaking changes; you may receive messages that follow the format \"this is deprecated, and will be removed in version X.X.X, which is scheduled for release on or after 20XX-01-01.\" Please note that the deprecation message format and content may change.  At this time, we are not planning to make older or 'legacy' versions of the API available, going forward.  # Getting Started  Would you like your team to be a part of closed beta testing? Talk to your CS team representative. We'll walk you through the process of enabling API access and provisioning your account. 
*
* The version of the OpenAPI document: 0.13.0
* Contact: support@tractionguest.com
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/



@interface TGCapacitiesApi: NSObject <TGApi>

extern NSString* kTGCapacitiesApiErrorDomain;
extern NSInteger kTGCapacitiesApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(TGApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// Get the current capacity details for a location
/// Get details of current capacity in a location
///
/// @param locationId 
/// 
///  code:200 message:"Successful response returns the current_signins and expected invites for the next hour.",
///  code:400 message:"A generic error",
///  code:401 message:"You don't have permission to view the details of the location's capacity.",
///  code:403 message:"You do not have permission for this action"
///
/// @return TGCapacity*
-(NSURLSessionTask*) getCapacityWithLocationId: (NSString*) locationId
    completionHandler: (void (^)(TGCapacity* output, NSError* error)) handler;


/// Get the capacity details for a location
/// Gets the details of the future capacity in a location.
///
/// @param locationId 
/// @param hoursToForecast The next N number of hours, the data needs to be calculated. Range from 1 to 24. If not set, it defaults to 8. (optional) (default to @8)
/// @param timestamp ISO8601 timestamp(includes the offset value) to use as the start point for the capacity estimate report. Defaults to the current local timestamp of the location if not provided. Eg: \&quot;2020-07-16T17:05:08-07:00\&quot; (optional)
/// 
///  code:200 message:"Successful response returns the expected invites for the next N number of hours.",
///  code:400 message:"A generic error",
///  code:401 message:"You don't have permission to view the details of the location's capacity.",
///  code:403 message:"You do not have permission for this action"
///
/// @return TGCapacityForecast*
-(NSURLSessionTask*) getCapacityForecastWithLocationId: (NSString*) locationId
    hoursToForecast: (NSNumber*) hoursToForecast
    timestamp: (NSString*) timestamp
    completionHandler: (void (^)(TGCapacityForecast* output, NSError* error)) handler;



@end
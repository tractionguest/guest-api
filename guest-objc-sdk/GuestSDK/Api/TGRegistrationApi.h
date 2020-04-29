#import <Foundation/Foundation.h>
#import "TGErrorsList.h"
#import "TGRegistration.h"
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



@interface TGRegistrationApi: NSObject <TGApi>

extern NSString* kTGRegistrationApiErrorDomain;
extern NSInteger kTGRegistrationApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(TGApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// Get a Registration
/// Gets the details of a single instance of a `Registration`
///
/// @param registrationId A unique identifier for &#x60;Registration&#x60;.
/// @param include A list of comma-separated related models to include (optional)
/// 
///  code:200 message:"Successful response - returns a single `Registration`.",
///  code:400 message:"A generic error",
///  code:403 message:"You do not have permission for this action",
///  code:404 message:"The specified Registration was not found"
///
/// @return TGRegistration*
-(NSURLSessionTask*) getRegistrationWithRegistrationId: (NSString*) registrationId
    include: (NSString*) include
    completionHandler: (void (^)(TGRegistration* output, NSError* error)) handler;



@end

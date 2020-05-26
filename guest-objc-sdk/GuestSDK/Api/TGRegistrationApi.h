#import <Foundation/Foundation.h>
#import "TGErrorsList.h"
#import "TGRegistration.h"
#import "TGApi.h"

/**
* Traction Guest API
* The leader in enterprise visitor management, empowers businesses across five continents and dozens of industries to keep people safe while creating connection in the contactless world.
*
* The version of the OpenAPI document: 0.11.8
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
/// @param registrationId 
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

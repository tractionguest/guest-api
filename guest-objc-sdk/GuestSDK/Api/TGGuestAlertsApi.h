#import <Foundation/Foundation.h>
#import "TGErrorsList.h"
#import "TGGuestAlertCreateParams.h"
#import "TGGuestAlertDetail.h"
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



@interface TGGuestAlertsApi: NSObject <TGApi>

extern NSString* kTGGuestAlertsApiErrorDomain;
extern NSInteger kTGGuestAlertsApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(TGApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// Create Guest Alert
/// Enqueues guest alerts via specified channels
///
/// @param guestAlertCreateParams 
/// 
///  code:201 message:"Guest Alert has been scheduled for delivery",
///  code:400 message:"A generic error",
///  code:401 message:"You don't have permission to create requested Guest Alerts",
///  code:403 message:"You do not have permission for this action"
///
/// @return TGGuestAlertDetail*
-(NSURLSessionTask*) createGuestAlertWithGuestAlertCreateParams: (TGGuestAlertCreateParams*) guestAlertCreateParams
    completionHandler: (void (^)(TGGuestAlertDetail* output, NSError* error)) handler;



@end
#import <Foundation/Foundation.h>
#import "TGObject.h"

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





@protocol TGSigninUpdateParams
@end

@interface TGSigninUpdateParams : TGObject

/* Used to sign out the `Signin`, can only be set to `true`. [optional]
 */
@property(nonatomic) NSNumber* isSignedOut;
/* Used to acknowledge the `Signin`, can only be set to `true`. [optional]
 */
@property(nonatomic) NSNumber* isAcknowledged;
/* Used when keeping track of people in emergency situations [optional]
 */
@property(nonatomic) NSNumber* isAccountedFor;

@end

#import <Foundation/Foundation.h>
#import "OAIObject.h"

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





@protocol OAISigninCreateParams
@end

@interface OAISigninCreateParams : OAIObject


@property(nonatomic) NSNumber* guestEmailTemplateId;

@property(nonatomic) NSNumber* hostEmailTemplateId;
/* Array of Host ids, ignored if `registration_id` is included [optional]
 */
@property(nonatomic) NSArray<NSNumber*>* hostIds;
/* ID of the Location where the Signin happened, ignored if `registration_id` is included [optional]
 */
@property(nonatomic) NSNumber* locationId;
/* Should send notification to host/guests? [optional]
 */
@property(nonatomic) NSNumber* sendNotifications;

@property(nonatomic) NSString* smsMessage;
/* First name, ignored if `registration_id` is included [optional]
 */
@property(nonatomic) NSString* firstName;
/* Last name, ignored if `registration_id` is included [optional]
 */
@property(nonatomic) NSString* lastName;
/* Company name, ignored if `registration_id` is included [optional]
 */
@property(nonatomic) NSString* company;
/* E-mail, ignored if `registration_id` is included [optional]
 */
@property(nonatomic) NSString* email;
/* UUID of a Registration [optional]
 */
@property(nonatomic) NSString* registrationId;

@end

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


#import "OAIFlexField.h"
@protocol OAIFlexField;
@class OAIFlexField;



@protocol OAIGuestResponse
@end

@interface OAIGuestResponse : OAIObject

/* Page title [optional]
 */
@property(nonatomic) NSString* title;

@property(nonatomic) NSNumber* sequence;
/* UUID [optional]
 */
@property(nonatomic) NSString* _id;
/* Enum [optional]
 */
@property(nonatomic) NSString* pageType;
/* Flex fields [optional]
 */
@property(nonatomic) NSArray<OAIFlexField>* customFields;

@end

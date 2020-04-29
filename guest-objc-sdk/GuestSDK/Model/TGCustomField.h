#import <Foundation/Foundation.h>
#import "TGObject.h"

/**
* Traction Guest API
* A compelling story about a lone device, on a quest for its data.
*
* The version of the OpenAPI document: 0.11.3
* Contact: bmckay@tractionguest.com
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/





@protocol TGCustomField
@end

@interface TGCustomField : TGObject

/* The format type of the field [optional]
 */
@property(nonatomic) NSString* format;
/* What the field should be displayed/labeled as 
 */
@property(nonatomic) NSString* fieldName;
/* The value to be displayed for the field 
 */
@property(nonatomic) NSString* fieldValue;

@end

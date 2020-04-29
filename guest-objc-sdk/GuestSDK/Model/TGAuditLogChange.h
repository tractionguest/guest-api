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





@protocol TGAuditLogChange
@end

@interface TGAuditLogChange : TGObject

/* What the field should be displayed/labeled as [optional]
 */
@property(nonatomic) NSString* fieldName;
/* The value to be displayed for the field before changes [optional]
 */
@property(nonatomic) NSString* fieldValueBefore;
/* The value to be displayed for the field after changes [optional]
 */
@property(nonatomic) NSString* fieldValueAfter;
/* The format type of the field [optional]
 */
@property(nonatomic) NSString* format;

@end

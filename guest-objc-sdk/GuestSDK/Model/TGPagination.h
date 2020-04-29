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





@protocol TGPagination
@end

@interface TGPagination : TGObject


@property(nonatomic) NSNumber* totalRecords;

@property(nonatomic) NSNumber* currentOffset;

@property(nonatomic) NSNumber* nextOffset;
/* The last ID rendered, if the request included the 'after_id' param. [optional]
 */
@property(nonatomic) NSNumber* lastId;

@end

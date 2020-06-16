#import <Foundation/Foundation.h>
#import "TGObject.h"

/**
* Traction Guest API
* The leader in enterprise visitor management, empowers businesses across five continents and dozens of industries to keep people safe while creating connection in the contactless world.
*
* The version of the OpenAPI document: 0.11.9
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

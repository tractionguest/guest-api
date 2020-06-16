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


#import "TGHostCreateParams.h"
@protocol TGHostCreateParams;
@class TGHostCreateParams;



@protocol TGHostBatchCreateParams
@end

@interface TGHostBatchCreateParams : TGObject


@property(nonatomic) NSArray<TGHostCreateParams>* hosts;

@end

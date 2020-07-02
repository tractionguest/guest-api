#import <Foundation/Foundation.h>
#import "TGObject.h"

/**
* Traction Guest API
* The leader in enterprise visitor management, empowers businesses across five continents and dozens of industries to keep people safe while creating connection in the contactless world.
*
* The version of the OpenAPI document: 0.11.10
* Contact: bmckay@tractionguest.com
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/


#import "TGHost.h"
#import "TGPagination.h"
@protocol TGHost;
@class TGHost;
@protocol TGPagination;
@class TGPagination;



@protocol TGPaginatedHostsList
@end

@interface TGPaginatedHostsList : TGObject


@property(nonatomic) TGPagination* pagination;

@property(nonatomic) NSArray<TGHost>* hosts;

@end

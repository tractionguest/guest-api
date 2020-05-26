#import <Foundation/Foundation.h>
#import "TGObject.h"

/**
* Traction Guest API
* The leader in enterprise visitor management, empowers businesses across five continents and dozens of industries to keep people safe while creating connection in the contactless world.
*
* The version of the OpenAPI document: 0.11.8
* Contact: bmckay@tractionguest.com
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/


#import "TGLocation.h"
#import "TGPagination.h"
@protocol TGLocation;
@class TGLocation;
@protocol TGPagination;
@class TGPagination;



@protocol TGPaginatedLocationsList
@end

@interface TGPaginatedLocationsList : TGObject


@property(nonatomic) NSArray<TGLocation>* locations;

@property(nonatomic) TGPagination* pagination;

@end

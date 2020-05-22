#import <Foundation/Foundation.h>
#import "TGObject.h"

/**
* Traction Guest API
* The leader in enterprise visitor management, empowers businesses across five continents and dozens of industries to keep people safe while creating connection in the contactless world.
*
* The version of the OpenAPI document: 0.11.7
* Contact: bmckay@tractionguest.com
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/





@protocol TGWatchlistSearch
@end

@interface TGWatchlistSearch : TGObject


@property(nonatomic) NSString* name;

@property(nonatomic) NSString* company;

@property(nonatomic) NSString* city;

@property(nonatomic) NSString* country;

@property(nonatomic) NSString* state;

@end

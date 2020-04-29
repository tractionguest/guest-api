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


#import "TGPagination.h"
#import "TGWatchlist.h"
@protocol TGPagination;
@class TGPagination;
@protocol TGWatchlist;
@class TGWatchlist;



@protocol TGPaginatedWatchlistList
@end

@interface TGPaginatedWatchlistList : TGObject


@property(nonatomic) TGPagination* pagination;

@property(nonatomic) NSArray<TGWatchlist>* watchlists;

@end

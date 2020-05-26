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


#import "TGWatchlistMatch.h"
#import "TGWatchlistSearch.h"
@protocol TGWatchlistMatch;
@class TGWatchlistMatch;
@protocol TGWatchlistSearch;
@class TGWatchlistSearch;



@protocol TGExternalWatchlistResult
@end

@interface TGExternalWatchlistResult : TGObject


@property(nonatomic) NSArray<TGWatchlistMatch>* matches;
/*  [optional]
 */
@property(nonatomic) NSString* colour;
/*  [optional]
 */
@property(nonatomic) NSString* integration;

@property(nonatomic) TGWatchlistSearch* searchTerms;

@end

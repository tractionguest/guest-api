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


#import "TGWatchlistMatch.h"
#import "TGWatchlistSearch.h"
@protocol TGWatchlistMatch;
@class TGWatchlistMatch;
@protocol TGWatchlistSearch;
@class TGWatchlistSearch;



@protocol TGExternalWatchlistResult
@end

@interface TGExternalWatchlistResult : TGObject


@property(nonatomic) TGWatchlistSearch* searchTerms;

@property(nonatomic) NSString* integration;

@property(nonatomic) NSString* colour;

@property(nonatomic) NSArray<TGWatchlistMatch>* matches;

@end

#import <Foundation/Foundation.h>
#import "OAIObject.h"

/**
* Traction Guest API
* A compelling story about a lone device, on a quest for its data.
*
* The version of the OpenAPI document: 0.11.1
* Contact: bmckay@tractionguest.com
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/


#import "OAIWatchlistMatch.h"
#import "OAIWatchlistSearch.h"
@protocol OAIWatchlistMatch;
@class OAIWatchlistMatch;
@protocol OAIWatchlistSearch;
@class OAIWatchlistSearch;



@protocol OAIExternalWatchlistResult
@end

@interface OAIExternalWatchlistResult : OAIObject


@property(nonatomic) OAIWatchlistSearch* searchTerms;

@property(nonatomic) NSString* integration;

@property(nonatomic) NSString* colour;

@property(nonatomic) NSArray<OAIWatchlistMatch>* matches;

@end

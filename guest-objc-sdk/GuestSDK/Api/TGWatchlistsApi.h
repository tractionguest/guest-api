#import <Foundation/Foundation.h>
#import "TGErrorsList.h"
#import "TGPaginatedWatchlistList.h"
#import "TGWatchlist.h"
#import "TGWatchlistCreateParams.h"
#import "TGApi.h"

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



@interface TGWatchlistsApi: NSObject <TGApi>

extern NSString* kTGWatchlistsApiErrorDomain;
extern NSInteger kTGWatchlistsApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(TGApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// Create watchlist
/// Create a new `Watchlist` record. Please note, every action taken against this endpoint is recorded in the audit log.
///
/// @param watchlistCreateParams The new &#x60;Watchlist&#x60; to create
/// @param idempotencyKey An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it&#39;s submitted. We store idempotency keys for only 24 hours. Any &#x60;Idempotency-Key&#x60; shorter than 10 characters will be ignored (optional)
/// 
///  code:201 message:"The newly created `Watchlist`"
///
/// @return TGWatchlist*
-(NSURLSessionTask*) createWatchlistWithWatchlistCreateParams: (TGWatchlistCreateParams*) watchlistCreateParams
    idempotencyKey: (NSString*) idempotencyKey
    completionHandler: (void (^)(TGWatchlist* output, NSError* error)) handler;


/// Deletes a Watchlist
/// Deletes a single instance of `Watchlist`
///
/// @param watchlistId A unique identifier for a &#x60;Watchlist&#x60;.
/// @param idempotencyKey An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it&#39;s submitted. We store idempotency keys for only 24 hours. Any &#x60;Idempotency-Key&#x60; shorter than 10 characters will be ignored (optional)
/// 
///  code:204 message:"The Watchlist has been deleted",
///  code:400 message:"There was an issue in trying to delete the Watchlist"
///
/// @return void
-(NSURLSessionTask*) deleteWatchlistWithWatchlistId: (NSString*) watchlistId
    idempotencyKey: (NSString*) idempotencyKey
    completionHandler: (void (^)(NSError* error)) handler;


/// Get a Watchlist
/// Gets the details of a single instance of a `Watchlist`.
///
/// @param watchlistId A unique identifier for a &#x60;Watchlist&#x60;.
/// @param include A list of comma-separated related models to include (optional)
/// 
///  code:200 message:"Successful response - returns a single `Watchlist`.",
///  code:400 message:"A generic error",
///  code:401 message:"You don't have permission to view this Watchlist",
///  code:403 message:"You do not have permission for this action",
///  code:404 message:"The Watchlist does not exist"
///
/// @return TGWatchlist*
-(NSURLSessionTask*) getWatchlistWithWatchlistId: (NSString*) watchlistId
    include: (NSString*) include
    completionHandler: (void (^)(TGWatchlist* output, NSError* error)) handler;


/// List All Watchlists
/// Gets a list of all `Watchlist` entities.
///
/// @param limit Limits the results to a specified number, defaults to 50 (optional)
/// @param offset Offsets the results to a specified number, defaults to 0 (optional)
/// @param query Query the results by &#x60;first_name&#x60;, &#x60;last_name&#x60;, &#x60;email&#x60;, &#x60;colour&#x60;, and &#x60;notes&#x60; all at once. (optional)
/// @param withColours A comma separated list of case-insensitive colour values. i.e., &#x60;red&#x60;, &#x60;green&#x60;, &#x60;yellow&#x60;, and &#x60;orange&#x60; (optional)
/// @param include A list of comma-separated related models to include (optional)
/// 
///  code:200 message:"Successful response - returns an array of `Watchlist` entities.",
///  code:400 message:"A generic error",
///  code:401 message:"You don't have permission to view these Watchlists",
///  code:403 message:"You do not have permission for this action"
///
/// @return TGPaginatedWatchlistList*
-(NSURLSessionTask*) getWatchlistsWithLimit: (NSNumber*) limit
    offset: (NSNumber*) offset
    query: (NSString*) query
    withColours: (NSString*) withColours
    include: (NSString*) include
    completionHandler: (void (^)(TGPaginatedWatchlistList* output, NSError* error)) handler;


/// Update a watchlist record
/// Update an existing `Watchlist` record. Every operation against this endpoint is recorded in the audit log.
///
/// @param watchlistId A unique identifier for a &#x60;Watchlist&#x60;.
/// @param watchlistCreateParams The watchlist record attributes to update
/// @param idempotencyKey An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it&#39;s submitted. We store idempotency keys for only 24 hours. Any &#x60;Idempotency-Key&#x60; shorter than 10 characters will be ignored (optional)
/// 
///  code:200 message:"The complete updated watchlist record"
///
/// @return TGWatchlist*
-(NSURLSessionTask*) updateWatchlistWithWatchlistId: (NSString*) watchlistId
    watchlistCreateParams: (TGWatchlistCreateParams*) watchlistCreateParams
    idempotencyKey: (NSString*) idempotencyKey
    completionHandler: (void (^)(TGWatchlist* output, NSError* error)) handler;



@end

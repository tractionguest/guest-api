# TGWatchlistsApi

All URIs are relative to *https://mobile-api-refactor-admin.tractionguest.ca/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createWatchlist**](TGWatchlistsApi.md#createwatchlist) | **POST** /watchlists | Create watchlist
[**deleteWatchlist**](TGWatchlistsApi.md#deletewatchlist) | **DELETE** /watchlists/{watchlistId} | Deletes a Watchlist
[**getWatchlist**](TGWatchlistsApi.md#getwatchlist) | **GET** /watchlists/{watchlistId} | Get a Watchlist
[**getWatchlists**](TGWatchlistsApi.md#getwatchlists) | **GET** /watchlists | List All Watchlists
[**updateWatchlist**](TGWatchlistsApi.md#updatewatchlist) | **PUT** /watchlists/{watchlistId} | Update a watchlist record


# **createWatchlist**
```objc
-(NSURLSessionTask*) createWatchlistWithWatchlistCreateParams: (TGWatchlistCreateParams*) watchlistCreateParams
    idempotencyKey: (NSString*) idempotencyKey
        completionHandler: (void (^)(TGWatchlist* output, NSError* error)) handler;
```

Create watchlist

Create a new `Watchlist` record. Please note, every action taken against this endpoint is recorded in the audit log.

### Example 
```objc
TGDefaultConfiguration *apiConfig = [TGDefaultConfiguration sharedConfig];


TGWatchlistCreateParams* watchlistCreateParams = {"colour":"GREEN","email":"some text","first_name":"some text","last_name":"some text","notes":"some text","aliases":["some text","some text"]}; // The new `Watchlist` to create
NSString* idempotencyKey = @"idempotencyKey_example"; // An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored (optional)

TGWatchlistsApi*apiInstance = [[TGWatchlistsApi alloc] init];

// Create watchlist
[apiInstance createWatchlistWithWatchlistCreateParams:watchlistCreateParams
              idempotencyKey:idempotencyKey
          completionHandler: ^(TGWatchlist* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TGWatchlistsApi->createWatchlist: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **watchlistCreateParams** | [**TGWatchlistCreateParams***](TGWatchlistCreateParams.md)| The new &#x60;Watchlist&#x60; to create | 
 **idempotencyKey** | **NSString***| An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it&#39;s submitted. We store idempotency keys for only 24 hours. Any &#x60;Idempotency-Key&#x60; shorter than 10 characters will be ignored | [optional] 

### Return type

[**TGWatchlist***](TGWatchlist.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteWatchlist**
```objc
-(NSURLSessionTask*) deleteWatchlistWithWatchlistId: (NSString*) watchlistId
    idempotencyKey: (NSString*) idempotencyKey
        completionHandler: (void (^)(NSError* error)) handler;
```

Deletes a Watchlist

Deletes a single instance of `Watchlist`

### Example 
```objc
TGDefaultConfiguration *apiConfig = [TGDefaultConfiguration sharedConfig];


NSString* watchlistId = @"watchlistId_example"; // A unique identifier for a `Watchlist`.
NSString* idempotencyKey = @"idempotencyKey_example"; // An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored (optional)

TGWatchlistsApi*apiInstance = [[TGWatchlistsApi alloc] init];

// Deletes a Watchlist
[apiInstance deleteWatchlistWithWatchlistId:watchlistId
              idempotencyKey:idempotencyKey
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling TGWatchlistsApi->deleteWatchlist: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **watchlistId** | **NSString***| A unique identifier for a &#x60;Watchlist&#x60;. | 
 **idempotencyKey** | **NSString***| An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it&#39;s submitted. We store idempotency keys for only 24 hours. Any &#x60;Idempotency-Key&#x60; shorter than 10 characters will be ignored | [optional] 

### Return type

void (empty response body)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWatchlist**
```objc
-(NSURLSessionTask*) getWatchlistWithWatchlistId: (NSString*) watchlistId
    include: (NSString*) include
        completionHandler: (void (^)(TGWatchlist* output, NSError* error)) handler;
```

Get a Watchlist

Gets the details of a single instance of a `Watchlist`.

### Example 
```objc
TGDefaultConfiguration *apiConfig = [TGDefaultConfiguration sharedConfig];


NSString* watchlistId = @"watchlistId_example"; // A unique identifier for a `Watchlist`.
NSString* include = @"include_example"; // A list of comma-separated related models to include (optional)

TGWatchlistsApi*apiInstance = [[TGWatchlistsApi alloc] init];

// Get a Watchlist
[apiInstance getWatchlistWithWatchlistId:watchlistId
              include:include
          completionHandler: ^(TGWatchlist* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TGWatchlistsApi->getWatchlist: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **watchlistId** | **NSString***| A unique identifier for a &#x60;Watchlist&#x60;. | 
 **include** | **NSString***| A list of comma-separated related models to include | [optional] 

### Return type

[**TGWatchlist***](TGWatchlist.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWatchlists**
```objc
-(NSURLSessionTask*) getWatchlistsWithLimit: (NSNumber*) limit
    offset: (NSNumber*) offset
    query: (NSString*) query
    withColours: (NSString*) withColours
    include: (NSString*) include
        completionHandler: (void (^)(TGPaginatedWatchlistList* output, NSError* error)) handler;
```

List All Watchlists

Gets a list of all `Watchlist` entities.

### Example 
```objc
TGDefaultConfiguration *apiConfig = [TGDefaultConfiguration sharedConfig];


NSNumber* limit = @56; // Limits the results to a specified number, defaults to 50 (optional)
NSNumber* offset = @56; // Offsets the results to a specified number, defaults to 0 (optional)
NSString* query = @"query_example"; // Query the results by `first_name`, `last_name`, `email`, `colour`, and `notes` all at once. (optional)
NSString* withColours = @"withColours_example"; // A comma separated list of case-insensitive colour values. i.e., `red`, `green`, `yellow`, and `orange` (optional)
NSString* include = @"include_example"; // A list of comma-separated related models to include (optional)

TGWatchlistsApi*apiInstance = [[TGWatchlistsApi alloc] init];

// List All Watchlists
[apiInstance getWatchlistsWithLimit:limit
              offset:offset
              query:query
              withColours:withColours
              include:include
          completionHandler: ^(TGPaginatedWatchlistList* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TGWatchlistsApi->getWatchlists: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **NSNumber***| Limits the results to a specified number, defaults to 50 | [optional] 
 **offset** | **NSNumber***| Offsets the results to a specified number, defaults to 0 | [optional] 
 **query** | **NSString***| Query the results by &#x60;first_name&#x60;, &#x60;last_name&#x60;, &#x60;email&#x60;, &#x60;colour&#x60;, and &#x60;notes&#x60; all at once. | [optional] 
 **withColours** | **NSString***| A comma separated list of case-insensitive colour values. i.e., &#x60;red&#x60;, &#x60;green&#x60;, &#x60;yellow&#x60;, and &#x60;orange&#x60; | [optional] 
 **include** | **NSString***| A list of comma-separated related models to include | [optional] 

### Return type

[**TGPaginatedWatchlistList***](TGPaginatedWatchlistList.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateWatchlist**
```objc
-(NSURLSessionTask*) updateWatchlistWithWatchlistId: (NSString*) watchlistId
    watchlistCreateParams: (TGWatchlistCreateParams*) watchlistCreateParams
    idempotencyKey: (NSString*) idempotencyKey
        completionHandler: (void (^)(TGWatchlist* output, NSError* error)) handler;
```

Update a watchlist record

Update an existing `Watchlist` record. Every operation against this endpoint is recorded in the audit log.

### Example 
```objc
TGDefaultConfiguration *apiConfig = [TGDefaultConfiguration sharedConfig];


NSString* watchlistId = @"watchlistId_example"; // A unique identifier for a `Watchlist`.
TGWatchlistCreateParams* watchlistCreateParams = {"colour":"YELLOW","email":"some text","first_name":"some text","last_name":"some text","notes":"some text","aliases":["some text","some text"]}; // The watchlist record attributes to update
NSString* idempotencyKey = @"idempotencyKey_example"; // An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored (optional)

TGWatchlistsApi*apiInstance = [[TGWatchlistsApi alloc] init];

// Update a watchlist record
[apiInstance updateWatchlistWithWatchlistId:watchlistId
              watchlistCreateParams:watchlistCreateParams
              idempotencyKey:idempotencyKey
          completionHandler: ^(TGWatchlist* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TGWatchlistsApi->updateWatchlist: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **watchlistId** | **NSString***| A unique identifier for a &#x60;Watchlist&#x60;. | 
 **watchlistCreateParams** | [**TGWatchlistCreateParams***](TGWatchlistCreateParams.md)| The watchlist record attributes to update | 
 **idempotencyKey** | **NSString***| An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it&#39;s submitted. We store idempotency keys for only 24 hours. Any &#x60;Idempotency-Key&#x60; shorter than 10 characters will be ignored | [optional] 

### Return type

[**TGWatchlist***](TGWatchlist.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# WatchlistsAPI

All URIs are relative to *https://tractionguest.ca/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createWatchlist**](WatchlistsAPI.md#createwatchlist) | **POST** /watchlists | Create watchlist
[**deleteWatchlist**](WatchlistsAPI.md#deletewatchlist) | **DELETE** /watchlists/{watchlist_id} | Deletes a Watchlist
[**getWatchlist**](WatchlistsAPI.md#getwatchlist) | **GET** /watchlists/{watchlist_id} | Get a Watchlist
[**getWatchlists**](WatchlistsAPI.md#getwatchlists) | **GET** /watchlists | List All Watchlists
[**updateWatchlist**](WatchlistsAPI.md#updatewatchlist) | **PUT** /watchlists/{watchlist_id} | Update a watchlist record


# **createWatchlist**
```swift
    open class func createWatchlist(watchlistCreateParams: WatchlistCreateParams, idempotencyKey: String? = nil, completion: @escaping (_ data: Watchlist?, _ error: Error?) -> Void)
```

Create watchlist

Create a new `Watchlist` record. Please note, every action taken against this endpoint is recorded in the audit log.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import GuestSDK

let watchlistCreateParams = WatchlistCreateParams(aliases: ["aliases_example"], notes: "notes_example", lastName: "lastName_example", firstName: "firstName_example", email: "email_example", colour: "colour_example") // WatchlistCreateParams | The new `Watchlist` to create
let idempotencyKey = "idempotencyKey_example" // String | An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored (optional)

// Create watchlist
WatchlistsAPI.createWatchlist(watchlistCreateParams: watchlistCreateParams, idempotencyKey: idempotencyKey) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **watchlistCreateParams** | [**WatchlistCreateParams**](WatchlistCreateParams.md) | The new &#x60;Watchlist&#x60; to create | 
 **idempotencyKey** | **String** | An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it&#39;s submitted. We store idempotency keys for only 24 hours. Any &#x60;Idempotency-Key&#x60; shorter than 10 characters will be ignored | [optional] 

### Return type

[**Watchlist**](Watchlist.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteWatchlist**
```swift
    open class func deleteWatchlist(watchlistId: String, idempotencyKey: String? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Deletes a Watchlist

Deletes a single instance of `Watchlist`

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import GuestSDK

let watchlistId = "watchlistId_example" // String | 
let idempotencyKey = "idempotencyKey_example" // String | An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored (optional)

// Deletes a Watchlist
WatchlistsAPI.deleteWatchlist(watchlistId: watchlistId, idempotencyKey: idempotencyKey) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **watchlistId** | **String** |  | 
 **idempotencyKey** | **String** | An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it&#39;s submitted. We store idempotency keys for only 24 hours. Any &#x60;Idempotency-Key&#x60; shorter than 10 characters will be ignored | [optional] 

### Return type

Void (empty response body)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWatchlist**
```swift
    open class func getWatchlist(watchlistId: String, include: String? = nil, completion: @escaping (_ data: Watchlist?, _ error: Error?) -> Void)
```

Get a Watchlist

Gets the details of a single instance of a `Watchlist`.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import GuestSDK

let watchlistId = "watchlistId_example" // String | 
let include = "include_example" // String | A list of comma-separated related models to include (optional)

// Get a Watchlist
WatchlistsAPI.getWatchlist(watchlistId: watchlistId, include: include) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **watchlistId** | **String** |  | 
 **include** | **String** | A list of comma-separated related models to include | [optional] 

### Return type

[**Watchlist**](Watchlist.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWatchlists**
```swift
    open class func getWatchlists(limit: Int? = nil, offset: Int? = nil, query: String? = nil, withColours: String? = nil, include: String? = nil, completion: @escaping (_ data: PaginatedWatchlistList?, _ error: Error?) -> Void)
```

List All Watchlists

Gets a list of all `Watchlist` entities.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import GuestSDK

let limit = 987 // Int | Limits the results to a specified number, defaults to 50 (optional)
let offset = 987 // Int | Offsets the results to a specified number, defaults to 0 (optional)
let query = "query_example" // String | Query the results by `first_name`, `last_name`, `email`, `colour`, and `notes` all at once. (optional)
let withColours = "withColours_example" // String | A comma separated list of case-insensitive colour values. i.e., `red`, `green`, `yellow`, and `orange` (optional)
let include = "include_example" // String | A list of comma-separated related models to include (optional)

// List All Watchlists
WatchlistsAPI.getWatchlists(limit: limit, offset: offset, query: query, withColours: withColours, include: include) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Int** | Limits the results to a specified number, defaults to 50 | [optional] 
 **offset** | **Int** | Offsets the results to a specified number, defaults to 0 | [optional] 
 **query** | **String** | Query the results by &#x60;first_name&#x60;, &#x60;last_name&#x60;, &#x60;email&#x60;, &#x60;colour&#x60;, and &#x60;notes&#x60; all at once. | [optional] 
 **withColours** | **String** | A comma separated list of case-insensitive colour values. i.e., &#x60;red&#x60;, &#x60;green&#x60;, &#x60;yellow&#x60;, and &#x60;orange&#x60; | [optional] 
 **include** | **String** | A list of comma-separated related models to include | [optional] 

### Return type

[**PaginatedWatchlistList**](PaginatedWatchlistList.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateWatchlist**
```swift
    open class func updateWatchlist(watchlistId: String, watchlistCreateParams: WatchlistCreateParams, idempotencyKey: String? = nil, completion: @escaping (_ data: Watchlist?, _ error: Error?) -> Void)
```

Update a watchlist record

Update an existing `Watchlist` record. Every operation against this endpoint is recorded in the audit log.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import GuestSDK

let watchlistId = "watchlistId_example" // String | 
let watchlistCreateParams = WatchlistCreateParams(aliases: ["aliases_example"], notes: "notes_example", lastName: "lastName_example", firstName: "firstName_example", email: "email_example", colour: "colour_example") // WatchlistCreateParams | The watchlist record attributes to update
let idempotencyKey = "idempotencyKey_example" // String | An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored (optional)

// Update a watchlist record
WatchlistsAPI.updateWatchlist(watchlistId: watchlistId, watchlistCreateParams: watchlistCreateParams, idempotencyKey: idempotencyKey) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **watchlistId** | **String** |  | 
 **watchlistCreateParams** | [**WatchlistCreateParams**](WatchlistCreateParams.md) | The watchlist record attributes to update | 
 **idempotencyKey** | **String** | An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it&#39;s submitted. We store idempotency keys for only 24 hours. Any &#x60;Idempotency-Key&#x60; shorter than 10 characters will be ignored | [optional] 

### Return type

[**Watchlist**](Watchlist.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


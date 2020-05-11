# WatchlistsApi

All URIs are relative to *https://tractionguest.ca/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createWatchlist**](WatchlistsApi.md#createWatchlist) | **POST** /watchlists | Create watchlist
[**deleteWatchlist**](WatchlistsApi.md#deleteWatchlist) | **DELETE** /watchlists/{watchlist_id} | Deletes a Watchlist
[**getWatchlist**](WatchlistsApi.md#getWatchlist) | **GET** /watchlists/{watchlist_id} | Get a Watchlist
[**getWatchlists**](WatchlistsApi.md#getWatchlists) | **GET** /watchlists | List All Watchlists
[**updateWatchlist**](WatchlistsApi.md#updateWatchlist) | **PUT** /watchlists/{watchlist_id} | Update a watchlist record



## createWatchlist

> Watchlist createWatchlist(watchlistCreateParams, idempotencyKey)

Create watchlist

Create a new &#x60;Watchlist&#x60; record. Please note, every action taken against this endpoint is recorded in the audit log.

### Example

```java
// Import classes:
//import GuestSDK.WatchlistsApi;

WatchlistsApi apiInstance = new WatchlistsApi();
WatchlistCreateParams watchlistCreateParams = {"colour":"GREEN","email":"some text","first_name":"some text","last_name":"some text","notes":"some text","aliases":["some text","some text"]}; // WatchlistCreateParams | The new `Watchlist` to create
String idempotencyKey = null; // String | An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored
try {
    Watchlist result = apiInstance.createWatchlist(watchlistCreateParams, idempotencyKey);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling WatchlistsApi#createWatchlist");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **watchlistCreateParams** | [**WatchlistCreateParams**](WatchlistCreateParams.md)| The new &#x60;Watchlist&#x60; to create |
 **idempotencyKey** | **String**| An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it&#39;s submitted. We store idempotency keys for only 24 hours. Any &#x60;Idempotency-Key&#x60; shorter than 10 characters will be ignored | [optional] [default to null]

### Return type

[**Watchlist**](Watchlist.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## deleteWatchlist

> deleteWatchlist(watchlistId, idempotencyKey)

Deletes a Watchlist

Deletes a single instance of &#x60;Watchlist&#x60;

### Example

```java
// Import classes:
//import GuestSDK.WatchlistsApi;

WatchlistsApi apiInstance = new WatchlistsApi();
String watchlistId = null; // String | 
String idempotencyKey = null; // String | An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored
try {
    apiInstance.deleteWatchlist(watchlistId, idempotencyKey);
} catch (ApiException e) {
    System.err.println("Exception when calling WatchlistsApi#deleteWatchlist");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **watchlistId** | **String**|  | [default to null]
 **idempotencyKey** | **String**| An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it&#39;s submitted. We store idempotency keys for only 24 hours. Any &#x60;Idempotency-Key&#x60; shorter than 10 characters will be ignored | [optional] [default to null]

### Return type

null (empty response body)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getWatchlist

> Watchlist getWatchlist(watchlistId, include)

Get a Watchlist

Gets the details of a single instance of a &#x60;Watchlist&#x60;.

### Example

```java
// Import classes:
//import GuestSDK.WatchlistsApi;

WatchlistsApi apiInstance = new WatchlistsApi();
String watchlistId = null; // String | 
String include = null; // String | A list of comma-separated related models to include
try {
    Watchlist result = apiInstance.getWatchlist(watchlistId, include);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling WatchlistsApi#getWatchlist");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **watchlistId** | **String**|  | [default to null]
 **include** | **String**| A list of comma-separated related models to include | [optional] [default to null]

### Return type

[**Watchlist**](Watchlist.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getWatchlists

> PaginatedWatchlistList getWatchlists(limit, offset, query, withColours, include)

List All Watchlists

Gets a list of all &#x60;Watchlist&#x60; entities.

### Example

```java
// Import classes:
//import GuestSDK.WatchlistsApi;

WatchlistsApi apiInstance = new WatchlistsApi();
Integer limit = null; // Integer | Limits the results to a specified number, defaults to 50
Integer offset = null; // Integer | Offsets the results to a specified number, defaults to 0
String query = null; // String | Query the results by `first_name`, `last_name`, `email`, `colour`, and `notes` all at once.
String withColours = null; // String | A comma separated list of case-insensitive colour values. i.e., `red`, `green`, `yellow`, and `orange`
String include = null; // String | A list of comma-separated related models to include
try {
    PaginatedWatchlistList result = apiInstance.getWatchlists(limit, offset, query, withColours, include);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling WatchlistsApi#getWatchlists");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Integer**| Limits the results to a specified number, defaults to 50 | [optional] [default to null]
 **offset** | **Integer**| Offsets the results to a specified number, defaults to 0 | [optional] [default to null]
 **query** | **String**| Query the results by &#x60;first_name&#x60;, &#x60;last_name&#x60;, &#x60;email&#x60;, &#x60;colour&#x60;, and &#x60;notes&#x60; all at once. | [optional] [default to null]
 **withColours** | **String**| A comma separated list of case-insensitive colour values. i.e., &#x60;red&#x60;, &#x60;green&#x60;, &#x60;yellow&#x60;, and &#x60;orange&#x60; | [optional] [default to null]
 **include** | **String**| A list of comma-separated related models to include | [optional] [default to null]

### Return type

[**PaginatedWatchlistList**](PaginatedWatchlistList.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## updateWatchlist

> Watchlist updateWatchlist(watchlistId, watchlistCreateParams, idempotencyKey)

Update a watchlist record

Update an existing &#x60;Watchlist&#x60; record. Every operation against this endpoint is recorded in the audit log.

### Example

```java
// Import classes:
//import GuestSDK.WatchlistsApi;

WatchlistsApi apiInstance = new WatchlistsApi();
String watchlistId = null; // String | 
WatchlistCreateParams watchlistCreateParams = {"colour":"YELLOW","email":"some text","first_name":"some text","last_name":"some text","notes":"some text","aliases":["some text","some text"]}; // WatchlistCreateParams | The watchlist record attributes to update
String idempotencyKey = null; // String | An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored
try {
    Watchlist result = apiInstance.updateWatchlist(watchlistId, watchlistCreateParams, idempotencyKey);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling WatchlistsApi#updateWatchlist");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **watchlistId** | **String**|  | [default to null]
 **watchlistCreateParams** | [**WatchlistCreateParams**](WatchlistCreateParams.md)| The watchlist record attributes to update |
 **idempotencyKey** | **String**| An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it&#39;s submitted. We store idempotency keys for only 24 hours. Any &#x60;Idempotency-Key&#x60; shorter than 10 characters will be ignored | [optional] [default to null]

### Return type

[**Watchlist**](Watchlist.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


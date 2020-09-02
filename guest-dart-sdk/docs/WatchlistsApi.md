# guest_sdk.api.WatchlistsApi

## Load the API package
```dart
import 'package:guest_sdk/api.dart';
```

All URIs are relative to *https://tractionguest.ca/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createWatchlist**](WatchlistsApi.md#createWatchlist) | **POST** /watchlists | Create Watchlist
[**deleteWatchlist**](WatchlistsApi.md#deleteWatchlist) | **DELETE** /watchlists/{watchlist_id} | Deletes a Watchlist
[**getWatchlist**](WatchlistsApi.md#getWatchlist) | **GET** /watchlists/{watchlist_id} | Get a Watchlist
[**getWatchlists**](WatchlistsApi.md#getWatchlists) | **GET** /watchlists | List all Watchlists
[**updateWatchlist**](WatchlistsApi.md#updateWatchlist) | **PUT** /watchlists/{watchlist_id} | Update a Watchlist


# **createWatchlist**
> Watchlist createWatchlist(watchlistCreateParams, idempotencyKey)

Create Watchlist

Create a new `Watchlist` record. Please note, every action taken against this endpoint is recorded in the audit log.

### Example 
```dart
import 'package:guest_sdk/api.dart';

var api_instance = new WatchlistsApi();
var watchlistCreateParams = new WatchlistCreateParams(); // WatchlistCreateParams | The new `Watchlist` to create
var idempotencyKey = idempotencyKey_example; // String | An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored

try { 
    var result = api_instance.createWatchlist(watchlistCreateParams, idempotencyKey);
    print(result);
} catch (e) {
    print("Exception when calling WatchlistsApi->createWatchlist: $e\n");
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteWatchlist**
> deleteWatchlist(watchlistId, idempotencyKey)

Deletes a Watchlist

Deletes a single instance of `Watchlist`

### Example 
```dart
import 'package:guest_sdk/api.dart';

var api_instance = new WatchlistsApi();
var watchlistId = watchlistId_example; // String | 
var idempotencyKey = idempotencyKey_example; // String | An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored

try { 
    api_instance.deleteWatchlist(watchlistId, idempotencyKey);
} catch (e) {
    print("Exception when calling WatchlistsApi->deleteWatchlist: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **watchlistId** | **String**|  | [default to null]
 **idempotencyKey** | **String**| An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it&#39;s submitted. We store idempotency keys for only 24 hours. Any &#x60;Idempotency-Key&#x60; shorter than 10 characters will be ignored | [optional] [default to null]

### Return type

void (empty response body)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWatchlist**
> Watchlist getWatchlist(watchlistId, include)

Get a Watchlist

Gets the details of a single instance of a `Watchlist`.

### Example 
```dart
import 'package:guest_sdk/api.dart';

var api_instance = new WatchlistsApi();
var watchlistId = watchlistId_example; // String | 
var include = include_example; // String | A list of comma-separated related models to include

try { 
    var result = api_instance.getWatchlist(watchlistId, include);
    print(result);
} catch (e) {
    print("Exception when calling WatchlistsApi->getWatchlist: $e\n");
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWatchlists**
> PaginatedWatchlistList getWatchlists(limit, offset, query, withColours, include)

List all Watchlists

Gets a list of all `Watchlist` entities.

### Example 
```dart
import 'package:guest_sdk/api.dart';

var api_instance = new WatchlistsApi();
var limit = 56; // int | Limits the results to a specified number, defaults to 50
var offset = 56; // int | Offsets the results to a specified number, defaults to 0
var query = query_example; // String | Query the results by `first_name`, `last_name`, `email`, `colour`, and `notes` all at once.
var withColours = withColours_example; // String | A comma separated list of case-insensitive colour values. i.e., `red`, `green`, `yellow`, and `orange`
var include = include_example; // String | A list of comma-separated related models to include

try { 
    var result = api_instance.getWatchlists(limit, offset, query, withColours, include);
    print(result);
} catch (e) {
    print("Exception when calling WatchlistsApi->getWatchlists: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**| Limits the results to a specified number, defaults to 50 | [optional] [default to null]
 **offset** | **int**| Offsets the results to a specified number, defaults to 0 | [optional] [default to null]
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateWatchlist**
> Watchlist updateWatchlist(watchlistId, watchlistCreateParams, idempotencyKey)

Update a Watchlist

Update an existing `Watchlist` record. Every operation against this endpoint is recorded in the audit log.

### Example 
```dart
import 'package:guest_sdk/api.dart';

var api_instance = new WatchlistsApi();
var watchlistId = watchlistId_example; // String | 
var watchlistCreateParams = new WatchlistCreateParams(); // WatchlistCreateParams | The watchlist record attributes to update
var idempotencyKey = idempotencyKey_example; // String | An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored

try { 
    var result = api_instance.updateWatchlist(watchlistId, watchlistCreateParams, idempotencyKey);
    print(result);
} catch (e) {
    print("Exception when calling WatchlistsApi->updateWatchlist: $e\n");
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


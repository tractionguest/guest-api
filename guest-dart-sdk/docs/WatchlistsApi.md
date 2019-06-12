# guest_sdk.api.WatchlistsApi

## Load the API package
```dart
import 'package:guest_sdk/api.dart';
```

All URIs are relative to *https://mobile-api-refactor-admin.tractionguest.ca/api/mobile/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getWatchlist**](WatchlistsApi.md#getWatchlist) | **GET** /watchlists/{watchlistId} | Get a Watchlist
[**getWatchlists**](WatchlistsApi.md#getWatchlists) | **GET** /watchlists | List All Watchlists


# **getWatchlist**
> Watchlist getWatchlist(watchlistId)

Get a Watchlist

Gets the details of a single instance of a `Watchlist`.

### Example 
```dart
import 'package:guest_sdk/api.dart';
// TODO Configure HTTP basic authorization: ApiCredentials
//defaultApiClient.getAuthentication<HttpBasicAuth>('ApiCredentials').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('ApiCredentials').password = 'YOUR_PASSWORD';
// TODO Configure OAuth2 access token for authorization: TractionGuestAuth
//defaultApiClient.getAuthentication<OAuth>('TractionGuestAuth').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new WatchlistsApi();
var watchlistId = watchlistId_example; // String | A unique identifier for a `Watchlist`.

try { 
    var result = api_instance.getWatchlist(watchlistId);
    print(result);
} catch (e) {
    print("Exception when calling WatchlistsApi->getWatchlist: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **watchlistId** | **String**| A unique identifier for a &#x60;Watchlist&#x60;. | [default to null]

### Return type

[**Watchlist**](Watchlist.md)

### Authorization

[ApiCredentials](../README.md#ApiCredentials), [TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWatchlists**
> PaginatedWatchlistList getWatchlists(limit, offset, query, withColours)

List All Watchlists

Gets a list of all `Watchlist` entities.

### Example 
```dart
import 'package:guest_sdk/api.dart';
// TODO Configure HTTP basic authorization: ApiCredentials
//defaultApiClient.getAuthentication<HttpBasicAuth>('ApiCredentials').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('ApiCredentials').password = 'YOUR_PASSWORD';
// TODO Configure OAuth2 access token for authorization: TractionGuestAuth
//defaultApiClient.getAuthentication<OAuth>('TractionGuestAuth').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new WatchlistsApi();
var limit = 56; // int | Limits the results to a specified number, defaults to 50
var offset = 56; // int | Offsets the results to a specified number, defaults to 0
var query = query_example; // String | Query the results by `first_name`, `last_name`, `email`, `colour`, and `notes` all at once.
var withColours = withColours_example; // String | A comma separated list of case-insensitive colour values.  i.e., `red`, `green`, `yellow`, and `orange`

try { 
    var result = api_instance.getWatchlists(limit, offset, query, withColours);
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
 **withColours** | **String**| A comma separated list of case-insensitive colour values.  i.e., &#x60;red&#x60;, &#x60;green&#x60;, &#x60;yellow&#x60;, and &#x60;orange&#x60; | [optional] [default to null]

### Return type

[**PaginatedWatchlistList**](PaginatedWatchlistList.md)

### Authorization

[ApiCredentials](../README.md#ApiCredentials), [TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# guest_sdk.api.HostsApi

## Load the API package
```dart
import 'package:guest_sdk/api.dart';
```

All URIs are relative to *https://mobile-api-refactor-admin.tractionguest.ca/api/mobile/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getHosts**](HostsApi.md#getHosts) | **GET** /hosts | List All Hosts


# **getHosts**
> PaginatedHostsList getHosts(query, limit, offset)

List All Hosts

Gets a list of all `Host` entities.

### Example 
```dart
import 'package:guest_sdk/api.dart';
// TODO Configure HTTP basic authorization: ApiCredentials
//defaultApiClient.getAuthentication<HttpBasicAuth>('ApiCredentials').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('ApiCredentials').password = 'YOUR_PASSWORD';
// TODO Configure OAuth2 access token for authorization: TractionGuestAuth
//defaultApiClient.getAuthentication<OAuth>('TractionGuestAuth').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new HostsApi();
var query = query_example; // String | Will filter by `first_name`, `last_name`, and `email`
var limit = 56; // int | Limits the results to a specified number, defaults to 50
var offset = 56; // int | Offsets the results to a specified number, defaults to 0

try { 
    var result = api_instance.getHosts(query, limit, offset);
    print(result);
} catch (e) {
    print("Exception when calling HostsApi->getHosts: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| Will filter by &#x60;first_name&#x60;, &#x60;last_name&#x60;, and &#x60;email&#x60; | [optional] [default to null]
 **limit** | **int**| Limits the results to a specified number, defaults to 50 | [optional] [default to null]
 **offset** | **int**| Offsets the results to a specified number, defaults to 0 | [optional] [default to null]

### Return type

[**PaginatedHostsList**](PaginatedHostsList.md)

### Authorization

[ApiCredentials](../README.md#ApiCredentials), [TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


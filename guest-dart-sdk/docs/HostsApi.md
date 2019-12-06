# guest_sdk.api.HostsApi

## Load the API package
```dart
import 'package:guest_sdk/api.dart';
```

All URIs are relative to *https://mobile-api-refactor-admin.tractionguest.ca/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createHost**](HostsApi.md#createHost) | **POST** /hosts | Create a Host
[**getHosts**](HostsApi.md#getHosts) | **GET** /hosts | List All Hosts


# **createHost**
> Host createHost(host)

Create a Host

### Example 
```dart
import 'package:guest_sdk/api.dart';

var api_instance = new HostsApi();
var host = new Host(); // Host | 

try { 
    var result = api_instance.createHost(host);
    print(result);
} catch (e) {
    print("Exception when calling HostsApi->createHost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **host** | [**Host**](Host.md)|  | 

### Return type

[**Host**](Host.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getHosts**
> PaginatedHostsList getHosts(query, limit, offset, include)

List All Hosts

Gets a list of all `Host` entities.

### Example 
```dart
import 'package:guest_sdk/api.dart';

var api_instance = new HostsApi();
var query = query_example; // String | Will filter by `first_name`, `last_name`, and `email`
var limit = 56; // int | Limits the results to a specified number, defaults to 50
var offset = 56; // int | Offsets the results to a specified number, defaults to 0
var include = include_example; // String | A list of comma-separated related models to include

try { 
    var result = api_instance.getHosts(query, limit, offset, include);
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
 **include** | **String**| A list of comma-separated related models to include | [optional] [default to null]

### Return type

[**PaginatedHostsList**](PaginatedHostsList.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


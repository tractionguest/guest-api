# guest_sdk.api.HostsApi

## Load the API package
```dart
import 'package:guest_sdk/api.dart';
```

All URIs are relative to *https://tractionguest.ca/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createHost**](HostsApi.md#createHost) | **POST** /hosts | Create a Host
[**createHosts**](HostsApi.md#createHosts) | **POST** /hosts/batch | Create multiple Hosts
[**getHosts**](HostsApi.md#getHosts) | **GET** /hosts | List all Hosts


# **createHost**
> Host createHost(hostCreateParams, idempotencyKey)

Create a Host

Creates a Host

### Example 
```dart
import 'package:guest_sdk/api.dart';

var api_instance = new HostsApi();
var hostCreateParams = new HostCreateParams(); // HostCreateParams | 
var idempotencyKey = idempotencyKey_example; // String | An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored

try { 
    var result = api_instance.createHost(hostCreateParams, idempotencyKey);
    print(result);
} catch (e) {
    print("Exception when calling HostsApi->createHost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **hostCreateParams** | [**HostCreateParams**](HostCreateParams.md)|  | 
 **idempotencyKey** | **String**| An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it&#39;s submitted. We store idempotency keys for only 24 hours. Any &#x60;Idempotency-Key&#x60; shorter than 10 characters will be ignored | [optional] [default to null]

### Return type

[**Host**](Host.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createHosts**
> BatchJob createHosts(idempotencyKey, hostBatchCreateParams)

Create multiple Hosts

Creates a batch of `Host` records in an async queue. Please note, every action taken against this endpoint is recorded in the audit log.

### Example 
```dart
import 'package:guest_sdk/api.dart';

var api_instance = new HostsApi();
var idempotencyKey = idempotencyKey_example; // String | An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored
var hostBatchCreateParams = new HostBatchCreateParams(); // HostBatchCreateParams | 

try { 
    var result = api_instance.createHosts(idempotencyKey, hostBatchCreateParams);
    print(result);
} catch (e) {
    print("Exception when calling HostsApi->createHosts: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idempotencyKey** | **String**| An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it&#39;s submitted. We store idempotency keys for only 24 hours. Any &#x60;Idempotency-Key&#x60; shorter than 10 characters will be ignored | [optional] [default to null]
 **hostBatchCreateParams** | [**HostBatchCreateParams**](HostBatchCreateParams.md)|  | [optional] 

### Return type

[**BatchJob**](BatchJob.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getHosts**
> PaginatedHostsList getHosts(query, limit, offset, include)

List all Hosts

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


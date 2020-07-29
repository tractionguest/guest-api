# HostsApi

All URIs are relative to *https://tractionguest.ca/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createHost**](HostsApi.md#createHost) | **POST** /hosts | Create a Host
[**createHosts**](HostsApi.md#createHosts) | **POST** /hosts/batch | Create multiple Hosts
[**getHosts**](HostsApi.md#getHosts) | **GET** /hosts | List all Hosts



## createHost

> Host createHost(hostCreateParams, idempotencyKey)

Create a Host

Creates a Host

### Example

```java
// Import classes:
//import GuestSDK.HostsApi;

HostsApi apiInstance = new HostsApi();
HostCreateParams hostCreateParams = {"email":"some text","first_name":"some text","last_name":"some text","profile_pic_url":"some text","department":"some text","mobile_number":"some text"}; // HostCreateParams | 
String idempotencyKey = null; // String | An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored
try {
    Host result = apiInstance.createHost(hostCreateParams, idempotencyKey);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling HostsApi#createHost");
    e.printStackTrace();
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


## createHosts

> BatchJob createHosts(idempotencyKey, hostBatchCreateParams)

Create multiple Hosts

Creates a batch of &#x60;Host&#x60; records in an async queue. Please note, every action taken against this endpoint is recorded in the audit log.

### Example

```java
// Import classes:
//import GuestSDK.HostsApi;

HostsApi apiInstance = new HostsApi();
String idempotencyKey = null; // String | An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored
HostBatchCreateParams hostBatchCreateParams = new HostBatchCreateParams(); // HostBatchCreateParams | 
try {
    BatchJob result = apiInstance.createHosts(idempotencyKey, hostBatchCreateParams);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling HostsApi#createHosts");
    e.printStackTrace();
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


## getHosts

> PaginatedHostsList getHosts(query, limit, offset, include)

List all Hosts

Gets a list of all &#x60;Host&#x60; entities.

### Example

```java
// Import classes:
//import GuestSDK.HostsApi;

HostsApi apiInstance = new HostsApi();
String query = null; // String | Will filter by `first_name`, `last_name`, and `email`
Integer limit = null; // Integer | Limits the results to a specified number, defaults to 50
Integer offset = null; // Integer | Offsets the results to a specified number, defaults to 0
String include = null; // String | A list of comma-separated related models to include
try {
    PaginatedHostsList result = apiInstance.getHosts(query, limit, offset, include);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling HostsApi#getHosts");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| Will filter by &#x60;first_name&#x60;, &#x60;last_name&#x60;, and &#x60;email&#x60; | [optional] [default to null]
 **limit** | **Integer**| Limits the results to a specified number, defaults to 50 | [optional] [default to null]
 **offset** | **Integer**| Offsets the results to a specified number, defaults to 0 | [optional] [default to null]
 **include** | **String**| A list of comma-separated related models to include | [optional] [default to null]

### Return type

[**PaginatedHostsList**](PaginatedHostsList.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


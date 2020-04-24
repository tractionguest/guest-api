# HostsAPI

All URIs are relative to *https://mobile-api-refactor-admin.tractionguest.ca/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createHost**](HostsAPI.md#createhost) | **POST** /hosts | Create a Host
[**getHosts**](HostsAPI.md#gethosts) | **GET** /hosts | List All Hosts


# **createHost**
```swift
    open class func createHost(host: Host, idempotencyKey: String? = nil, completion: @escaping (_ data: Host?, _ error: Error?) -> Void)
```

Create a Host

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import GuestSDK

let host = Host(id: 123, email: "email_example", firstName: "firstName_example", lastName: "lastName_example", profilePicUrl: "profilePicUrl_example", department: "department_example", mobileNumber: "mobileNumber_example") // Host | 
let idempotencyKey = "idempotencyKey_example" // String | An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored (optional)

// Create a Host
HostsAPI.createHost(host: host, idempotencyKey: idempotencyKey) { (response, error) in
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
 **host** | [**Host**](Host.md) |  | 
 **idempotencyKey** | **String** | An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it&#39;s submitted. We store idempotency keys for only 24 hours. Any &#x60;Idempotency-Key&#x60; shorter than 10 characters will be ignored | [optional] 

### Return type

[**Host**](Host.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getHosts**
```swift
    open class func getHosts(query: String? = nil, limit: Int? = nil, offset: Int? = nil, include: String? = nil, completion: @escaping (_ data: PaginatedHostsList?, _ error: Error?) -> Void)
```

List All Hosts

Gets a list of all `Host` entities.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import GuestSDK

let query = "query_example" // String | Will filter by `first_name`, `last_name`, and `email` (optional)
let limit = 987 // Int | Limits the results to a specified number, defaults to 50 (optional)
let offset = 987 // Int | Offsets the results to a specified number, defaults to 0 (optional)
let include = "include_example" // String | A list of comma-separated related models to include (optional)

// List All Hosts
HostsAPI.getHosts(query: query, limit: limit, offset: offset, include: include) { (response, error) in
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
 **query** | **String** | Will filter by &#x60;first_name&#x60;, &#x60;last_name&#x60;, and &#x60;email&#x60; | [optional] 
 **limit** | **Int** | Limits the results to a specified number, defaults to 50 | [optional] 
 **offset** | **Int** | Offsets the results to a specified number, defaults to 0 | [optional] 
 **include** | **String** | A list of comma-separated related models to include | [optional] 

### Return type

[**PaginatedHostsList**](PaginatedHostsList.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

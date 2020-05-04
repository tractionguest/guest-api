# UsersAPI

All URIs are relative to *https://tractionguest.ca/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getCurrentUser**](UsersAPI.md#getcurrentuser) | **GET** /users/{userId} | Get the current User


# **getCurrentUser**
```swift
    open class func getCurrentUser(userId: String, include: String? = nil, completion: @escaping (_ data: User?, _ error: Error?) -> Void)
```

Get the current User

Gets the details of a single instance of the current `User`.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import GuestSDK

let userId = "userId_example" // String | The user ID, represented as a string. `\"current\"` can be used as a shortcut for the currently-authenticated user
let include = "include_example" // String | A list of comma-separated related models to include (optional)

// Get the current User
UsersAPI.getCurrentUser(userId: userId, include: include) { (response, error) in
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
 **userId** | **String** | The user ID, represented as a string. &#x60;\&quot;current\&quot;&#x60; can be used as a shortcut for the currently-authenticated user | 
 **include** | **String** | A list of comma-separated related models to include | [optional] 

### Return type

[**User**](User.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


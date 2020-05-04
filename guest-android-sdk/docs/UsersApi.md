# UsersApi

All URIs are relative to *https://tractionguest.ca/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getCurrentUser**](UsersApi.md#getCurrentUser) | **GET** /users/{userId} | Get the current User



## getCurrentUser

> User getCurrentUser(userId, include)

Get the current User

Gets the details of a single instance of the current &#x60;User&#x60;.

### Example

```java
// Import classes:
//import GuestSDK.UsersApi;

UsersApi apiInstance = new UsersApi();
String userId = null; // String | The user ID, represented as a string. `\"current\"` can be used as a shortcut for the currently-authenticated user
String include = null; // String | A list of comma-separated related models to include
try {
    User result = apiInstance.getCurrentUser(userId, include);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling UsersApi#getCurrentUser");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| The user ID, represented as a string. &#x60;\&quot;current\&quot;&#x60; can be used as a shortcut for the currently-authenticated user | [default to null]
 **include** | **String**| A list of comma-separated related models to include | [optional] [default to null]

### Return type

[**User**](User.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


# guest_sdk.api.UsersApi

## Load the API package
```dart
import 'package:guest_sdk/api.dart';
```

All URIs are relative to *https://mobile-api-refactor-admin.tractionguest.ca/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getCurrentUser**](UsersApi.md#getCurrentUser) | **GET** /users/{userId} | Get the current User


# **getCurrentUser**
> User getCurrentUser(userId)

Get the current User

Gets the details of a single instance of the current `User`.

### Example 
```dart
import 'package:guest_sdk/api.dart';

var api_instance = new UsersApi();
var userId = userId_example; // String | The user ID, represented as a string. `\"current\"` can be used as a shortcut for the currently-authenticated user

try { 
    var result = api_instance.getCurrentUser(userId);
    print(result);
} catch (e) {
    print("Exception when calling UsersApi->getCurrentUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| The user ID, represented as a string. &#x60;\&quot;current\&quot;&#x60; can be used as a shortcut for the currently-authenticated user | [default to null]

### Return type

[**User**](User.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


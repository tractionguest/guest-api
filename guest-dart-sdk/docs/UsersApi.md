# guest_sdk.api.UsersApi

## Load the API package
```dart
import 'package:guest_sdk/api.dart';
```

All URIs are relative to *https://tractionguest.ca/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getCurrentUser**](UsersApi.md#getCurrentUser) | **GET** /users/{user_id} | Get the current User


# **getCurrentUser**
> User getCurrentUser(userId, include)

Get the current User

Gets the details of a single instance of the current `User`.

### Example 
```dart
import 'package:guest_sdk/api.dart';

var api_instance = new UsersApi();
var userId = userId_example; // String | 
var include = include_example; // String | A list of comma-separated related models to include

try { 
    var result = api_instance.getCurrentUser(userId, include);
    print(result);
} catch (e) {
    print("Exception when calling UsersApi->getCurrentUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**|  | [default to null]
 **include** | **String**| A list of comma-separated related models to include | [optional] [default to null]

### Return type

[**User**](User.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


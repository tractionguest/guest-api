# guest_sdk.api.UsersApi

## Load the API package
```dart
import 'package:guest_sdk/api.dart';
```

All URIs are relative to *https://dravaqa.tractionguest.ca/api/mobile/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getCurrentUser**](UsersApi.md#getCurrentUser) | **GET** /users/current | Get the current User


# **getCurrentUser**
> User getCurrentUser()

Get the current User

Gets the details of a single instance of the current `User`.

### Example 
```dart
import 'package:guest_sdk/api.dart';
// TODO Configure HTTP basic authorization: ApiCredentials
//defaultApiClient.getAuthentication<HttpBasicAuth>('ApiCredentials').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('ApiCredentials').password = 'YOUR_PASSWORD';

var api_instance = new UsersApi();

try { 
    var result = api_instance.getCurrentUser();
    print(result);
} catch (e) {
    print("Exception when calling UsersApi->getCurrentUser: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**User**](User.md)

### Authorization

[ApiCredentials](../README.md#ApiCredentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


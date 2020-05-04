# guest_sdk.api.RegistrationApi

## Load the API package
```dart
import 'package:guest_sdk/api.dart';
```

All URIs are relative to *https://tractionguest.ca/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getRegistration**](RegistrationApi.md#getRegistration) | **GET** /registrations/{registrationId} | Get a Registration


# **getRegistration**
> Registration getRegistration(registrationId, include)

Get a Registration

Gets the details of a single instance of a `Registration`

### Example 
```dart
import 'package:guest_sdk/api.dart';

var api_instance = new RegistrationApi();
var registrationId = 1; // String | A unique identifier for `Registration`.
var include = include_example; // String | A list of comma-separated related models to include

try { 
    var result = api_instance.getRegistration(registrationId, include);
    print(result);
} catch (e) {
    print("Exception when calling RegistrationApi->getRegistration: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **registrationId** | **String**| A unique identifier for &#x60;Registration&#x60;. | [default to null]
 **include** | **String**| A list of comma-separated related models to include | [optional] [default to null]

### Return type

[**Registration**](Registration.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


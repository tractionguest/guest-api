# guest_sdk.api.GuestAlertsApi

## Load the API package
```dart
import 'package:guest_sdk/api.dart';
```

All URIs are relative to *https://mobile-api-refactor-admin.tractionguest.ca/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createGuestAlert**](GuestAlertsApi.md#createGuestAlert) | **POST** /guest_alerts | Create Guest Alert


# **createGuestAlert**
> GuestAlertDetail createGuestAlert(guestAlertCreateParams)

Create Guest Alert

Enqueues guest alerts via specified channels

### Example 
```dart
import 'package:guest_sdk/api.dart';

var api_instance = new GuestAlertsApi();
var guestAlertCreateParams = new GuestAlertCreateParams(); // GuestAlertCreateParams | 

try { 
    var result = api_instance.createGuestAlert(guestAlertCreateParams);
    print(result);
} catch (e) {
    print("Exception when calling GuestAlertsApi->createGuestAlert: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **guestAlertCreateParams** | [**GuestAlertCreateParams**](GuestAlertCreateParams.md)|  | 

### Return type

[**GuestAlertDetail**](GuestAlertDetail.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


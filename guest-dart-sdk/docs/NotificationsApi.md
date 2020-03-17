# guest_sdk.api.NotificationsApi

## Load the API package
```dart
import 'package:guest_sdk/api.dart';
```

All URIs are relative to *https://mobile-api-refactor-admin.tractionguest.ca/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createNotification**](NotificationsApi.md#createNotification) | **POST** /notifications | Create notifications


# **createNotification**
> createNotification(notificationsCreateParams)

Create notifications

Enqueues notifications to filtered Hosts and/or SignIns via specified channels

### Example 
```dart
import 'package:guest_sdk/api.dart';

var api_instance = new NotificationsApi();
var notificationsCreateParams = new NotificationsCreateParams(); // NotificationsCreateParams | 

try { 
    api_instance.createNotification(notificationsCreateParams);
} catch (e) {
    print("Exception when calling NotificationsApi->createNotification: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **notificationsCreateParams** | [**NotificationsCreateParams**](NotificationsCreateParams.md)|  | 

### Return type

void (empty response body)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


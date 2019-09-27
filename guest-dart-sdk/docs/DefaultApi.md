# guest_sdk.api.DefaultApi

## Load the API package
```dart
import 'package:guest_sdk/api.dart';
```

All URIs are relative to *https://mobile-api-refactor-admin.tractionguest.ca/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createGuestNotification**](DefaultApi.md#createGuestNotification) | **POST** /guest_notifications | Create a GuestNotification


# **createGuestNotification**
> createGuestNotification(guestNotification)

Create a GuestNotification

Creates a new instance of a `GuestNotification`.

### Example 
```dart
import 'package:guest_sdk/api.dart';

var api_instance = new DefaultApi();
var guestNotification = new GuestNotification(); // GuestNotification | A new `GuestNotification` to be created.

try { 
    api_instance.createGuestNotification(guestNotification);
} catch (e) {
    print("Exception when calling DefaultApi->createGuestNotification: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **guestNotification** | [**GuestNotification**](GuestNotification.md)| A new &#x60;GuestNotification&#x60; to be created. | 

### Return type

void (empty response body)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


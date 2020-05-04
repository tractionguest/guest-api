# GuestAlertsApi

All URIs are relative to *https://tractionguest.ca/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createGuestAlert**](GuestAlertsApi.md#createGuestAlert) | **POST** /guest_alerts | Create Guest Alert



## createGuestAlert

> GuestAlertDetail createGuestAlert(guestAlertCreateParams)

Create Guest Alert

Enqueues guest alerts via specified channels

### Example

```java
// Import classes:
//import GuestSDK.GuestAlertsApi;

GuestAlertsApi apiInstance = new GuestAlertsApi();
GuestAlertCreateParams guestAlertCreateParams = {"message":"some text","channels":["SMS","EMAIL"],"signin_selectors":{"signin_ids":[19,64],"is_signed_out":false}}; // GuestAlertCreateParams | 
try {
    GuestAlertDetail result = apiInstance.createGuestAlert(guestAlertCreateParams);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling GuestAlertsApi#createGuestAlert");
    e.printStackTrace();
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


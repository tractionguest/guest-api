# GuestAlertsAPI

All URIs are relative to *https://tractionguest.ca/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createGuestAlert**](GuestAlertsAPI.md#createguestalert) | **POST** /guest_alerts | Create Guest Alert


# **createGuestAlert**
```swift
    open class func createGuestAlert(guestAlertCreateParams: GuestAlertCreateParams, completion: @escaping (_ data: GuestAlertDetail?, _ error: Error?) -> Void)
```

Create Guest Alert

Enqueues guest alerts via specified channels

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import GuestSDK

let guestAlertCreateParams = GuestAlertCreateParams(signinSelectors: GuestAlertSigninSelectors(isSignedOut: false, signinIds: [123], locationIds: [123]), channels: ["channels_example"], message: "message_example") // GuestAlertCreateParams | 

// Create Guest Alert
GuestAlertsAPI.createGuestAlert(guestAlertCreateParams: guestAlertCreateParams) { (response, error) in
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
 **guestAlertCreateParams** | [**GuestAlertCreateParams**](GuestAlertCreateParams.md) |  | 

### Return type

[**GuestAlertDetail**](GuestAlertDetail.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# TGGuestAlertsApi

All URIs are relative to *https://tractionguest.ca/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createGuestAlert**](TGGuestAlertsApi.md#createguestalert) | **POST** /guest_alerts | Create GuestAlert


# **createGuestAlert**
```objc
-(NSURLSessionTask*) createGuestAlertWithGuestAlertCreateParams: (TGGuestAlertCreateParams*) guestAlertCreateParams
        completionHandler: (void (^)(TGGuestAlertDetail* output, NSError* error)) handler;
```

Create GuestAlert

Enqueues guest alerts via specified channels

### Example 
```objc
TGDefaultConfiguration *apiConfig = [TGDefaultConfiguration sharedConfig];


TGGuestAlertCreateParams* guestAlertCreateParams = {"message":"some text","channels":["SMS","EMAIL"],"signin_selectors":{"signin_ids":[19,64],"is_signed_out":false}}; // 

TGGuestAlertsApi*apiInstance = [[TGGuestAlertsApi alloc] init];

// Create GuestAlert
[apiInstance createGuestAlertWithGuestAlertCreateParams:guestAlertCreateParams
          completionHandler: ^(TGGuestAlertDetail* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TGGuestAlertsApi->createGuestAlert: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **guestAlertCreateParams** | [**TGGuestAlertCreateParams***](TGGuestAlertCreateParams.md)|  | 

### Return type

[**TGGuestAlertDetail***](TGGuestAlertDetail.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# OAIGuestAlertsApi

All URIs are relative to *https://mobile-api-refactor-admin.tractionguest.ca/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createGuestAlert**](OAIGuestAlertsApi.md#createguestalert) | **POST** /guest_alerts | Create Guest Alert


# **createGuestAlert**
```objc
-(NSURLSessionTask*) createGuestAlertWithGuestAlertCreateParams: (OAIGuestAlertCreateParams*) guestAlertCreateParams
        completionHandler: (void (^)(OAIGuestAlertDetail* output, NSError* error)) handler;
```

Create Guest Alert

Enqueues guest alerts via specified channels

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


OAIGuestAlertCreateParams* guestAlertCreateParams = {"message":"some text","channels":["SMS","EMAIL"],"signin_selectors":{"signin_ids":[19,64],"is_signed_out":false}}; // 

OAIGuestAlertsApi*apiInstance = [[OAIGuestAlertsApi alloc] init];

// Create Guest Alert
[apiInstance createGuestAlertWithGuestAlertCreateParams:guestAlertCreateParams
          completionHandler: ^(OAIGuestAlertDetail* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIGuestAlertsApi->createGuestAlert: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **guestAlertCreateParams** | [**OAIGuestAlertCreateParams***](OAIGuestAlertCreateParams.md)|  | 

### Return type

[**OAIGuestAlertDetail***](OAIGuestAlertDetail.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


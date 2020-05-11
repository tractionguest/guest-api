# TGRegistrationApi

All URIs are relative to *https://tractionguest.ca/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getRegistration**](TGRegistrationApi.md#getregistration) | **GET** /registrations/{registration_id} | Get a Registration


# **getRegistration**
```objc
-(NSURLSessionTask*) getRegistrationWithRegistrationId: (NSString*) registrationId
    include: (NSString*) include
        completionHandler: (void (^)(TGRegistration* output, NSError* error)) handler;
```

Get a Registration

Gets the details of a single instance of a `Registration`

### Example 
```objc
TGDefaultConfiguration *apiConfig = [TGDefaultConfiguration sharedConfig];


NSString* registrationId = @"registrationId_example"; // 
NSString* include = @"include_example"; // A list of comma-separated related models to include (optional)

TGRegistrationApi*apiInstance = [[TGRegistrationApi alloc] init];

// Get a Registration
[apiInstance getRegistrationWithRegistrationId:registrationId
              include:include
          completionHandler: ^(TGRegistration* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TGRegistrationApi->getRegistration: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **registrationId** | **NSString***|  | 
 **include** | **NSString***| A list of comma-separated related models to include | [optional] 

### Return type

[**TGRegistration***](TGRegistration.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


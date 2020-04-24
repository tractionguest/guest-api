# OAIRegistrationApi

All URIs are relative to *https://mobile-api-refactor-admin.tractionguest.ca/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getRegistration**](OAIRegistrationApi.md#getregistration) | **GET** /registrations/{registrationId} | Get a Registration


# **getRegistration**
```objc
-(NSURLSessionTask*) getRegistrationWithRegistrationId: (NSString*) registrationId
    include: (NSString*) include
        completionHandler: (void (^)(OAIRegistration* output, NSError* error)) handler;
```

Get a Registration

Gets the details of a single instance of a `Registration`

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSString* registrationId = 1; // A unique identifier for `Registration`.
NSString* include = @"include_example"; // A list of comma-separated related models to include (optional)

OAIRegistrationApi*apiInstance = [[OAIRegistrationApi alloc] init];

// Get a Registration
[apiInstance getRegistrationWithRegistrationId:registrationId
              include:include
          completionHandler: ^(OAIRegistration* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIRegistrationApi->getRegistration: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **registrationId** | **NSString***| A unique identifier for &#x60;Registration&#x60;. | 
 **include** | **NSString***| A list of comma-separated related models to include | [optional] 

### Return type

[**OAIRegistration***](OAIRegistration.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


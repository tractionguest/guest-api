# TGEmailTemplatesApi

All URIs are relative to *https://tractionguest.ca/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getEmailTemplates**](TGEmailTemplatesApi.md#getemailtemplates) | **GET** /email_templates | List all EmailTemplates


# **getEmailTemplates**
```objc
-(NSURLSessionTask*) getEmailTemplatesWithLimit: (NSNumber*) limit
    offset: (NSNumber*) offset
    include: (NSString*) include
        completionHandler: (void (^)(TGPaginatedEmailTemplatesList* output, NSError* error)) handler;
```

List all EmailTemplates

Gets a list of all `EmailTemplate` entities.

### Example 
```objc
TGDefaultConfiguration *apiConfig = [TGDefaultConfiguration sharedConfig];


NSNumber* limit = @56; // Limits the results to a specified number, defaults to 50 (optional)
NSNumber* offset = @56; // Offsets the results to a specified number, defaults to 0 (optional)
NSString* include = @"include_example"; // A list of comma-separated related models to include (optional)

TGEmailTemplatesApi*apiInstance = [[TGEmailTemplatesApi alloc] init];

// List all EmailTemplates
[apiInstance getEmailTemplatesWithLimit:limit
              offset:offset
              include:include
          completionHandler: ^(TGPaginatedEmailTemplatesList* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TGEmailTemplatesApi->getEmailTemplates: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **NSNumber***| Limits the results to a specified number, defaults to 50 | [optional] 
 **offset** | **NSNumber***| Offsets the results to a specified number, defaults to 0 | [optional] 
 **include** | **NSString***| A list of comma-separated related models to include | [optional] 

### Return type

[**TGPaginatedEmailTemplatesList***](TGPaginatedEmailTemplatesList.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


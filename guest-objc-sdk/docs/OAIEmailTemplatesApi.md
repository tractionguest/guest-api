# OAIEmailTemplatesApi

All URIs are relative to *https://mobile-api-refactor-admin.tractionguest.ca/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getEmailTemplates**](OAIEmailTemplatesApi.md#getemailtemplates) | **GET** /email_templates | List All EmailTemplates


# **getEmailTemplates**
```objc
-(NSURLSessionTask*) getEmailTemplatesWithLimit: (NSNumber*) limit
    offset: (NSNumber*) offset
    include: (NSString*) include
        completionHandler: (void (^)(OAIPaginatedEmailTemplatesList* output, NSError* error)) handler;
```

List All EmailTemplates

Gets a list of all `EmailTemplate` entities.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSNumber* limit = @56; // Limits the results to a specified number, defaults to 50 (optional)
NSNumber* offset = @56; // Offsets the results to a specified number, defaults to 0 (optional)
NSString* include = @"include_example"; // A list of comma-separated related models to include (optional)

OAIEmailTemplatesApi*apiInstance = [[OAIEmailTemplatesApi alloc] init];

// List All EmailTemplates
[apiInstance getEmailTemplatesWithLimit:limit
              offset:offset
              include:include
          completionHandler: ^(OAIPaginatedEmailTemplatesList* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAIEmailTemplatesApi->getEmailTemplates: %@", error);
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

[**OAIPaginatedEmailTemplatesList***](OAIPaginatedEmailTemplatesList.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


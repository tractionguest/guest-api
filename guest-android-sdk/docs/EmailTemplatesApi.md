# EmailTemplatesApi

All URIs are relative to *https://tractionguest.ca/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getEmailTemplates**](EmailTemplatesApi.md#getEmailTemplates) | **GET** /email_templates | List All EmailTemplates



## getEmailTemplates

> PaginatedEmailTemplatesList getEmailTemplates(limit, offset, include)

List All EmailTemplates

Gets a list of all &#x60;EmailTemplate&#x60; entities.

### Example

```java
// Import classes:
//import GuestSDK.EmailTemplatesApi;

EmailTemplatesApi apiInstance = new EmailTemplatesApi();
Integer limit = null; // Integer | Limits the results to a specified number, defaults to 50
Integer offset = null; // Integer | Offsets the results to a specified number, defaults to 0
String include = null; // String | A list of comma-separated related models to include
try {
    PaginatedEmailTemplatesList result = apiInstance.getEmailTemplates(limit, offset, include);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling EmailTemplatesApi#getEmailTemplates");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Integer**| Limits the results to a specified number, defaults to 50 | [optional] [default to null]
 **offset** | **Integer**| Offsets the results to a specified number, defaults to 0 | [optional] [default to null]
 **include** | **String**| A list of comma-separated related models to include | [optional] [default to null]

### Return type

[**PaginatedEmailTemplatesList**](PaginatedEmailTemplatesList.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


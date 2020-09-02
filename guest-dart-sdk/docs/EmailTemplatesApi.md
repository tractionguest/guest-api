# guest_sdk.api.EmailTemplatesApi

## Load the API package
```dart
import 'package:guest_sdk/api.dart';
```

All URIs are relative to *https://tractionguest.ca/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getEmailTemplates**](EmailTemplatesApi.md#getEmailTemplates) | **GET** /email_templates | List all EmailTemplates


# **getEmailTemplates**
> PaginatedEmailTemplatesList getEmailTemplates(limit, offset, include)

List all EmailTemplates

Gets a list of all `EmailTemplate` entities.

### Example 
```dart
import 'package:guest_sdk/api.dart';

var api_instance = new EmailTemplatesApi();
var limit = 56; // int | Limits the results to a specified number, defaults to 50
var offset = 56; // int | Offsets the results to a specified number, defaults to 0
var include = include_example; // String | A list of comma-separated related models to include

try { 
    var result = api_instance.getEmailTemplates(limit, offset, include);
    print(result);
} catch (e) {
    print("Exception when calling EmailTemplatesApi->getEmailTemplates: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**| Limits the results to a specified number, defaults to 50 | [optional] [default to null]
 **offset** | **int**| Offsets the results to a specified number, defaults to 0 | [optional] [default to null]
 **include** | **String**| A list of comma-separated related models to include | [optional] [default to null]

### Return type

[**PaginatedEmailTemplatesList**](PaginatedEmailTemplatesList.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


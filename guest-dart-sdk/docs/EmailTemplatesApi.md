# guest_sdk.api.EmailTemplatesApi

## Load the API package
```dart
import 'package:guest_sdk/api.dart';
```

All URIs are relative to *https://mobile-api-refactor-admin.tractionguest.ca/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getEmailTemplates**](EmailTemplatesApi.md#getEmailTemplates) | **GET** /email_templates | List All EmailTemplates


# **getEmailTemplates**
> PaginatedEmailTemplatesList getEmailTemplates(limit, offset)

List All EmailTemplates

Gets a list of all `EmailTemplate` entities.

### Example 
```dart
import 'package:guest_sdk/api.dart';
// TODO Configure HTTP basic authorization: ApiCredentials
//defaultApiClient.getAuthentication<HttpBasicAuth>('ApiCredentials').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('ApiCredentials').password = 'YOUR_PASSWORD';
// TODO Configure OAuth2 access token for authorization: TractionGuestAuth
//defaultApiClient.getAuthentication<OAuth>('TractionGuestAuth').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new EmailTemplatesApi();
var limit = 56; // int | Limits the results to a specified number, defaults to 50
var offset = 56; // int | Offsets the results to a specified number, defaults to 0

try { 
    var result = api_instance.getEmailTemplates(limit, offset);
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

### Return type

[**PaginatedEmailTemplatesList**](PaginatedEmailTemplatesList.md)

### Authorization

[ApiCredentials](../README.md#ApiCredentials), [TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# EmailTemplatesAPI

All URIs are relative to *https://mobile-api-refactor-admin.tractionguest.ca/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getEmailTemplates**](EmailTemplatesAPI.md#getemailtemplates) | **GET** /email_templates | List All EmailTemplates


# **getEmailTemplates**
```swift
    open class func getEmailTemplates(limit: Int? = nil, offset: Int? = nil, include: String? = nil, completion: @escaping (_ data: PaginatedEmailTemplatesList?, _ error: Error?) -> Void)
```

List All EmailTemplates

Gets a list of all `EmailTemplate` entities.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import GuestSDK

let limit = 987 // Int | Limits the results to a specified number, defaults to 50 (optional)
let offset = 987 // Int | Offsets the results to a specified number, defaults to 0 (optional)
let include = "include_example" // String | A list of comma-separated related models to include (optional)

// List All EmailTemplates
EmailTemplatesAPI.getEmailTemplates(limit: limit, offset: offset, include: include) { (response, error) in
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
 **limit** | **Int** | Limits the results to a specified number, defaults to 50 | [optional] 
 **offset** | **Int** | Offsets the results to a specified number, defaults to 0 | [optional] 
 **include** | **String** | A list of comma-separated related models to include | [optional] 

### Return type

[**PaginatedEmailTemplatesList**](PaginatedEmailTemplatesList.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


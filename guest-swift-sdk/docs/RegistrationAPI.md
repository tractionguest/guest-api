# RegistrationAPI

All URIs are relative to *https://mobile-api-refactor-admin.tractionguest.ca/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getRegistration**](RegistrationAPI.md#getregistration) | **GET** /registrations/{registrationId} | Get a Registration


# **getRegistration**
```swift
    open class func getRegistration(registrationId: String, include: String? = nil, completion: @escaping (_ data: Registration?, _ error: Error?) -> Void)
```

Get a Registration

Gets the details of a single instance of a `Registration`

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import GuestSDK

let registrationId = "registrationId_example" // String | A unique identifier for `Registration`.
let include = "include_example" // String | A list of comma-separated related models to include (optional)

// Get a Registration
RegistrationAPI.getRegistration(registrationId: registrationId, include: include) { (response, error) in
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
 **registrationId** | **String** | A unique identifier for &#x60;Registration&#x60;. | 
 **include** | **String** | A list of comma-separated related models to include | [optional] 

### Return type

[**Registration**](Registration.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


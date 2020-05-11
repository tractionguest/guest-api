# RegistrationApi

All URIs are relative to *https://tractionguest.ca/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getRegistration**](RegistrationApi.md#getRegistration) | **GET** /registrations/{registration_id} | Get a Registration



## getRegistration

> Registration getRegistration(registrationId, include)

Get a Registration

Gets the details of a single instance of a &#x60;Registration&#x60;

### Example

```java
// Import classes:
//import GuestSDK.RegistrationApi;

RegistrationApi apiInstance = new RegistrationApi();
String registrationId = null; // String | 
String include = null; // String | A list of comma-separated related models to include
try {
    Registration result = apiInstance.getRegistration(registrationId, include);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling RegistrationApi#getRegistration");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **registrationId** | **String**|  | [default to null]
 **include** | **String**| A list of comma-separated related models to include | [optional] [default to null]

### Return type

[**Registration**](Registration.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


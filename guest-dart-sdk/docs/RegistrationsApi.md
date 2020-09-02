# guest_sdk.api.RegistrationsApi

## Load the API package
```dart
import 'package:guest_sdk/api.dart';
```

All URIs are relative to *https://tractionguest.ca/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getRegistration**](RegistrationsApi.md#getRegistration) | **GET** /registrations/{registration_id} | Get a Registration
[**getRegistrations**](RegistrationsApi.md#getRegistrations) | **GET** /registrations | List all Registrations


# **getRegistration**
> RegistrationDetail getRegistration(registrationId, include)

Get a Registration

Gets the details of a single instance of a `Registration`

### Example 
```dart
import 'package:guest_sdk/api.dart';

var api_instance = new RegistrationsApi();
var registrationId = registrationId_example; // String | 
var include = include_example; // String | A list of comma-separated related models to include

try { 
    var result = api_instance.getRegistration(registrationId, include);
    print(result);
} catch (e) {
    print("Exception when calling RegistrationsApi->getRegistration: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **registrationId** | **String**|  | [default to null]
 **include** | **String**| A list of comma-separated related models to include | [optional] [default to null]

### Return type

[**RegistrationDetail**](RegistrationDetail.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRegistrations**
> PaginatedRegistrationsList getRegistrations(limit, offset, locationIds, createdBefore, createdAfter)

List all Registrations

Gets a list of all `Registration` entities.

### Example 
```dart
import 'package:guest_sdk/api.dart';

var api_instance = new RegistrationsApi();
var limit = 56; // int | Limits the results to a specified number, defaults to 50
var offset = 56; // int | Offsets the results to a specified number, defaults to 0
var locationIds = locationIds_example; // String | A comma separated list of Location IDs
var createdBefore = createdBefore_example; // String | Restricts results to only those that were created before the provided date
var createdAfter = createdAfter_example; // String | Restricts results to only those that were created after the provided date

try { 
    var result = api_instance.getRegistrations(limit, offset, locationIds, createdBefore, createdAfter);
    print(result);
} catch (e) {
    print("Exception when calling RegistrationsApi->getRegistrations: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**| Limits the results to a specified number, defaults to 50 | [optional] [default to null]
 **offset** | **int**| Offsets the results to a specified number, defaults to 0 | [optional] [default to null]
 **locationIds** | **String**| A comma separated list of Location IDs | [optional] [default to null]
 **createdBefore** | **String**| Restricts results to only those that were created before the provided date | [optional] [default to null]
 **createdAfter** | **String**| Restricts results to only those that were created after the provided date | [optional] [default to null]

### Return type

[**PaginatedRegistrationsList**](PaginatedRegistrationsList.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


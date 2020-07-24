# guest_sdk.api.LocationsApi

## Load the API package
```dart
import 'package:guest_sdk/api.dart';
```

All URIs are relative to *https://tractionguest.ca/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getLocation**](LocationsApi.md#getLocation) | **GET** /locations/{location_id} | Get the details of a location
[**getLocations**](LocationsApi.md#getLocations) | **GET** /locations | List all Locations


# **getLocation**
> Location getLocation(locationId)

Get the details of a location

Gets details of a single instance of `Location`.

### Example 
```dart
import 'package:guest_sdk/api.dart';

var api_instance = new LocationsApi();
var locationId = locationId_example; // String | 

try { 
    var result = api_instance.getLocation(locationId);
    print(result);
} catch (e) {
    print("Exception when calling LocationsApi->getLocation: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **locationId** | **String**|  | [default to null]

### Return type

[**Location**](Location.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLocations**
> PaginatedLocationsList getLocations(limit, offset, query, include)

List all Locations

Gets a list of all `Location` entities.

### Example 
```dart
import 'package:guest_sdk/api.dart';

var api_instance = new LocationsApi();
var limit = 56; // int | Limits the results to a specified number, defaults to 50
var offset = 56; // int | Offsets the results to a specified number, defaults to 0
var query = query_example; // String | Queries by Location `name`
var include = include_example; // String | A list of comma-separated related models to include

try { 
    var result = api_instance.getLocations(limit, offset, query, include);
    print(result);
} catch (e) {
    print("Exception when calling LocationsApi->getLocations: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**| Limits the results to a specified number, defaults to 50 | [optional] [default to null]
 **offset** | **int**| Offsets the results to a specified number, defaults to 0 | [optional] [default to null]
 **query** | **String**| Queries by Location &#x60;name&#x60; | [optional] [default to null]
 **include** | **String**| A list of comma-separated related models to include | [optional] [default to null]

### Return type

[**PaginatedLocationsList**](PaginatedLocationsList.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


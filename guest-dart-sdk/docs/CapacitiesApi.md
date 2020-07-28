# guest_sdk.api.CapacitiesApi

## Load the API package
```dart
import 'package:guest_sdk/api.dart';
```

All URIs are relative to *https://tractionguest.ca/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getCapacity**](CapacitiesApi.md#getCapacity) | **GET** /locations/{location_id}/capacities | Get the current capacity details for a location
[**getCapacityForecast**](CapacitiesApi.md#getCapacityForecast) | **GET** /locations/{location_id}/capacity_forecasts | Get the capacity details for a location


# **getCapacity**
> Capacity getCapacity(locationId)

Get the current capacity details for a location

Get details of current capacity in a location

### Example 
```dart
import 'package:guest_sdk/api.dart';

var api_instance = new CapacitiesApi();
var locationId = locationId_example; // String | 

try { 
    var result = api_instance.getCapacity(locationId);
    print(result);
} catch (e) {
    print("Exception when calling CapacitiesApi->getCapacity: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **locationId** | **String**|  | [default to null]

### Return type

[**Capacity**](Capacity.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCapacityForecast**
> CapacityForecast getCapacityForecast(locationId, hoursToForecast, timestamp)

Get the capacity details for a location

Gets the details of the future capacity in a location.

### Example 
```dart
import 'package:guest_sdk/api.dart';

var api_instance = new CapacitiesApi();
var locationId = locationId_example; // String | 
var hoursToForecast = 56; // int | The next N number of hours, the data needs to be calculated. Range from 1 to 24. If not set, it defaults to 8.
var timestamp = timestamp_example; // String | ISO8601 timestamp(includes the offset value) to use as the start point for the capacity estimate report. Defaults to the current local timestamp of the location if not provided. Eg: \"2020-07-16T17:05:08-07:00\"

try { 
    var result = api_instance.getCapacityForecast(locationId, hoursToForecast, timestamp);
    print(result);
} catch (e) {
    print("Exception when calling CapacitiesApi->getCapacityForecast: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **locationId** | **String**|  | [default to null]
 **hoursToForecast** | **int**| The next N number of hours, the data needs to be calculated. Range from 1 to 24. If not set, it defaults to 8. | [optional] [default to 8]
 **timestamp** | **String**| ISO8601 timestamp(includes the offset value) to use as the start point for the capacity estimate report. Defaults to the current local timestamp of the location if not provided. Eg: \&quot;2020-07-16T17:05:08-07:00\&quot; | [optional] [default to null]

### Return type

[**CapacityForecast**](CapacityForecast.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# CapacitiesApi

All URIs are relative to *https://tractionguest.ca/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getCapacity**](CapacitiesApi.md#getCapacity) | **GET** /locations/{location_id}/capacities | Get the current capacity details for a location
[**getCapacityForecast**](CapacitiesApi.md#getCapacityForecast) | **GET** /locations/{location_id}/capacity_forecasts | Get the capacity details for a location



## getCapacity

> Capacity getCapacity(locationId)

Get the current capacity details for a location

Get details of current capacity in a location

### Example

```java
// Import classes:
//import GuestSDK.CapacitiesApi;

CapacitiesApi apiInstance = new CapacitiesApi();
String locationId = null; // String | 
try {
    Capacity result = apiInstance.getCapacity(locationId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling CapacitiesApi#getCapacity");
    e.printStackTrace();
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


## getCapacityForecast

> CapacityForecast getCapacityForecast(locationId, hoursToForecast, timestamp)

Get the capacity details for a location

Gets the details of the future capacity in a location.

### Example

```java
// Import classes:
//import GuestSDK.CapacitiesApi;

CapacitiesApi apiInstance = new CapacitiesApi();
String locationId = null; // String | 
Integer hoursToForecast = 8; // Integer | The next N number of hours, the data needs to be calculated. Range from 1 to 24. If not set, it defaults to 8.
String timestamp = null; // String | ISO8601 timestamp(includes the offset value) to use as the start point for the capacity estimate report. Defaults to the current local timestamp of the location if not provided. Eg: \"2020-07-16T17:05:08-07:00\"
try {
    CapacityForecast result = apiInstance.getCapacityForecast(locationId, hoursToForecast, timestamp);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling CapacitiesApi#getCapacityForecast");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **locationId** | **String**|  | [default to null]
 **hoursToForecast** | **Integer**| The next N number of hours, the data needs to be calculated. Range from 1 to 24. If not set, it defaults to 8. | [optional] [default to 8]
 **timestamp** | **String**| ISO8601 timestamp(includes the offset value) to use as the start point for the capacity estimate report. Defaults to the current local timestamp of the location if not provided. Eg: \&quot;2020-07-16T17:05:08-07:00\&quot; | [optional] [default to null]

### Return type

[**CapacityForecast**](CapacityForecast.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


# CapacitiesAPI

All URIs are relative to *https://tractionguest.ca/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getCapacity**](CapacitiesAPI.md#getcapacity) | **GET** /locations/{location_id}/capacities | Get the current capacity details for a location
[**getCapacityForecast**](CapacitiesAPI.md#getcapacityforecast) | **GET** /locations/{location_id}/capacity_forecasts | Get the capacity details for a location


# **getCapacity**
```swift
    open class func getCapacity(locationId: String, completion: @escaping (_ data: Capacity?, _ error: Error?) -> Void)
```

Get the current capacity details for a location

Get details of current capacity in a location

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import GuestSDK

let locationId = "locationId_example" // String | 

// Get the current capacity details for a location
CapacitiesAPI.getCapacity(locationId: locationId) { (response, error) in
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
 **locationId** | **String** |  | 

### Return type

[**Capacity**](Capacity.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCapacityForecast**
```swift
    open class func getCapacityForecast(locationId: String, hoursToForecast: Int? = nil, timestamp: String? = nil, completion: @escaping (_ data: CapacityForecast?, _ error: Error?) -> Void)
```

Get the capacity details for a location

Gets the details of the future capacity in a location.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import GuestSDK

let locationId = "locationId_example" // String | 
let hoursToForecast = 987 // Int | The next N number of hours, the data needs to be calculated. Range from 1 to 24. If not set, it defaults to 8. (optional) (default to 8)
let timestamp = "timestamp_example" // String | ISO8601 timestamp(includes the offset value) to use as the start point for the capacity estimate report. Defaults to the current local timestamp of the location if not provided. Eg: \"2020-07-16T17:05:08-07:00\" (optional)

// Get the capacity details for a location
CapacitiesAPI.getCapacityForecast(locationId: locationId, hoursToForecast: hoursToForecast, timestamp: timestamp) { (response, error) in
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
 **locationId** | **String** |  | 
 **hoursToForecast** | **Int** | The next N number of hours, the data needs to be calculated. Range from 1 to 24. If not set, it defaults to 8. | [optional] [default to 8]
 **timestamp** | **String** | ISO8601 timestamp(includes the offset value) to use as the start point for the capacity estimate report. Defaults to the current local timestamp of the location if not provided. Eg: \&quot;2020-07-16T17:05:08-07:00\&quot; | [optional] 

### Return type

[**CapacityForecast**](CapacityForecast.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


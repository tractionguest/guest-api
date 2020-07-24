# LocationsApi

All URIs are relative to *https://tractionguest.ca/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getLocation**](LocationsApi.md#getLocation) | **GET** /locations/{location_id} | Get the details of a location
[**getLocations**](LocationsApi.md#getLocations) | **GET** /locations | List all Locations



## getLocation

> Location getLocation(locationId)

Get the details of a location

Gets details of a single instance of &#x60;Location&#x60;.

### Example

```java
// Import classes:
//import GuestSDK.LocationsApi;

LocationsApi apiInstance = new LocationsApi();
String locationId = null; // String | 
try {
    Location result = apiInstance.getLocation(locationId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling LocationsApi#getLocation");
    e.printStackTrace();
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


## getLocations

> PaginatedLocationsList getLocations(limit, offset, query, include)

List all Locations

Gets a list of all &#x60;Location&#x60; entities.

### Example

```java
// Import classes:
//import GuestSDK.LocationsApi;

LocationsApi apiInstance = new LocationsApi();
Integer limit = null; // Integer | Limits the results to a specified number, defaults to 50
Integer offset = null; // Integer | Offsets the results to a specified number, defaults to 0
String query = null; // String | Queries by Location `name`
String include = null; // String | A list of comma-separated related models to include
try {
    PaginatedLocationsList result = apiInstance.getLocations(limit, offset, query, include);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling LocationsApi#getLocations");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Integer**| Limits the results to a specified number, defaults to 50 | [optional] [default to null]
 **offset** | **Integer**| Offsets the results to a specified number, defaults to 0 | [optional] [default to null]
 **query** | **String**| Queries by Location &#x60;name&#x60; | [optional] [default to null]
 **include** | **String**| A list of comma-separated related models to include | [optional] [default to null]

### Return type

[**PaginatedLocationsList**](PaginatedLocationsList.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


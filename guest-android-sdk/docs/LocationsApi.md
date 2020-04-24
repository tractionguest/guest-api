# LocationsApi

All URIs are relative to *https://mobile-api-refactor-admin.tractionguest.ca/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getLocations**](LocationsApi.md#getLocations) | **GET** /locations | List All Locations



## getLocations

> PaginatedLocationsList getLocations(limit, offset, query, include)

List All Locations

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


# guest_sdk.api.LocationsApi

## Load the API package
```dart
import 'package:guest_sdk/api.dart';
```

All URIs are relative to *https://mobile-api-refactor-admin.tractionguest.ca/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createDelivery**](LocationsApi.md#createDelivery) | **POST** /locations/{locationId}/deliveries | Create Delivery
[**getDeliveries**](LocationsApi.md#getDeliveries) | **GET** /locations/{locationId}/deliveries | List all Deliveries
[**getLocations**](LocationsApi.md#getLocations) | **GET** /locations | List All Locations


# **createDelivery**
> Delivery createDelivery(locationId, deliveryCreateParams)

Create Delivery

### Example 
```dart
import 'package:guest_sdk/api.dart';

var api_instance = new LocationsApi();
var locationId = 98; // int | A unique identifier for a `Location`.
var deliveryCreateParams = new DeliveryCreateParams(); // DeliveryCreateParams | Create params

try { 
    var result = api_instance.createDelivery(locationId, deliveryCreateParams);
    print(result);
} catch (e) {
    print("Exception when calling LocationsApi->createDelivery: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **locationId** | **int**| A unique identifier for a &#x60;Location&#x60;. | [default to null]
 **deliveryCreateParams** | [**DeliveryCreateParams**](DeliveryCreateParams.md)| Create params | 

### Return type

[**Delivery**](Delivery.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDeliveries**
> PaginatedDeliveries getDeliveries(locationId, include)

List all Deliveries

### Example 
```dart
import 'package:guest_sdk/api.dart';

var api_instance = new LocationsApi();
var locationId = 98; // int | A unique identifier for a `Location`.
var include = include_example; // String | A list of comma-separated related models to include

try { 
    var result = api_instance.getDeliveries(locationId, include);
    print(result);
} catch (e) {
    print("Exception when calling LocationsApi->getDeliveries: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **locationId** | **int**| A unique identifier for a &#x60;Location&#x60;. | [default to null]
 **include** | **String**| A list of comma-separated related models to include | [optional] [default to null]

### Return type

[**PaginatedDeliveries**](PaginatedDeliveries.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLocations**
> PaginatedLocationsList getLocations(limit, offset, query, include)

List All Locations

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


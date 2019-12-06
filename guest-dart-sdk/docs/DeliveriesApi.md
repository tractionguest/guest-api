# guest_sdk.api.DeliveriesApi

## Load the API package
```dart
import 'package:guest_sdk/api.dart';
```

All URIs are relative to *https://mobile-api-refactor-admin.tractionguest.ca/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createDelivery**](DeliveriesApi.md#createDelivery) | **POST** /locations/{locationId}/deliveries | Create a Delivery
[**getDeliveries**](DeliveriesApi.md#getDeliveries) | **GET** /locations/{locationId}/deliveries | List all Deliveries
[**updateDelivery**](DeliveriesApi.md#updateDelivery) | **PUT** /deliveries/{deliveryId} | Update a Delivery


# **createDelivery**
> Delivery createDelivery(locationId, deliveryCreateParams)

Create a Delivery

### Example 
```dart
import 'package:guest_sdk/api.dart';

var api_instance = new DeliveriesApi();
var locationId = locationId_example; // String | A unique identifier for a `Location`.
var deliveryCreateParams = new DeliveryCreateParams(); // DeliveryCreateParams | 

try { 
    var result = api_instance.createDelivery(locationId, deliveryCreateParams);
    print(result);
} catch (e) {
    print("Exception when calling DeliveriesApi->createDelivery: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **locationId** | **String**| A unique identifier for a &#x60;Location&#x60;. | [default to null]
 **deliveryCreateParams** | [**DeliveryCreateParams**](DeliveryCreateParams.md)|  | [optional] 

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

var api_instance = new DeliveriesApi();
var locationId = locationId_example; // String | A unique identifier for a `Location`.
var include = include_example; // String | A list of comma-separated related models to include

try { 
    var result = api_instance.getDeliveries(locationId, include);
    print(result);
} catch (e) {
    print("Exception when calling DeliveriesApi->getDeliveries: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **locationId** | **String**| A unique identifier for a &#x60;Location&#x60;. | [default to null]
 **include** | **String**| A list of comma-separated related models to include | [optional] [default to null]

### Return type

[**PaginatedDeliveries**](PaginatedDeliveries.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateDelivery**
> Delivery updateDelivery(deliveryId, deliveryUpdateParams)

Update a Delivery

### Example 
```dart
import 'package:guest_sdk/api.dart';

var api_instance = new DeliveriesApi();
var deliveryId = deliveryId_example; // String | A unique identifier for a Delivery
var deliveryUpdateParams = new DeliveryUpdateParams(); // DeliveryUpdateParams | Update `Delivery` information

try { 
    var result = api_instance.updateDelivery(deliveryId, deliveryUpdateParams);
    print(result);
} catch (e) {
    print("Exception when calling DeliveriesApi->updateDelivery: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deliveryId** | **String**| A unique identifier for a Delivery | [default to null]
 **deliveryUpdateParams** | [**DeliveryUpdateParams**](DeliveryUpdateParams.md)| Update &#x60;Delivery&#x60; information | 

### Return type

[**Delivery**](Delivery.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# guest_sdk.api.ParkingApi

## Load the API package
```dart
import 'package:guest_sdk/api.dart';
```

All URIs are relative to *https://dravaqa.tractionguest.ca/api/mobile/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getParkingLots**](ParkingApi.md#getParkingLots) | **GET** /parking_lots | List All ParkingLots


# **getParkingLots**
> List<PaginatedParkingLotList> getParkingLots()

List All ParkingLots

Gets a list of all `ParkingLot` entities.

### Example 
```dart
import 'package:guest_sdk/api.dart';
// TODO Configure HTTP basic authorization: ApiCredentials
//defaultApiClient.getAuthentication<HttpBasicAuth>('ApiCredentials').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('ApiCredentials').password = 'YOUR_PASSWORD';

var api_instance = new ParkingApi();

try { 
    var result = api_instance.getParkingLots();
    print(result);
} catch (e) {
    print("Exception when calling ParkingApi->getParkingLots: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<PaginatedParkingLotList>**](PaginatedParkingLotList.md)

### Authorization

[ApiCredentials](../README.md#ApiCredentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


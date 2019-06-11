# guest_sdk.api.LocationsApi

## Load the API package
```dart
import 'package:guest_sdk/api.dart';
```

All URIs are relative to *https://dravaqa.tractionguest.ca/api/mobile/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createLocationInvite**](LocationsApi.md#createLocationInvite) | **POST** /locations/{locationId}/invites | Creates an Invite
[**getLocations**](LocationsApi.md#getLocations) | **GET** /locations | List All Locations


# **createLocationInvite**
> Invite createLocationInvite(locationId, invite)

Creates an Invite

Creates a new `Invite` for a specific `Location`.

### Example 
```dart
import 'package:guest_sdk/api.dart';
// TODO Configure HTTP basic authorization: ApiCredentials
//defaultApiClient.getAuthentication<HttpBasicAuth>('ApiCredentials').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('ApiCredentials').password = 'YOUR_PASSWORD';

var api_instance = new LocationsApi();
var locationId = locationId_example; // String | A unique identifier for a `Location`.
var invite = new Invite(); // Invite | 

try { 
    var result = api_instance.createLocationInvite(locationId, invite);
    print(result);
} catch (e) {
    print("Exception when calling LocationsApi->createLocationInvite: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **locationId** | **String**| A unique identifier for a &#x60;Location&#x60;. | [default to null]
 **invite** | [**Invite**](Invite.md)|  | 

### Return type

[**Invite**](Invite.md)

### Authorization

[ApiCredentials](../README.md#ApiCredentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLocations**
> PaginatedLocationsList getLocations()

List All Locations

Gets a list of all `Location` entities.

### Example 
```dart
import 'package:guest_sdk/api.dart';
// TODO Configure HTTP basic authorization: ApiCredentials
//defaultApiClient.getAuthentication<HttpBasicAuth>('ApiCredentials').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('ApiCredentials').password = 'YOUR_PASSWORD';

var api_instance = new LocationsApi();

try { 
    var result = api_instance.getLocations();
    print(result);
} catch (e) {
    print("Exception when calling LocationsApi->getLocations: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**PaginatedLocationsList**](PaginatedLocationsList.md)

### Authorization

[ApiCredentials](../README.md#ApiCredentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# guest_sdk.api.HostsApi

## Load the API package
```dart
import 'package:guest_sdk/api.dart';
```

All URIs are relative to *https://dravaqa.tractionguest.ca/api/mobile/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getHosts**](HostsApi.md#getHosts) | **GET** /hosts | List All Hosts


# **getHosts**
> PaginatedHostsList getHosts()

List All Hosts

Gets a list of all `Host` entities.

### Example 
```dart
import 'package:guest_sdk/api.dart';
// TODO Configure HTTP basic authorization: ApiCredentials
//defaultApiClient.getAuthentication<HttpBasicAuth>('ApiCredentials').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('ApiCredentials').password = 'YOUR_PASSWORD';

var api_instance = new HostsApi();

try { 
    var result = api_instance.getHosts();
    print(result);
} catch (e) {
    print("Exception when calling HostsApi->getHosts: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**PaginatedHostsList**](PaginatedHostsList.md)

### Authorization

[ApiCredentials](../README.md#ApiCredentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


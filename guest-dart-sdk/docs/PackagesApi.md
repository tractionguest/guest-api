# guest_sdk.api.PackagesApi

## Load the API package
```dart
import 'package:guest_sdk/api.dart';
```

All URIs are relative to *https://tractionguest.ca/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createPackage**](PackagesApi.md#createPackage) | **POST** /packages | Create package
[**getPackages**](PackagesApi.md#getPackages) | **GET** /packages | Get packages


# **createPackage**
> Package createPackage(packageCreateParams)

Create package

Creates a `Package` entity by extracting information about the recipient and carrier from the given image file.

### Example 
```dart
import 'package:guest_sdk/api.dart';

var api_instance = new PackagesApi();
var packageCreateParams = new PackageCreateParams(); // PackageCreateParams | Parameters for creating a package

try { 
    var result = api_instance.createPackage(packageCreateParams);
    print(result);
} catch (e) {
    print("Exception when calling PackagesApi->createPackage: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **packageCreateParams** | [**PackageCreateParams**](PackageCreateParams.md)| Parameters for creating a package | [optional] 

### Return type

[**Package**](Package.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPackages**
> PackageList getPackages()

Get packages

Gets a list of `Package` entities.

### Example 
```dart
import 'package:guest_sdk/api.dart';

var api_instance = new PackagesApi();

try { 
    var result = api_instance.getPackages();
    print(result);
} catch (e) {
    print("Exception when calling PackagesApi->getPackages: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**PackageList**](PackageList.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

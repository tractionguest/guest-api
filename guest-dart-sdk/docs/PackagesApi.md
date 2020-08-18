# guest_sdk.api.PackagesApi

## Load the API package
```dart
import 'package:guest_sdk/api.dart';
```

All URIs are relative to *https://tractionguest.ca/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createPackage**](PackagesApi.md#createPackage) | **POST** /packages | Create package
[**deletePackage**](PackagesApi.md#deletePackage) | **DELETE** /packages/{package_id} | 
[**getPackage**](PackagesApi.md#getPackage) | **GET** /packages/{package_id} | Get Package
[**getPackages**](PackagesApi.md#getPackages) | **GET** /packages | Get packages
[**updatePackage**](PackagesApi.md#updatePackage) | **PUT** /packages/{package_id} | Update Package


# **createPackage**
> Package createPackage(packageCreateParams)

Create package

Creates a [Package] entity by extracting information about the recipient and carrier from the given image file.

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

# **deletePackage**
> deletePackage(packageId, idempotencyKey)



Delete a pacakge

### Example 
```dart
import 'package:guest_sdk/api.dart';

var api_instance = new PackagesApi();
var packageId = packageId_example; // String | 
var idempotencyKey = idempotencyKey_example; // String | An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored

try { 
    api_instance.deletePackage(packageId, idempotencyKey);
} catch (e) {
    print("Exception when calling PackagesApi->deletePackage: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **packageId** | **String**|  | [default to null]
 **idempotencyKey** | **String**| An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it&#39;s submitted. We store idempotency keys for only 24 hours. Any &#x60;Idempotency-Key&#x60; shorter than 10 characters will be ignored | [optional] [default to null]

### Return type

void (empty response body)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPackage**
> Package getPackage(packageId, include)

Get Package

Gets the details of a single instance of a Package

### Example 
```dart
import 'package:guest_sdk/api.dart';

var api_instance = new PackagesApi();
var packageId = packageId_example; // String | 
var include = include_example; // String | A list of comma-separated related models to include 

try { 
    var result = api_instance.getPackage(packageId, include);
    print(result);
} catch (e) {
    print("Exception when calling PackagesApi->getPackage: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **packageId** | **String**|  | [default to null]
 **include** | **String**| A list of comma-separated related models to include  | [optional] [default to null]

### Return type

[**Package**](Package.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPackages**
> PaginatedPackagesList getPackages(locationIds, limit, offset, include, pickedUp, query)

Get packages

Gets a list of [Package] entities.

### Example 
```dart
import 'package:guest_sdk/api.dart';

var api_instance = new PackagesApi();
var locationIds = 1,2,3; // String | A comma separated list of Location ids for filtering. i.e. '1,2,3' Will return all packages from all locations if none are specified
var limit = 56; // int | Limits the results to a specified number, defaults to 50
var offset = 56; // int | Offsets the results to a specified number, defaults to 0
var include = recipient,location,image; // String | A list of comma-separated related models to include. Possible values: 'recipient', 'location', 'image'
var pickedUp = true; // bool | Filters packages by their \"picked_up\" state..
var query = query_example; // String | Searches for packages by recipient name

try { 
    var result = api_instance.getPackages(locationIds, limit, offset, include, pickedUp, query);
    print(result);
} catch (e) {
    print("Exception when calling PackagesApi->getPackages: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **locationIds** | **String**| A comma separated list of Location ids for filtering. i.e. &#39;1,2,3&#39; Will return all packages from all locations if none are specified | [optional] [default to null]
 **limit** | **int**| Limits the results to a specified number, defaults to 50 | [optional] [default to 50]
 **offset** | **int**| Offsets the results to a specified number, defaults to 0 | [optional] [default to 0]
 **include** | **String**| A list of comma-separated related models to include. Possible values: &#39;recipient&#39;, &#39;location&#39;, &#39;image&#39; | [optional] [default to null]
 **pickedUp** | **bool**| Filters packages by their \&quot;picked_up\&quot; state.. | [optional] [default to null]
 **query** | **String**| Searches for packages by recipient name | [optional] [default to null]

### Return type

[**PaginatedPackagesList**](PaginatedPackagesList.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updatePackage**
> Package updatePackage(packageId, idempotencyKey, packageUpdateParams)

Update Package

Update/Edit information about a Package.  picked_up - changes the package_state to picked up and assigns non null value to picked_up_at  recipient_id - update the package's intended recipient. Changes package_state to 'recipient_matched' if a match hasn't been found and notifies host about their package via email. A previous recipient will stop getting notifications  carrier_name - change/update the package's carrier/courier information    

### Example 
```dart
import 'package:guest_sdk/api.dart';

var api_instance = new PackagesApi();
var packageId = packageId_example; // String | 
var idempotencyKey = idempotencyKey_example; // String | An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored
var packageUpdateParams = new PackageUpdateParams(); // PackageUpdateParams | 

try { 
    var result = api_instance.updatePackage(packageId, idempotencyKey, packageUpdateParams);
    print(result);
} catch (e) {
    print("Exception when calling PackagesApi->updatePackage: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **packageId** | **String**|  | [default to null]
 **idempotencyKey** | **String**| An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it&#39;s submitted. We store idempotency keys for only 24 hours. Any &#x60;Idempotency-Key&#x60; shorter than 10 characters will be ignored | [optional] [default to null]
 **packageUpdateParams** | [**PackageUpdateParams**](PackageUpdateParams.md)|  | [optional] 

### Return type

[**Package**](Package.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


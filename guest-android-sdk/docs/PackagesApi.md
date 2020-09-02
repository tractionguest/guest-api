# PackagesApi

All URIs are relative to *https://tractionguest.ca/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createPackage**](PackagesApi.md#createPackage) | **POST** /packages | Create package
[**deletePackage**](PackagesApi.md#deletePackage) | **DELETE** /packages/{package_id} | 
[**getPackage**](PackagesApi.md#getPackage) | **GET** /packages/{package_id} | Get Package
[**getPackages**](PackagesApi.md#getPackages) | **GET** /packages | Get packages
[**updatePackage**](PackagesApi.md#updatePackage) | **PUT** /packages/{package_id} | Update Package



## createPackage

> ModelPackage createPackage(packageCreateParams)

Create package

Creates a [Package] entity by extracting information about the recipient and carrier from the given image file.

### Example

```java
// Import classes:
//import GuestSDK.PackagesApi;

PackagesApi apiInstance = new PackagesApi();
PackageCreateParams packageCreateParams = new PackageCreateParams(); // PackageCreateParams | Parameters for creating a package
try {
    ModelPackage result = apiInstance.createPackage(packageCreateParams);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling PackagesApi#createPackage");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **packageCreateParams** | [**PackageCreateParams**](PackageCreateParams.md)| Parameters for creating a package | [optional]

### Return type

[**ModelPackage**](ModelPackage.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## deletePackage

> deletePackage(packageId, idempotencyKey)



Delete a pacakge

### Example

```java
// Import classes:
//import GuestSDK.PackagesApi;

PackagesApi apiInstance = new PackagesApi();
String packageId = null; // String | 
String idempotencyKey = null; // String | An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored
try {
    apiInstance.deletePackage(packageId, idempotencyKey);
} catch (ApiException e) {
    System.err.println("Exception when calling PackagesApi#deletePackage");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **packageId** | **String**|  | [default to null]
 **idempotencyKey** | **String**| An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it&#39;s submitted. We store idempotency keys for only 24 hours. Any &#x60;Idempotency-Key&#x60; shorter than 10 characters will be ignored | [optional] [default to null]

### Return type

null (empty response body)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getPackage

> ModelPackage getPackage(packageId, include)

Get Package

Gets the details of a single instance of a Package

### Example

```java
// Import classes:
//import GuestSDK.PackagesApi;

PackagesApi apiInstance = new PackagesApi();
String packageId = null; // String | 
String include = null; // String | A list of comma-separated related models to include 
try {
    ModelPackage result = apiInstance.getPackage(packageId, include);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling PackagesApi#getPackage");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **packageId** | **String**|  | [default to null]
 **include** | **String**| A list of comma-separated related models to include  | [optional] [default to null]

### Return type

[**ModelPackage**](ModelPackage.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getPackages

> PaginatedPackagesList getPackages(locationIds, limit, offset, include, pickedUp, query)

Get packages

Gets a list of [Package] entities.

### Example

```java
// Import classes:
//import GuestSDK.PackagesApi;

PackagesApi apiInstance = new PackagesApi();
String locationIds = 1,2,3; // String | A comma separated list of Location ids for filtering. i.e. '1,2,3' Will return all packages from all locations if none are specified
Integer limit = 50; // Integer | Limits the results to a specified number, defaults to 50
Integer offset = 0; // Integer | Offsets the results to a specified number, defaults to 0
String include = recipient,location,image; // String | A list of comma-separated related models to include. Possible values: 'recipient', 'location', 'image'
Boolean pickedUp = null; // Boolean | Filters packages by their \"picked_up\" state..
String query = null; // String | Searches for packages by recipient name
try {
    PaginatedPackagesList result = apiInstance.getPackages(locationIds, limit, offset, include, pickedUp, query);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling PackagesApi#getPackages");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **locationIds** | **String**| A comma separated list of Location ids for filtering. i.e. &#39;1,2,3&#39; Will return all packages from all locations if none are specified | [optional] [default to null]
 **limit** | **Integer**| Limits the results to a specified number, defaults to 50 | [optional] [default to 50]
 **offset** | **Integer**| Offsets the results to a specified number, defaults to 0 | [optional] [default to 0]
 **include** | **String**| A list of comma-separated related models to include. Possible values: &#39;recipient&#39;, &#39;location&#39;, &#39;image&#39; | [optional] [default to null]
 **pickedUp** | **Boolean**| Filters packages by their \&quot;picked_up\&quot; state.. | [optional] [default to null]
 **query** | **String**| Searches for packages by recipient name | [optional] [default to null]

### Return type

[**PaginatedPackagesList**](PaginatedPackagesList.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## updatePackage

> ModelPackage updatePackage(packageId, idempotencyKey, packageUpdateParams)

Update Package

Update/Edit information about a Package.  picked_up - changes the package_state to picked up and assigns non null value to picked_up_at  recipient_id - update the package&#39;s intended recipient. Changes package_state to &#39;recipient_matched&#39; if a match hasn&#39;t been found and notifies host about their package via email. A previous recipient will stop getting notifications  carrier_name - change/update the package&#39;s carrier/courier information    

### Example

```java
// Import classes:
//import GuestSDK.PackagesApi;

PackagesApi apiInstance = new PackagesApi();
String packageId = null; // String | 
String idempotencyKey = null; // String | An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored
PackageUpdateParams packageUpdateParams = new PackageUpdateParams(); // PackageUpdateParams | 
try {
    ModelPackage result = apiInstance.updatePackage(packageId, idempotencyKey, packageUpdateParams);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling PackagesApi#updatePackage");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **packageId** | **String**|  | [default to null]
 **idempotencyKey** | **String**| An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it&#39;s submitted. We store idempotency keys for only 24 hours. Any &#x60;Idempotency-Key&#x60; shorter than 10 characters will be ignored | [optional] [default to null]
 **packageUpdateParams** | [**PackageUpdateParams**](PackageUpdateParams.md)|  | [optional]

### Return type

[**ModelPackage**](ModelPackage.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


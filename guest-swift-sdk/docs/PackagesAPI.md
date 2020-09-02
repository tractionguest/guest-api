# PackagesAPI

All URIs are relative to *https://tractionguest.ca/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createPackage**](PackagesAPI.md#createpackage) | **POST** /packages | Create package
[**deletePackage**](PackagesAPI.md#deletepackage) | **DELETE** /packages/{package_id} | 
[**getPackage**](PackagesAPI.md#getpackage) | **GET** /packages/{package_id} | Get Package
[**getPackages**](PackagesAPI.md#getpackages) | **GET** /packages | Get packages
[**updatePackage**](PackagesAPI.md#updatepackage) | **PUT** /packages/{package_id} | Update Package


# **createPackage**
```swift
    open class func createPackage(packageCreateParams: PackageCreateParams? = nil, completion: @escaping (_ data: Package?, _ error: Error?) -> Void)
```

Create package

Creates a [Package] entity by extracting information about the recipient and carrier from the given image file.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import GuestSDK

let packageCreateParams = PackageCreateParams(base64Image: 123, locationId: 123) // PackageCreateParams | Parameters for creating a package (optional)

// Create package
PackagesAPI.createPackage(packageCreateParams: packageCreateParams) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **packageCreateParams** | [**PackageCreateParams**](PackageCreateParams.md) | Parameters for creating a package | [optional] 

### Return type

[**Package**](Package.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deletePackage**
```swift
    open class func deletePackage(packageId: String, idempotencyKey: String? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



Delete a pacakge

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import GuestSDK

let packageId = "packageId_example" // String | 
let idempotencyKey = "idempotencyKey_example" // String | An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored (optional)

PackagesAPI.deletePackage(packageId: packageId, idempotencyKey: idempotencyKey) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **packageId** | **String** |  | 
 **idempotencyKey** | **String** | An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it&#39;s submitted. We store idempotency keys for only 24 hours. Any &#x60;Idempotency-Key&#x60; shorter than 10 characters will be ignored | [optional] 

### Return type

Void (empty response body)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPackage**
```swift
    open class func getPackage(packageId: String, include: String? = nil, completion: @escaping (_ data: Package?, _ error: Error?) -> Void)
```

Get Package

Gets the details of a single instance of a Package

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import GuestSDK

let packageId = "packageId_example" // String | 
let include = "include_example" // String | A list of comma-separated related models to include  (optional)

// Get Package
PackagesAPI.getPackage(packageId: packageId, include: include) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **packageId** | **String** |  | 
 **include** | **String** | A list of comma-separated related models to include  | [optional] 

### Return type

[**Package**](Package.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPackages**
```swift
    open class func getPackages(locationIds: String? = nil, limit: Int? = nil, offset: Int? = nil, include: String? = nil, pickedUp: Bool? = nil, query: String? = nil, completion: @escaping (_ data: PaginatedPackagesList?, _ error: Error?) -> Void)
```

Get packages

Gets a list of [Package] entities.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import GuestSDK

let locationIds = "locationIds_example" // String | A comma separated list of Location ids for filtering. i.e. '1,2,3' Will return all packages from all locations if none are specified (optional)
let limit = 987 // Int | Limits the results to a specified number, defaults to 50 (optional) (default to 50)
let offset = 987 // Int | Offsets the results to a specified number, defaults to 0 (optional) (default to 0)
let include = "include_example" // String | A list of comma-separated related models to include. Possible values: 'recipient', 'location', 'image' (optional)
let pickedUp = true // Bool | Filters packages by their \"picked_up\" state.. (optional)
let query = "query_example" // String | Searches for packages by recipient name (optional)

// Get packages
PackagesAPI.getPackages(locationIds: locationIds, limit: limit, offset: offset, include: include, pickedUp: pickedUp, query: query) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **locationIds** | **String** | A comma separated list of Location ids for filtering. i.e. &#39;1,2,3&#39; Will return all packages from all locations if none are specified | [optional] 
 **limit** | **Int** | Limits the results to a specified number, defaults to 50 | [optional] [default to 50]
 **offset** | **Int** | Offsets the results to a specified number, defaults to 0 | [optional] [default to 0]
 **include** | **String** | A list of comma-separated related models to include. Possible values: &#39;recipient&#39;, &#39;location&#39;, &#39;image&#39; | [optional] 
 **pickedUp** | **Bool** | Filters packages by their \&quot;picked_up\&quot; state.. | [optional] 
 **query** | **String** | Searches for packages by recipient name | [optional] 

### Return type

[**PaginatedPackagesList**](PaginatedPackagesList.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updatePackage**
```swift
    open class func updatePackage(packageId: String, idempotencyKey: String? = nil, packageUpdateParams: PackageUpdateParams? = nil, completion: @escaping (_ data: Package?, _ error: Error?) -> Void)
```

Update Package

Update/Edit information about a Package.  picked_up - changes the package_state to picked up and assigns non null value to picked_up_at  recipient_id - update the package's intended recipient. Changes package_state to 'recipient_matched' if a match hasn't been found and notifies host about their package via email. A previous recipient will stop getting notifications  carrier_name - change/update the package's carrier/courier information    

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import GuestSDK

let packageId = "packageId_example" // String | 
let idempotencyKey = "idempotencyKey_example" // String | An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored (optional)
let packageUpdateParams = PackageUpdateParams(pickedUp: false, carrierName: "carrierName_example", recipientId: 123) // PackageUpdateParams |  (optional)

// Update Package
PackagesAPI.updatePackage(packageId: packageId, idempotencyKey: idempotencyKey, packageUpdateParams: packageUpdateParams) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **packageId** | **String** |  | 
 **idempotencyKey** | **String** | An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it&#39;s submitted. We store idempotency keys for only 24 hours. Any &#x60;Idempotency-Key&#x60; shorter than 10 characters will be ignored | [optional] 
 **packageUpdateParams** | [**PackageUpdateParams**](PackageUpdateParams.md) |  | [optional] 

### Return type

[**Package**](Package.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


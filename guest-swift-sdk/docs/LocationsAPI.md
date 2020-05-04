# LocationsAPI

All URIs are relative to *https://tractionguest.ca/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getLocations**](LocationsAPI.md#getlocations) | **GET** /locations | List All Locations


# **getLocations**
```swift
    open class func getLocations(limit: Int? = nil, offset: Int? = nil, query: String? = nil, include: String? = nil, completion: @escaping (_ data: PaginatedLocationsList?, _ error: Error?) -> Void)
```

List All Locations

Gets a list of all `Location` entities.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import GuestSDK

let limit = 987 // Int | Limits the results to a specified number, defaults to 50 (optional)
let offset = 987 // Int | Offsets the results to a specified number, defaults to 0 (optional)
let query = "query_example" // String | Queries by Location `name` (optional)
let include = "include_example" // String | A list of comma-separated related models to include (optional)

// List All Locations
LocationsAPI.getLocations(limit: limit, offset: offset, query: query, include: include) { (response, error) in
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
 **limit** | **Int** | Limits the results to a specified number, defaults to 50 | [optional] 
 **offset** | **Int** | Offsets the results to a specified number, defaults to 0 | [optional] 
 **query** | **String** | Queries by Location &#x60;name&#x60; | [optional] 
 **include** | **String** | A list of comma-separated related models to include | [optional] 

### Return type

[**PaginatedLocationsList**](PaginatedLocationsList.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


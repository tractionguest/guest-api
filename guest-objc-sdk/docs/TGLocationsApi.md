# TGLocationsApi

All URIs are relative to *https://tractionguest.ca/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getLocation**](TGLocationsApi.md#getlocation) | **GET** /locations/{location_id} | Get the details of a location
[**getLocations**](TGLocationsApi.md#getlocations) | **GET** /locations | List all Locations


# **getLocation**
```objc
-(NSURLSessionTask*) getLocationWithLocationId: (NSString*) locationId
        completionHandler: (void (^)(TGLocation* output, NSError* error)) handler;
```

Get the details of a location

Gets details of a single instance of `Location`.

### Example 
```objc
TGDefaultConfiguration *apiConfig = [TGDefaultConfiguration sharedConfig];


NSString* locationId = @"locationId_example"; // 

TGLocationsApi*apiInstance = [[TGLocationsApi alloc] init];

// Get the details of a location
[apiInstance getLocationWithLocationId:locationId
          completionHandler: ^(TGLocation* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TGLocationsApi->getLocation: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **locationId** | **NSString***|  | 

### Return type

[**TGLocation***](TGLocation.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLocations**
```objc
-(NSURLSessionTask*) getLocationsWithLimit: (NSNumber*) limit
    offset: (NSNumber*) offset
    query: (NSString*) query
    include: (NSString*) include
        completionHandler: (void (^)(TGPaginatedLocationsList* output, NSError* error)) handler;
```

List all Locations

Gets a list of all `Location` entities.

### Example 
```objc
TGDefaultConfiguration *apiConfig = [TGDefaultConfiguration sharedConfig];


NSNumber* limit = @56; // Limits the results to a specified number, defaults to 50 (optional)
NSNumber* offset = @56; // Offsets the results to a specified number, defaults to 0 (optional)
NSString* query = @"query_example"; // Queries by Location `name` (optional)
NSString* include = @"include_example"; // A list of comma-separated related models to include (optional)

TGLocationsApi*apiInstance = [[TGLocationsApi alloc] init];

// List all Locations
[apiInstance getLocationsWithLimit:limit
              offset:offset
              query:query
              include:include
          completionHandler: ^(TGPaginatedLocationsList* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TGLocationsApi->getLocations: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **NSNumber***| Limits the results to a specified number, defaults to 50 | [optional] 
 **offset** | **NSNumber***| Offsets the results to a specified number, defaults to 0 | [optional] 
 **query** | **NSString***| Queries by Location &#x60;name&#x60; | [optional] 
 **include** | **NSString***| A list of comma-separated related models to include | [optional] 

### Return type

[**TGPaginatedLocationsList***](TGPaginatedLocationsList.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


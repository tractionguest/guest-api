# OAILocationsApi

All URIs are relative to *https://mobile-api-refactor-admin.tractionguest.ca/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getLocations**](OAILocationsApi.md#getlocations) | **GET** /locations | List All Locations


# **getLocations**
```objc
-(NSURLSessionTask*) getLocationsWithLimit: (NSNumber*) limit
    offset: (NSNumber*) offset
    query: (NSString*) query
    include: (NSString*) include
        completionHandler: (void (^)(OAIPaginatedLocationsList* output, NSError* error)) handler;
```

List All Locations

Gets a list of all `Location` entities.

### Example 
```objc
OAIDefaultConfiguration *apiConfig = [OAIDefaultConfiguration sharedConfig];


NSNumber* limit = @56; // Limits the results to a specified number, defaults to 50 (optional)
NSNumber* offset = @56; // Offsets the results to a specified number, defaults to 0 (optional)
NSString* query = @"query_example"; // Queries by Location `name` (optional)
NSString* include = @"include_example"; // A list of comma-separated related models to include (optional)

OAILocationsApi*apiInstance = [[OAILocationsApi alloc] init];

// List All Locations
[apiInstance getLocationsWithLimit:limit
              offset:offset
              query:query
              include:include
          completionHandler: ^(OAIPaginatedLocationsList* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling OAILocationsApi->getLocations: %@", error);
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

[**OAIPaginatedLocationsList***](OAIPaginatedLocationsList.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# TGCapacitiesApi

All URIs are relative to *https://tractionguest.ca/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getCapacity**](TGCapacitiesApi.md#getcapacity) | **GET** /locations/{location_id}/capacities | Get the current capacity details for a location
[**getCapacityForecast**](TGCapacitiesApi.md#getcapacityforecast) | **GET** /locations/{location_id}/capacity_forecasts | Get the capacity details for a location


# **getCapacity**
```objc
-(NSURLSessionTask*) getCapacityWithLocationId: (NSString*) locationId
        completionHandler: (void (^)(TGCapacity* output, NSError* error)) handler;
```

Get the current capacity details for a location

Get details of current capacity in a location

### Example 
```objc
TGDefaultConfiguration *apiConfig = [TGDefaultConfiguration sharedConfig];


NSString* locationId = @"locationId_example"; // 

TGCapacitiesApi*apiInstance = [[TGCapacitiesApi alloc] init];

// Get the current capacity details for a location
[apiInstance getCapacityWithLocationId:locationId
          completionHandler: ^(TGCapacity* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TGCapacitiesApi->getCapacity: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **locationId** | **NSString***|  | 

### Return type

[**TGCapacity***](TGCapacity.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCapacityForecast**
```objc
-(NSURLSessionTask*) getCapacityForecastWithLocationId: (NSString*) locationId
    hoursToForecast: (NSNumber*) hoursToForecast
    timestamp: (NSString*) timestamp
        completionHandler: (void (^)(TGCapacityForecast* output, NSError* error)) handler;
```

Get the capacity details for a location

Gets the details of the future capacity in a location.

### Example 
```objc
TGDefaultConfiguration *apiConfig = [TGDefaultConfiguration sharedConfig];


NSString* locationId = @"locationId_example"; // 
NSNumber* hoursToForecast = @8; // The next N number of hours, the data needs to be calculated. Range from 1 to 24. If not set, it defaults to 8. (optional) (default to @8)
NSString* timestamp = @"timestamp_example"; // ISO8601 timestamp(includes the offset value) to use as the start point for the capacity estimate report. Defaults to the current local timestamp of the location if not provided. Eg: \"2020-07-16T17:05:08-07:00\" (optional)

TGCapacitiesApi*apiInstance = [[TGCapacitiesApi alloc] init];

// Get the capacity details for a location
[apiInstance getCapacityForecastWithLocationId:locationId
              hoursToForecast:hoursToForecast
              timestamp:timestamp
          completionHandler: ^(TGCapacityForecast* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TGCapacitiesApi->getCapacityForecast: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **locationId** | **NSString***|  | 
 **hoursToForecast** | **NSNumber***| The next N number of hours, the data needs to be calculated. Range from 1 to 24. If not set, it defaults to 8. | [optional] [default to @8]
 **timestamp** | **NSString***| ISO8601 timestamp(includes the offset value) to use as the start point for the capacity estimate report. Defaults to the current local timestamp of the location if not provided. Eg: \&quot;2020-07-16T17:05:08-07:00\&quot; | [optional] 

### Return type

[**TGCapacityForecast***](TGCapacityForecast.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


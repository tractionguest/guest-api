# TGHostsApi

All URIs are relative to *https://tractionguest.ca/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createHost**](TGHostsApi.md#createhost) | **POST** /hosts | Create a Host
[**getHosts**](TGHostsApi.md#gethosts) | **GET** /hosts | List All Hosts


# **createHost**
```objc
-(NSURLSessionTask*) createHostWithHost: (TGHost*) host
    idempotencyKey: (NSString*) idempotencyKey
        completionHandler: (void (^)(TGHost* output, NSError* error)) handler;
```

Create a Host

Creates a Host

### Example 
```objc
TGDefaultConfiguration *apiConfig = [TGDefaultConfiguration sharedConfig];


TGHost* host = {"id":34,"email":"some text","first_name":"some text","last_name":"some text","profile_pic_url":"some text","department":"some text","mobile_number":"some text"}; // 
NSString* idempotencyKey = @"idempotencyKey_example"; // An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored (optional)

TGHostsApi*apiInstance = [[TGHostsApi alloc] init];

// Create a Host
[apiInstance createHostWithHost:host
              idempotencyKey:idempotencyKey
          completionHandler: ^(TGHost* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TGHostsApi->createHost: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **host** | [**TGHost***](TGHost.md)|  | 
 **idempotencyKey** | **NSString***| An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it&#39;s submitted. We store idempotency keys for only 24 hours. Any &#x60;Idempotency-Key&#x60; shorter than 10 characters will be ignored | [optional] 

### Return type

[**TGHost***](TGHost.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getHosts**
```objc
-(NSURLSessionTask*) getHostsWithQuery: (NSString*) query
    limit: (NSNumber*) limit
    offset: (NSNumber*) offset
    include: (NSString*) include
        completionHandler: (void (^)(TGPaginatedHostsList* output, NSError* error)) handler;
```

List All Hosts

Gets a list of all `Host` entities.

### Example 
```objc
TGDefaultConfiguration *apiConfig = [TGDefaultConfiguration sharedConfig];


NSString* query = @"query_example"; // Will filter by `first_name`, `last_name`, and `email` (optional)
NSNumber* limit = @56; // Limits the results to a specified number, defaults to 50 (optional)
NSNumber* offset = @56; // Offsets the results to a specified number, defaults to 0 (optional)
NSString* include = @"include_example"; // A list of comma-separated related models to include (optional)

TGHostsApi*apiInstance = [[TGHostsApi alloc] init];

// List All Hosts
[apiInstance getHostsWithQuery:query
              limit:limit
              offset:offset
              include:include
          completionHandler: ^(TGPaginatedHostsList* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TGHostsApi->getHosts: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **NSString***| Will filter by &#x60;first_name&#x60;, &#x60;last_name&#x60;, and &#x60;email&#x60; | [optional] 
 **limit** | **NSNumber***| Limits the results to a specified number, defaults to 50 | [optional] 
 **offset** | **NSNumber***| Offsets the results to a specified number, defaults to 0 | [optional] 
 **include** | **NSString***| A list of comma-separated related models to include | [optional] 

### Return type

[**TGPaginatedHostsList***](TGPaginatedHostsList.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


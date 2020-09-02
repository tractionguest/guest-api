# TGPackagesApi

All URIs are relative to *https://tractionguest.ca/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createPackage**](TGPackagesApi.md#createpackage) | **POST** /packages | Create package
[**deletePackage**](TGPackagesApi.md#deletepackage) | **DELETE** /packages/{package_id} | 
[**getPackage**](TGPackagesApi.md#getpackage) | **GET** /packages/{package_id} | Get Package
[**getPackages**](TGPackagesApi.md#getpackages) | **GET** /packages | Get packages
[**updatePackage**](TGPackagesApi.md#updatepackage) | **PUT** /packages/{package_id} | Update Package


# **createPackage**
```objc
-(NSURLSessionTask*) createPackageWithPackageCreateParams: (TGPackageCreateParams*) packageCreateParams
        completionHandler: (void (^)(TGPackage* output, NSError* error)) handler;
```

Create package

Creates a [Package] entity by extracting information about the recipient and carrier from the given image file.

### Example 
```objc
TGDefaultConfiguration *apiConfig = [TGDefaultConfiguration sharedConfig];


TGPackageCreateParams* packageCreateParams = [[TGPackageCreateParams alloc] init]; // Parameters for creating a package (optional)

TGPackagesApi*apiInstance = [[TGPackagesApi alloc] init];

// Create package
[apiInstance createPackageWithPackageCreateParams:packageCreateParams
          completionHandler: ^(TGPackage* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TGPackagesApi->createPackage: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **packageCreateParams** | [**TGPackageCreateParams***](TGPackageCreateParams.md)| Parameters for creating a package | [optional] 

### Return type

[**TGPackage***](TGPackage.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deletePackage**
```objc
-(NSURLSessionTask*) deletePackageWithPackageId: (NSString*) packageId
    idempotencyKey: (NSString*) idempotencyKey
        completionHandler: (void (^)(NSError* error)) handler;
```



Delete a pacakge

### Example 
```objc
TGDefaultConfiguration *apiConfig = [TGDefaultConfiguration sharedConfig];


NSString* packageId = @"packageId_example"; // 
NSString* idempotencyKey = @"idempotencyKey_example"; // An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored (optional)

TGPackagesApi*apiInstance = [[TGPackagesApi alloc] init];

[apiInstance deletePackageWithPackageId:packageId
              idempotencyKey:idempotencyKey
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling TGPackagesApi->deletePackage: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **packageId** | **NSString***|  | 
 **idempotencyKey** | **NSString***| An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it&#39;s submitted. We store idempotency keys for only 24 hours. Any &#x60;Idempotency-Key&#x60; shorter than 10 characters will be ignored | [optional] 

### Return type

void (empty response body)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPackage**
```objc
-(NSURLSessionTask*) getPackageWithPackageId: (NSString*) packageId
    include: (NSString*) include
        completionHandler: (void (^)(TGPackage* output, NSError* error)) handler;
```

Get Package

Gets the details of a single instance of a Package

### Example 
```objc
TGDefaultConfiguration *apiConfig = [TGDefaultConfiguration sharedConfig];


NSString* packageId = @"packageId_example"; // 
NSString* include = @"include_example"; // A list of comma-separated related models to include  (optional)

TGPackagesApi*apiInstance = [[TGPackagesApi alloc] init];

// Get Package
[apiInstance getPackageWithPackageId:packageId
              include:include
          completionHandler: ^(TGPackage* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TGPackagesApi->getPackage: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **packageId** | **NSString***|  | 
 **include** | **NSString***| A list of comma-separated related models to include  | [optional] 

### Return type

[**TGPackage***](TGPackage.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPackages**
```objc
-(NSURLSessionTask*) getPackagesWithLocationIds: (NSString*) locationIds
    limit: (NSNumber*) limit
    offset: (NSNumber*) offset
    include: (NSString*) include
    pickedUp: (NSNumber*) pickedUp
    query: (NSString*) query
        completionHandler: (void (^)(TGPaginatedPackagesList* output, NSError* error)) handler;
```

Get packages

Gets a list of [Package] entities.

### Example 
```objc
TGDefaultConfiguration *apiConfig = [TGDefaultConfiguration sharedConfig];


NSString* locationIds = 1,2,3; // A comma separated list of Location ids for filtering. i.e. '1,2,3' Will return all packages from all locations if none are specified (optional)
NSNumber* limit = @50; // Limits the results to a specified number, defaults to 50 (optional) (default to @50)
NSNumber* offset = @0; // Offsets the results to a specified number, defaults to 0 (optional) (default to @0)
NSString* include = recipient,location,image; // A list of comma-separated related models to include. Possible values: 'recipient', 'location', 'image' (optional)
NSNumber* pickedUp = @56; // Filters packages by their \"picked_up\" state.. (optional)
NSString* query = @"query_example"; // Searches for packages by recipient name (optional)

TGPackagesApi*apiInstance = [[TGPackagesApi alloc] init];

// Get packages
[apiInstance getPackagesWithLocationIds:locationIds
              limit:limit
              offset:offset
              include:include
              pickedUp:pickedUp
              query:query
          completionHandler: ^(TGPaginatedPackagesList* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TGPackagesApi->getPackages: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **locationIds** | **NSString***| A comma separated list of Location ids for filtering. i.e. &#39;1,2,3&#39; Will return all packages from all locations if none are specified | [optional] 
 **limit** | **NSNumber***| Limits the results to a specified number, defaults to 50 | [optional] [default to @50]
 **offset** | **NSNumber***| Offsets the results to a specified number, defaults to 0 | [optional] [default to @0]
 **include** | **NSString***| A list of comma-separated related models to include. Possible values: &#39;recipient&#39;, &#39;location&#39;, &#39;image&#39; | [optional] 
 **pickedUp** | **NSNumber***| Filters packages by their \&quot;picked_up\&quot; state.. | [optional] 
 **query** | **NSString***| Searches for packages by recipient name | [optional] 

### Return type

[**TGPaginatedPackagesList***](TGPaginatedPackagesList.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updatePackage**
```objc
-(NSURLSessionTask*) updatePackageWithPackageId: (NSString*) packageId
    idempotencyKey: (NSString*) idempotencyKey
    packageUpdateParams: (TGPackageUpdateParams*) packageUpdateParams
        completionHandler: (void (^)(TGPackage* output, NSError* error)) handler;
```

Update Package

Update/Edit information about a Package.  picked_up - changes the package_state to picked up and assigns non null value to picked_up_at  recipient_id - update the package's intended recipient. Changes package_state to 'recipient_matched' if a match hasn't been found and notifies host about their package via email. A previous recipient will stop getting notifications  carrier_name - change/update the package's carrier/courier information    

### Example 
```objc
TGDefaultConfiguration *apiConfig = [TGDefaultConfiguration sharedConfig];


NSString* packageId = @"packageId_example"; // 
NSString* idempotencyKey = @"idempotencyKey_example"; // An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored (optional)
TGPackageUpdateParams* packageUpdateParams = [[TGPackageUpdateParams alloc] init]; //  (optional)

TGPackagesApi*apiInstance = [[TGPackagesApi alloc] init];

// Update Package
[apiInstance updatePackageWithPackageId:packageId
              idempotencyKey:idempotencyKey
              packageUpdateParams:packageUpdateParams
          completionHandler: ^(TGPackage* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TGPackagesApi->updatePackage: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **packageId** | **NSString***|  | 
 **idempotencyKey** | **NSString***| An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it&#39;s submitted. We store idempotency keys for only 24 hours. Any &#x60;Idempotency-Key&#x60; shorter than 10 characters will be ignored | [optional] 
 **packageUpdateParams** | [**TGPackageUpdateParams***](TGPackageUpdateParams.md)|  | [optional] 

### Return type

[**TGPackage***](TGPackage.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


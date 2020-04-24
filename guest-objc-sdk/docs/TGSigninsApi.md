# TGSigninsApi

All URIs are relative to *https://mobile-api-refactor-admin.tractionguest.ca/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createSignin**](TGSigninsApi.md#createsignin) | **POST** /signins | Create a Signin
[**getSignin**](TGSigninsApi.md#getsignin) | **GET** /signins/{signinId} | Get a Signin
[**getSignins**](TGSigninsApi.md#getsignins) | **GET** /signins | List All Signins
[**updateSignin**](TGSigninsApi.md#updatesignin) | **PUT** /signins/{signinId} | Update a Signin attribute


# **createSignin**
```objc
-(NSURLSessionTask*) createSigninWithSigninCreateParams: (TGSigninCreateParams*) signinCreateParams
    idempotencyKey: (NSString*) idempotencyKey
        completionHandler: (void (^)(TGSignin* output, NSError* error)) handler;
```

Create a Signin

Creates a new instance of a `Signin`.

### Example 
```objc
TGDefaultConfiguration *apiConfig = [TGDefaultConfiguration sharedConfig];


TGSigninCreateParams* signinCreateParams = {"guest_email_template_id":47,"host_email_template_id":65,"host_ids":[77,49],"location_id":79,"send_notifications":true,"photos":[{},{}],"sms_message":"some text","first_name":"some text","last_name":"some text","company":"some text","email":"some text"}; // A new `Signin` to be created.
NSString* idempotencyKey = @"idempotencyKey_example"; // An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored (optional)

TGSigninsApi*apiInstance = [[TGSigninsApi alloc] init];

// Create a Signin
[apiInstance createSigninWithSigninCreateParams:signinCreateParams
              idempotencyKey:idempotencyKey
          completionHandler: ^(TGSignin* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TGSigninsApi->createSignin: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **signinCreateParams** | [**TGSigninCreateParams***](TGSigninCreateParams.md)| A new &#x60;Signin&#x60; to be created. | 
 **idempotencyKey** | **NSString***| An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it&#39;s submitted. We store idempotency keys for only 24 hours. Any &#x60;Idempotency-Key&#x60; shorter than 10 characters will be ignored | [optional] 

### Return type

[**TGSignin***](TGSignin.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSignin**
```objc
-(NSURLSessionTask*) getSigninWithSigninId: (NSString*) signinId
    include: (NSString*) include
        completionHandler: (void (^)(TGSigninDetail* output, NSError* error)) handler;
```

Get a Signin

Gets the details of a single instance of a `Signin`.

### Example 
```objc
TGDefaultConfiguration *apiConfig = [TGDefaultConfiguration sharedConfig];


NSString* signinId = @"signinId_example"; // A unique identifier for a `Signin`.
NSString* include = @"include_example"; // A list of comma-separated related models to include (optional)

TGSigninsApi*apiInstance = [[TGSigninsApi alloc] init];

// Get a Signin
[apiInstance getSigninWithSigninId:signinId
              include:include
          completionHandler: ^(TGSigninDetail* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TGSigninsApi->getSignin: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **signinId** | **NSString***| A unique identifier for a &#x60;Signin&#x60;. | 
 **include** | **NSString***| A list of comma-separated related models to include | [optional] 

### Return type

[**TGSigninDetail***](TGSigninDetail.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSignins**
```objc
-(NSURLSessionTask*) getSigninsWithLocationIds: (NSString*) locationIds
    withColours: (NSString*) withColours
    query: (NSString*) query
    withAcknowledged: (NSNumber*) withAcknowledged
    withSignedIn: (NSNumber*) withSignedIn
    signinBefore: (NSDate*) signinBefore
    signinAfter: (NSDate*) signinAfter
    limit: (NSNumber*) limit
    offset: (NSNumber*) offset
    querySort: (NSString*) querySort
    include: (NSString*) include
        completionHandler: (void (^)(TGPaginatedSigninsList* output, NSError* error)) handler;
```

List All Signins

Gets a list of all `Signin` entities.

### Example 
```objc
TGDefaultConfiguration *apiConfig = [TGDefaultConfiguration sharedConfig];


NSString* locationIds = @"locationIds_example"; // A comma separated list of Location IDs (optional)
NSString* withColours = @"withColours_example"; // A comma separated list of case-insensitive colour values. i.e., `red`, `green`, `yellow`, and `orange` (optional)
NSString* query = @"query_example"; // Allows you to query by `company`, `email`, `first_name`, `last_name`, and `location_name` (optional)
NSNumber* withAcknowledged = @56; // Filters to all those `Signin`s that have, or have not been acknowledged (optional)
NSNumber* withSignedIn = @56; // Filters to all `Signin`s that are, or are not currently signed out. (optional)
NSDate* signinBefore = @"2013-10-20T19:20:30+01:00"; // Filters results to all those *before* the provided datetime (optional)
NSDate* signinAfter = @"2013-10-20T19:20:30+01:00"; // Filters results to all those *after* the provided datetime (optional)
NSNumber* limit = @56; // Limits the results to a specified number, defaults to 50 (optional)
NSNumber* offset = @56; // Offsets the results to a specified number, defaults to 0 (optional)
NSString* querySort = @"querySort_example"; // Allows you to override ordering by most relevant results when querying (optional)
NSString* include = @"include_example"; // A list of comma-separated related models to include (optional)

TGSigninsApi*apiInstance = [[TGSigninsApi alloc] init];

// List All Signins
[apiInstance getSigninsWithLocationIds:locationIds
              withColours:withColours
              query:query
              withAcknowledged:withAcknowledged
              withSignedIn:withSignedIn
              signinBefore:signinBefore
              signinAfter:signinAfter
              limit:limit
              offset:offset
              querySort:querySort
              include:include
          completionHandler: ^(TGPaginatedSigninsList* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TGSigninsApi->getSignins: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **locationIds** | **NSString***| A comma separated list of Location IDs | [optional] 
 **withColours** | **NSString***| A comma separated list of case-insensitive colour values. i.e., &#x60;red&#x60;, &#x60;green&#x60;, &#x60;yellow&#x60;, and &#x60;orange&#x60; | [optional] 
 **query** | **NSString***| Allows you to query by &#x60;company&#x60;, &#x60;email&#x60;, &#x60;first_name&#x60;, &#x60;last_name&#x60;, and &#x60;location_name&#x60; | [optional] 
 **withAcknowledged** | **NSNumber***| Filters to all those &#x60;Signin&#x60;s that have, or have not been acknowledged | [optional] 
 **withSignedIn** | **NSNumber***| Filters to all &#x60;Signin&#x60;s that are, or are not currently signed out. | [optional] 
 **signinBefore** | **NSDate***| Filters results to all those *before* the provided datetime | [optional] 
 **signinAfter** | **NSDate***| Filters results to all those *after* the provided datetime | [optional] 
 **limit** | **NSNumber***| Limits the results to a specified number, defaults to 50 | [optional] 
 **offset** | **NSNumber***| Offsets the results to a specified number, defaults to 0 | [optional] 
 **querySort** | **NSString***| Allows you to override ordering by most relevant results when querying | [optional] 
 **include** | **NSString***| A list of comma-separated related models to include | [optional] 

### Return type

[**TGPaginatedSigninsList***](TGPaginatedSigninsList.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateSignin**
```objc
-(NSURLSessionTask*) updateSigninWithSigninId: (NSString*) signinId
    signinUpdateParams: (TGSigninUpdateParams*) signinUpdateParams
    idempotencyKey: (NSString*) idempotencyKey
        completionHandler: (void (^)(TGSigninDetail* output, NSError* error)) handler;
```

Update a Signin attribute

Update, acknowledge, or `Signout` a `Signin`

### Example 
```objc
TGDefaultConfiguration *apiConfig = [TGDefaultConfiguration sharedConfig];


NSString* signinId = @"signinId_example"; // A unique identifier for a `Signin`.
TGSigninUpdateParams* signinUpdateParams = {"is_signed_out":true,"is_acknowledged":true,"is_accounted_for":true}; // The only updatable values for a `Signin` are `badge_number`, `badge_returned`, `is_accounted_for`, `is_signed_out`, and `is_acknowledged`. `is_signed_out`, and `is_acknowledged` are pseudo attributes where once they are set to true, there's no going back.
NSString* idempotencyKey = @"idempotencyKey_example"; // An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored (optional)

TGSigninsApi*apiInstance = [[TGSigninsApi alloc] init];

// Update a Signin attribute
[apiInstance updateSigninWithSigninId:signinId
              signinUpdateParams:signinUpdateParams
              idempotencyKey:idempotencyKey
          completionHandler: ^(TGSigninDetail* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TGSigninsApi->updateSignin: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **signinId** | **NSString***| A unique identifier for a &#x60;Signin&#x60;. | 
 **signinUpdateParams** | [**TGSigninUpdateParams***](TGSigninUpdateParams.md)| The only updatable values for a &#x60;Signin&#x60; are &#x60;badge_number&#x60;, &#x60;badge_returned&#x60;, &#x60;is_accounted_for&#x60;, &#x60;is_signed_out&#x60;, and &#x60;is_acknowledged&#x60;. &#x60;is_signed_out&#x60;, and &#x60;is_acknowledged&#x60; are pseudo attributes where once they are set to true, there&#39;s no going back. | 
 **idempotencyKey** | **NSString***| An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it&#39;s submitted. We store idempotency keys for only 24 hours. Any &#x60;Idempotency-Key&#x60; shorter than 10 characters will be ignored | [optional] 

### Return type

[**TGSigninDetail***](TGSigninDetail.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

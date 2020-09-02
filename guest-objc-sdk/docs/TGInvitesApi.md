# TGInvitesApi

All URIs are relative to *https://tractionguest.ca/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createLocationInvite**](TGInvitesApi.md#createlocationinvite) | **POST** /locations/{location_id}/invites | Create an Invite
[**createRegistrationInvite**](TGInvitesApi.md#createregistrationinvite) | **POST** /registrations/{registration_id}/invites | Create an Invite from a Registration
[**deleteInvite**](TGInvitesApi.md#deleteinvite) | **DELETE** /invites/{invite_id} | Deletes an Invite
[**getInvite**](TGInvitesApi.md#getinvite) | **GET** /invites/{invite_id} | Get an Invite
[**getInvites**](TGInvitesApi.md#getinvites) | **GET** /invites | List all Invites
[**updateInvite**](TGInvitesApi.md#updateinvite) | **PUT** /invites/{invite_id} | Update an Invite


# **createLocationInvite**
```objc
-(NSURLSessionTask*) createLocationInviteWithLocationId: (NSString*) locationId
    inviteCreateParams: (TGInviteCreateParams*) inviteCreateParams
    idempotencyKey: (NSString*) idempotencyKey
        completionHandler: (void (^)(TGInviteDetail* output, NSError* error)) handler;
```

Create an Invite

Creates a new `Invite` for a specific `Location`.

### Example 
```objc
TGDefaultConfiguration *apiConfig = [TGDefaultConfiguration sharedConfig];


NSString* locationId = @"locationId_example"; // 
TGInviteCreateParams* inviteCreateParams = {"company":"some text","email":"some text","end_date":"2020-07-17T01:59:59.999Z","last_name":"some text","start_date":"2020-07-17T01:59:59.999Z","title":"some text","watchlist_colour":"ORANGE","host_ids":[96,2],"custom_fields":[{"format":"string","field_name":"some text","field_value":"some text"},{"format":"string","field_name":"some text","field_value":"some text"}],"email_template_id":53,"mobile_number":"some text","first_name":"some text","notification_triggers":[{"offset_direction":"BEFORE","offset_unit":"days","offset_amount":34,"offset_origin":"START","email_template_id":63,"notification_groups":["some text","some text"]},{"offset_direction":"AFTER","offset_unit":"hours","offset_amount":12,"offset_origin":"END","email_template_id":2,"notification_groups":["some text","some text"]}]}; // 
NSString* idempotencyKey = @"idempotencyKey_example"; // An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored (optional)

TGInvitesApi*apiInstance = [[TGInvitesApi alloc] init];

// Create an Invite
[apiInstance createLocationInviteWithLocationId:locationId
              inviteCreateParams:inviteCreateParams
              idempotencyKey:idempotencyKey
          completionHandler: ^(TGInviteDetail* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TGInvitesApi->createLocationInvite: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **locationId** | **NSString***|  | 
 **inviteCreateParams** | [**TGInviteCreateParams***](TGInviteCreateParams.md)|  | 
 **idempotencyKey** | **NSString***| An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it&#39;s submitted. We store idempotency keys for only 24 hours. Any &#x60;Idempotency-Key&#x60; shorter than 10 characters will be ignored | [optional] 

### Return type

[**TGInviteDetail***](TGInviteDetail.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createRegistrationInvite**
```objc
-(NSURLSessionTask*) createRegistrationInviteWithRegistrationId: (NSString*) registrationId
    idempotencyKey: (NSString*) idempotencyKey
        completionHandler: (void (^)(TGInviteDetail* output, NSError* error)) handler;
```

Create an Invite from a Registration

Creates a new `Invite` from `Registration` data.

### Example 
```objc
TGDefaultConfiguration *apiConfig = [TGDefaultConfiguration sharedConfig];


NSString* registrationId = @"registrationId_example"; // 
NSString* idempotencyKey = @"idempotencyKey_example"; // An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored (optional)

TGInvitesApi*apiInstance = [[TGInvitesApi alloc] init];

// Create an Invite from a Registration
[apiInstance createRegistrationInviteWithRegistrationId:registrationId
              idempotencyKey:idempotencyKey
          completionHandler: ^(TGInviteDetail* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TGInvitesApi->createRegistrationInvite: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **registrationId** | **NSString***|  | 
 **idempotencyKey** | **NSString***| An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it&#39;s submitted. We store idempotency keys for only 24 hours. Any &#x60;Idempotency-Key&#x60; shorter than 10 characters will be ignored | [optional] 

### Return type

[**TGInviteDetail***](TGInviteDetail.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteInvite**
```objc
-(NSURLSessionTask*) deleteInviteWithInviteId: (NSString*) inviteId
    idempotencyKey: (NSString*) idempotencyKey
        completionHandler: (void (^)(NSError* error)) handler;
```

Deletes an Invite

Deletes a single instance of `Invite`

### Example 
```objc
TGDefaultConfiguration *apiConfig = [TGDefaultConfiguration sharedConfig];


NSString* inviteId = @"inviteId_example"; // 
NSString* idempotencyKey = @"idempotencyKey_example"; // An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored (optional)

TGInvitesApi*apiInstance = [[TGInvitesApi alloc] init];

// Deletes an Invite
[apiInstance deleteInviteWithInviteId:inviteId
              idempotencyKey:idempotencyKey
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling TGInvitesApi->deleteInvite: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inviteId** | **NSString***|  | 
 **idempotencyKey** | **NSString***| An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it&#39;s submitted. We store idempotency keys for only 24 hours. Any &#x60;Idempotency-Key&#x60; shorter than 10 characters will be ignored | [optional] 

### Return type

void (empty response body)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getInvite**
```objc
-(NSURLSessionTask*) getInviteWithInviteId: (NSString*) inviteId
    include: (NSString*) include
        completionHandler: (void (^)(TGInviteDetail* output, NSError* error)) handler;
```

Get an Invite

Gets the details of a single instance of a `Invite`.

### Example 
```objc
TGDefaultConfiguration *apiConfig = [TGDefaultConfiguration sharedConfig];


NSString* inviteId = @"inviteId_example"; // 
NSString* include = @"include_example"; // A list of comma-separated related models to include (optional)

TGInvitesApi*apiInstance = [[TGInvitesApi alloc] init];

// Get an Invite
[apiInstance getInviteWithInviteId:inviteId
              include:include
          completionHandler: ^(TGInviteDetail* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TGInvitesApi->getInvite: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inviteId** | **NSString***|  | 
 **include** | **NSString***| A list of comma-separated related models to include | [optional] 

### Return type

[**TGInviteDetail***](TGInviteDetail.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getInvites**
```objc
-(NSURLSessionTask*) getInvitesWithLimit: (NSNumber*) limit
    offset: (NSNumber*) offset
    query: (NSString*) query
    withColours: (NSString*) withColours
    locationIds: (NSString*) locationIds
    sortBy: (NSString*) sortBy
    startsBefore: (NSDate*) startsBefore
    startsAfter: (NSDate*) startsAfter
    include: (NSString*) include
    isApproved: (NSNumber*) isApproved
    activeAfter: (NSDate*) activeAfter
    activeBefore: (NSDate*) activeBefore
        completionHandler: (void (^)(TGPaginatedInvitesList* output, NSError* error)) handler;
```

List all Invites

Gets a list of all `Invite` entities.

### Example 
```objc
TGDefaultConfiguration *apiConfig = [TGDefaultConfiguration sharedConfig];


NSNumber* limit = @56; // Limits the results to a specified number, defaults to 50 (optional)
NSNumber* offset = @56; // Offsets the results to a specified number, defaults to 0 (optional)
NSString* query = @"query_example"; // Filters by `first_name`, `last_name`, `company`, and `email` (optional)
NSString* withColours = @"withColours_example"; // A comma separated list of case-insensitive colour values. i.e., `red`, `green`, `yellow`, and `orange` (optional)
NSString* locationIds = @"locationIds_example"; // A comma separated list of Location IDs (optional)
NSString* sortBy = @"sortBy_example"; // Sorts by the field name and direction provided where the pattern is `FIELD_NAME_DIRECTION` (optional)
NSDate* startsBefore = @"2013-10-20T19:20:30+01:00"; // Filters results to all those *before* the provided datetime (optional)
NSDate* startsAfter = @"2013-10-20T19:20:30+01:00"; // Filters results to all those *after* the provided datetime (optional)
NSString* include = @"include_example"; // A list of comma-separated related models to include (optional)
NSNumber* isApproved = @56; // True to return approved and auto approved invites, False to return pending and rejected invites (optional)
NSDate* activeAfter = @"2013-10-20T19:20:30+01:00"; // Checks that an invite hasn't yet started, or has started and is still active after a specified time (optional)
NSDate* activeBefore = @"2013-10-20T19:20:30+01:00"; // Checks that an invite hasn't ended before a specified time (optional)

TGInvitesApi*apiInstance = [[TGInvitesApi alloc] init];

// List all Invites
[apiInstance getInvitesWithLimit:limit
              offset:offset
              query:query
              withColours:withColours
              locationIds:locationIds
              sortBy:sortBy
              startsBefore:startsBefore
              startsAfter:startsAfter
              include:include
              isApproved:isApproved
              activeAfter:activeAfter
              activeBefore:activeBefore
          completionHandler: ^(TGPaginatedInvitesList* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TGInvitesApi->getInvites: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **NSNumber***| Limits the results to a specified number, defaults to 50 | [optional] 
 **offset** | **NSNumber***| Offsets the results to a specified number, defaults to 0 | [optional] 
 **query** | **NSString***| Filters by &#x60;first_name&#x60;, &#x60;last_name&#x60;, &#x60;company&#x60;, and &#x60;email&#x60; | [optional] 
 **withColours** | **NSString***| A comma separated list of case-insensitive colour values. i.e., &#x60;red&#x60;, &#x60;green&#x60;, &#x60;yellow&#x60;, and &#x60;orange&#x60; | [optional] 
 **locationIds** | **NSString***| A comma separated list of Location IDs | [optional] 
 **sortBy** | **NSString***| Sorts by the field name and direction provided where the pattern is &#x60;FIELD_NAME_DIRECTION&#x60; | [optional] 
 **startsBefore** | **NSDate***| Filters results to all those *before* the provided datetime | [optional] 
 **startsAfter** | **NSDate***| Filters results to all those *after* the provided datetime | [optional] 
 **include** | **NSString***| A list of comma-separated related models to include | [optional] 
 **isApproved** | **NSNumber***| True to return approved and auto approved invites, False to return pending and rejected invites | [optional] 
 **activeAfter** | **NSDate***| Checks that an invite hasn&#39;t yet started, or has started and is still active after a specified time | [optional] 
 **activeBefore** | **NSDate***| Checks that an invite hasn&#39;t ended before a specified time | [optional] 

### Return type

[**TGPaginatedInvitesList***](TGPaginatedInvitesList.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateInvite**
```objc
-(NSURLSessionTask*) updateInviteWithInviteId: (NSString*) inviteId
    inviteUpdateParams: (TGInviteUpdateParams*) inviteUpdateParams
    idempotencyKey: (NSString*) idempotencyKey
        completionHandler: (void (^)(TGInviteDetail* output, NSError* error)) handler;
```

Update an Invite

Updates an existing `Invite`.

### Example 
```objc
TGDefaultConfiguration *apiConfig = [TGDefaultConfiguration sharedConfig];


NSString* inviteId = @"inviteId_example"; // 
TGInviteUpdateParams* inviteUpdateParams = {"checked_in":true,"on_premise":true,"sent_email":"some text","user_id":45,"device_configuration_id":14}; // Updated `Invite` information.
NSString* idempotencyKey = @"idempotencyKey_example"; // An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored (optional)

TGInvitesApi*apiInstance = [[TGInvitesApi alloc] init];

// Update an Invite
[apiInstance updateInviteWithInviteId:inviteId
              inviteUpdateParams:inviteUpdateParams
              idempotencyKey:idempotencyKey
          completionHandler: ^(TGInviteDetail* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TGInvitesApi->updateInvite: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inviteId** | **NSString***|  | 
 **inviteUpdateParams** | [**TGInviteUpdateParams***](TGInviteUpdateParams.md)| Updated &#x60;Invite&#x60; information. | 
 **idempotencyKey** | **NSString***| An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it&#39;s submitted. We store idempotency keys for only 24 hours. Any &#x60;Idempotency-Key&#x60; shorter than 10 characters will be ignored | [optional] 

### Return type

[**TGInviteDetail***](TGInviteDetail.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


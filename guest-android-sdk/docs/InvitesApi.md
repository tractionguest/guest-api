# InvitesApi

All URIs are relative to *https://tractionguest.ca/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createLocationInvite**](InvitesApi.md#createLocationInvite) | **POST** /locations/{location_id}/invites | Create an Invite
[**deleteInvite**](InvitesApi.md#deleteInvite) | **DELETE** /invites/{invite_id} | Deletes an Invite
[**getInvite**](InvitesApi.md#getInvite) | **GET** /invites/{invite_id} | Get an Invite
[**getInvites**](InvitesApi.md#getInvites) | **GET** /invites | List all Invites
[**updateInvite**](InvitesApi.md#updateInvite) | **PUT** /invites/{invite_id} | Update an Invite



## createLocationInvite

> InviteDetail createLocationInvite(locationId, inviteCreateParams, idempotencyKey)

Create an Invite

Creates a new &#x60;Invite&#x60; for a specific &#x60;Location&#x60;.

### Example

```java
// Import classes:
//import GuestSDK.InvitesApi;

InvitesApi apiInstance = new InvitesApi();
String locationId = null; // String | 
InviteCreateParams inviteCreateParams = {"company":"some text","email":"some text","end_date":"2018-02-10T09:30Z","last_name":"some text","start_date":"2018-02-10T09:30Z","title":"some text","watchlist_colour":{},"host_ids":[96,2],"custom_fields":[{"format":{},"field_name":"some text","field_value":"some text"},{"format":{},"field_name":"some text","field_value":"some text"}],"email_template_id":53,"mobile_number":"some text","first_name":"some text","notification_triggers":[{"offset_direction":{},"offset_type":{},"offset_amount":34,"offset_origin":{},"email_template_id":63,"notification_groups":["some text","some text"]},{"offset_direction":{},"offset_type":{},"offset_amount":12,"offset_origin":{},"email_template_id":2,"notification_groups":["some text","some text"]}]}; // InviteCreateParams | 
String idempotencyKey = null; // String | An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored
try {
    InviteDetail result = apiInstance.createLocationInvite(locationId, inviteCreateParams, idempotencyKey);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling InvitesApi#createLocationInvite");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **locationId** | **String**|  | [default to null]
 **inviteCreateParams** | [**InviteCreateParams**](InviteCreateParams.md)|  |
 **idempotencyKey** | **String**| An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it&#39;s submitted. We store idempotency keys for only 24 hours. Any &#x60;Idempotency-Key&#x60; shorter than 10 characters will be ignored | [optional] [default to null]

### Return type

[**InviteDetail**](InviteDetail.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## deleteInvite

> deleteInvite(inviteId, idempotencyKey)

Deletes an Invite

Deletes a single instance of &#x60;Invite&#x60;

### Example

```java
// Import classes:
//import GuestSDK.InvitesApi;

InvitesApi apiInstance = new InvitesApi();
String inviteId = null; // String | 
String idempotencyKey = null; // String | An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored
try {
    apiInstance.deleteInvite(inviteId, idempotencyKey);
} catch (ApiException e) {
    System.err.println("Exception when calling InvitesApi#deleteInvite");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inviteId** | **String**|  | [default to null]
 **idempotencyKey** | **String**| An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it&#39;s submitted. We store idempotency keys for only 24 hours. Any &#x60;Idempotency-Key&#x60; shorter than 10 characters will be ignored | [optional] [default to null]

### Return type

null (empty response body)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getInvite

> InviteDetail getInvite(inviteId, include)

Get an Invite

Gets the details of a single instance of a &#x60;Invite&#x60;.

### Example

```java
// Import classes:
//import GuestSDK.InvitesApi;

InvitesApi apiInstance = new InvitesApi();
String inviteId = null; // String | 
String include = null; // String | A list of comma-separated related models to include
try {
    InviteDetail result = apiInstance.getInvite(inviteId, include);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling InvitesApi#getInvite");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inviteId** | **String**|  | [default to null]
 **include** | **String**| A list of comma-separated related models to include | [optional] [default to null]

### Return type

[**InviteDetail**](InviteDetail.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getInvites

> PaginatedInvitesList getInvites(limit, offset, query, withColours, locationIds, sortBy, startsBefore, startsAfter, include, isApproved, activeAfter, activeBefore)

List all Invites

Gets a list of all &#x60;Invite&#x60; entities.

### Example

```java
// Import classes:
//import GuestSDK.InvitesApi;

InvitesApi apiInstance = new InvitesApi();
Integer limit = null; // Integer | Limits the results to a specified number, defaults to 50
Integer offset = null; // Integer | Offsets the results to a specified number, defaults to 0
String query = null; // String | Filters by `first_name`, `last_name`, `company`, and `email`
String withColours = null; // String | A comma separated list of case-insensitive colour values. i.e., `red`, `green`, `yellow`, and `orange`
String locationIds = null; // String | A comma separated list of Location IDs
String sortBy = null; // String | Sorts by the field name and direction provided where the pattern is `FIELD_NAME_DIRECTION`
Date startsBefore = null; // Date | Filters results to all those *before* the provided datetime
Date startsAfter = null; // Date | Filters results to all those *after* the provided datetime
String include = null; // String | A list of comma-separated related models to include
Boolean isApproved = null; // Boolean | True to return approved and auto approved invites, False to return pending and rejected invites
Date activeAfter = null; // Date | Checks that an invite hasn't yet started, or has started and is still active after a specified time
Date activeBefore = null; // Date | Checks that an invite hasn't ended before a specified time
try {
    PaginatedInvitesList result = apiInstance.getInvites(limit, offset, query, withColours, locationIds, sortBy, startsBefore, startsAfter, include, isApproved, activeAfter, activeBefore);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling InvitesApi#getInvites");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Integer**| Limits the results to a specified number, defaults to 50 | [optional] [default to null]
 **offset** | **Integer**| Offsets the results to a specified number, defaults to 0 | [optional] [default to null]
 **query** | **String**| Filters by &#x60;first_name&#x60;, &#x60;last_name&#x60;, &#x60;company&#x60;, and &#x60;email&#x60; | [optional] [default to null]
 **withColours** | **String**| A comma separated list of case-insensitive colour values. i.e., &#x60;red&#x60;, &#x60;green&#x60;, &#x60;yellow&#x60;, and &#x60;orange&#x60; | [optional] [default to null]
 **locationIds** | **String**| A comma separated list of Location IDs | [optional] [default to null]
 **sortBy** | **String**| Sorts by the field name and direction provided where the pattern is &#x60;FIELD_NAME_DIRECTION&#x60; | [optional] [default to null] [enum: start_date_asc, start_date_desc, end_date_asc, end_date_desc, created_at_asc, created_at_desc, updated_at_asc, updated_at_desc]
 **startsBefore** | **Date**| Filters results to all those *before* the provided datetime | [optional] [default to null]
 **startsAfter** | **Date**| Filters results to all those *after* the provided datetime | [optional] [default to null]
 **include** | **String**| A list of comma-separated related models to include | [optional] [default to null]
 **isApproved** | **Boolean**| True to return approved and auto approved invites, False to return pending and rejected invites | [optional] [default to null]
 **activeAfter** | **Date**| Checks that an invite hasn&#39;t yet started, or has started and is still active after a specified time | [optional] [default to null]
 **activeBefore** | **Date**| Checks that an invite hasn&#39;t ended before a specified time | [optional] [default to null]

### Return type

[**PaginatedInvitesList**](PaginatedInvitesList.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## updateInvite

> InviteDetail updateInvite(inviteId, inviteUpdateParams, idempotencyKey)

Update an Invite

Updates an existing &#x60;Invite&#x60;.

### Example

```java
// Import classes:
//import GuestSDK.InvitesApi;

InvitesApi apiInstance = new InvitesApi();
String inviteId = null; // String | 
InviteUpdateParams inviteUpdateParams = {"checked_in":true,"on_premise":true,"sent_email":"some text","user_id":45,"device_configuration_id":14}; // InviteUpdateParams | Updated `Invite` information.
String idempotencyKey = null; // String | An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored
try {
    InviteDetail result = apiInstance.updateInvite(inviteId, inviteUpdateParams, idempotencyKey);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling InvitesApi#updateInvite");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inviteId** | **String**|  | [default to null]
 **inviteUpdateParams** | [**InviteUpdateParams**](InviteUpdateParams.md)| Updated &#x60;Invite&#x60; information. |
 **idempotencyKey** | **String**| An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it&#39;s submitted. We store idempotency keys for only 24 hours. Any &#x60;Idempotency-Key&#x60; shorter than 10 characters will be ignored | [optional] [default to null]

### Return type

[**InviteDetail**](InviteDetail.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


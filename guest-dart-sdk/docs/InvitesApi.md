# guest_sdk.api.InvitesApi

## Load the API package
```dart
import 'package:guest_sdk/api.dart';
```

All URIs are relative to *https://tractionguest.ca/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createLocationInvite**](InvitesApi.md#createLocationInvite) | **POST** /locations/{location_id}/invites | Create an Invite
[**createRegistrationInvite**](InvitesApi.md#createRegistrationInvite) | **POST** /registrations/{registration_id}/invites | Create an Invite from a Registration
[**deleteInvite**](InvitesApi.md#deleteInvite) | **DELETE** /invites/{invite_id} | Deletes an Invite
[**getInvite**](InvitesApi.md#getInvite) | **GET** /invites/{invite_id} | Get an Invite
[**getInvites**](InvitesApi.md#getInvites) | **GET** /invites | List all Invites
[**updateInvite**](InvitesApi.md#updateInvite) | **PUT** /invites/{invite_id} | Update an Invite


# **createLocationInvite**
> InviteDetail createLocationInvite(locationId, inviteCreateParams, idempotencyKey)

Create an Invite

Creates a new `Invite` for a specific `Location`.

### Example 
```dart
import 'package:guest_sdk/api.dart';

var api_instance = new InvitesApi();
var locationId = locationId_example; // String | 
var inviteCreateParams = new InviteCreateParams(); // InviteCreateParams | 
var idempotencyKey = idempotencyKey_example; // String | An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored

try { 
    var result = api_instance.createLocationInvite(locationId, inviteCreateParams, idempotencyKey);
    print(result);
} catch (e) {
    print("Exception when calling InvitesApi->createLocationInvite: $e\n");
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createRegistrationInvite**
> InviteDetail createRegistrationInvite(registrationId, idempotencyKey)

Create an Invite from a Registration

Creates a new `Invite` from `Registration` data.

### Example 
```dart
import 'package:guest_sdk/api.dart';

var api_instance = new InvitesApi();
var registrationId = registrationId_example; // String | 
var idempotencyKey = idempotencyKey_example; // String | An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored

try { 
    var result = api_instance.createRegistrationInvite(registrationId, idempotencyKey);
    print(result);
} catch (e) {
    print("Exception when calling InvitesApi->createRegistrationInvite: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **registrationId** | **String**|  | [default to null]
 **idempotencyKey** | **String**| An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it&#39;s submitted. We store idempotency keys for only 24 hours. Any &#x60;Idempotency-Key&#x60; shorter than 10 characters will be ignored | [optional] [default to null]

### Return type

[**InviteDetail**](InviteDetail.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteInvite**
> deleteInvite(inviteId, idempotencyKey)

Deletes an Invite

Deletes a single instance of `Invite`

### Example 
```dart
import 'package:guest_sdk/api.dart';

var api_instance = new InvitesApi();
var inviteId = inviteId_example; // String | 
var idempotencyKey = idempotencyKey_example; // String | An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored

try { 
    api_instance.deleteInvite(inviteId, idempotencyKey);
} catch (e) {
    print("Exception when calling InvitesApi->deleteInvite: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inviteId** | **String**|  | [default to null]
 **idempotencyKey** | **String**| An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it&#39;s submitted. We store idempotency keys for only 24 hours. Any &#x60;Idempotency-Key&#x60; shorter than 10 characters will be ignored | [optional] [default to null]

### Return type

void (empty response body)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getInvite**
> InviteDetail getInvite(inviteId, include)

Get an Invite

Gets the details of a single instance of a `Invite`.

### Example 
```dart
import 'package:guest_sdk/api.dart';

var api_instance = new InvitesApi();
var inviteId = inviteId_example; // String | 
var include = include_example; // String | A list of comma-separated related models to include

try { 
    var result = api_instance.getInvite(inviteId, include);
    print(result);
} catch (e) {
    print("Exception when calling InvitesApi->getInvite: $e\n");
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getInvites**
> PaginatedInvitesList getInvites(limit, offset, query, withColours, locationIds, sortBy, startsBefore, startsAfter, include, isApproved, activeAfter, activeBefore)

List all Invites

Gets a list of all `Invite` entities.

### Example 
```dart
import 'package:guest_sdk/api.dart';

var api_instance = new InvitesApi();
var limit = 56; // int | Limits the results to a specified number, defaults to 50
var offset = 56; // int | Offsets the results to a specified number, defaults to 0
var query = query_example; // String | Filters by `first_name`, `last_name`, `company`, and `email`
var withColours = withColours_example; // String | A comma separated list of case-insensitive colour values. i.e., `red`, `green`, `yellow`, and `orange`
var locationIds = locationIds_example; // String | A comma separated list of Location IDs
var sortBy = sortBy_example; // String | Sorts by the field name and direction provided where the pattern is `FIELD_NAME_DIRECTION`
var startsBefore = 2013-10-20; // DateTime | Filters results to all those *before* the provided datetime
var startsAfter = 2013-10-20; // DateTime | Filters results to all those *after* the provided datetime
var include = include_example; // String | A list of comma-separated related models to include
var isApproved = true; // bool | True to return approved and auto approved invites, False to return pending and rejected invites
var activeAfter = 2013-10-20T19:20:30+01:00; // DateTime | Checks that an invite hasn't yet started, or has started and is still active after a specified time
var activeBefore = 2013-10-20T19:20:30+01:00; // DateTime | Checks that an invite hasn't ended before a specified time

try { 
    var result = api_instance.getInvites(limit, offset, query, withColours, locationIds, sortBy, startsBefore, startsAfter, include, isApproved, activeAfter, activeBefore);
    print(result);
} catch (e) {
    print("Exception when calling InvitesApi->getInvites: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**| Limits the results to a specified number, defaults to 50 | [optional] [default to null]
 **offset** | **int**| Offsets the results to a specified number, defaults to 0 | [optional] [default to null]
 **query** | **String**| Filters by &#x60;first_name&#x60;, &#x60;last_name&#x60;, &#x60;company&#x60;, and &#x60;email&#x60; | [optional] [default to null]
 **withColours** | **String**| A comma separated list of case-insensitive colour values. i.e., &#x60;red&#x60;, &#x60;green&#x60;, &#x60;yellow&#x60;, and &#x60;orange&#x60; | [optional] [default to null]
 **locationIds** | **String**| A comma separated list of Location IDs | [optional] [default to null]
 **sortBy** | **String**| Sorts by the field name and direction provided where the pattern is &#x60;FIELD_NAME_DIRECTION&#x60; | [optional] [default to null]
 **startsBefore** | **DateTime**| Filters results to all those *before* the provided datetime | [optional] [default to null]
 **startsAfter** | **DateTime**| Filters results to all those *after* the provided datetime | [optional] [default to null]
 **include** | **String**| A list of comma-separated related models to include | [optional] [default to null]
 **isApproved** | **bool**| True to return approved and auto approved invites, False to return pending and rejected invites | [optional] [default to null]
 **activeAfter** | **DateTime**| Checks that an invite hasn&#39;t yet started, or has started and is still active after a specified time | [optional] [default to null]
 **activeBefore** | **DateTime**| Checks that an invite hasn&#39;t ended before a specified time | [optional] [default to null]

### Return type

[**PaginatedInvitesList**](PaginatedInvitesList.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateInvite**
> InviteDetail updateInvite(inviteId, inviteUpdateParams, idempotencyKey)

Update an Invite

Updates an existing `Invite`.

### Example 
```dart
import 'package:guest_sdk/api.dart';

var api_instance = new InvitesApi();
var inviteId = inviteId_example; // String | 
var inviteUpdateParams = new InviteUpdateParams(); // InviteUpdateParams | Updated `Invite` information.
var idempotencyKey = idempotencyKey_example; // String | An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored

try { 
    var result = api_instance.updateInvite(inviteId, inviteUpdateParams, idempotencyKey);
    print(result);
} catch (e) {
    print("Exception when calling InvitesApi->updateInvite: $e\n");
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


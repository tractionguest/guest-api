# guest_sdk.api.InvitesApi

## Load the API package
```dart
import 'package:guest_sdk/api.dart';
```

All URIs are relative to *https://mobile-api-refactor-admin.tractionguest.ca/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createLocationInvite**](InvitesApi.md#createLocationInvite) | **POST** /locations/{locationId}/invites | Creates an Invite
[**deleteInvite**](InvitesApi.md#deleteInvite) | **DELETE** /invites/{inviteId} | Deletes an Invite
[**getInvite**](InvitesApi.md#getInvite) | **GET** /invites/{inviteId} | Get a Invite
[**getInvites**](InvitesApi.md#getInvites) | **GET** /invites | List All Invites
[**updateInvite**](InvitesApi.md#updateInvite) | **PUT** /invites/{inviteId} | Update a Invite


# **createLocationInvite**
> InviteDetail createLocationInvite(locationId, inviteCreateParams)

Creates an Invite

Creates a new `Invite` for a specific `Location`.

### Example 
```dart
import 'package:guest_sdk/api.dart';

var api_instance = new InvitesApi();
var locationId = 56; // int | A unique identifier for a `Location`.
var inviteCreateParams = new InviteCreateParams(); // InviteCreateParams | 

try { 
    var result = api_instance.createLocationInvite(locationId, inviteCreateParams);
    print(result);
} catch (e) {
    print("Exception when calling InvitesApi->createLocationInvite: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **locationId** | **int**| A unique identifier for a &#x60;Location&#x60;. | [default to null]
 **inviteCreateParams** | [**InviteCreateParams**](InviteCreateParams.md)|  | 

### Return type

[**InviteDetail**](InviteDetail.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteInvite**
> deleteInvite(inviteId)

Deletes an Invite

Deletes a single instance of `Invite`

### Example 
```dart
import 'package:guest_sdk/api.dart';

var api_instance = new InvitesApi();
var inviteId = inviteId_example; // String | A unique identifier for a `Invite`.

try { 
    api_instance.deleteInvite(inviteId);
} catch (e) {
    print("Exception when calling InvitesApi->deleteInvite: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inviteId** | **String**| A unique identifier for a &#x60;Invite&#x60;. | [default to null]

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

Get a Invite

Gets the details of a single instance of a `Invite`.

### Example 
```dart
import 'package:guest_sdk/api.dart';

var api_instance = new InvitesApi();
var inviteId = inviteId_example; // String | A unique identifier for a `Invite`.
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
 **inviteId** | **String**| A unique identifier for a &#x60;Invite&#x60;. | [default to null]
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
> PaginatedInvitesList getInvites(limit, offset, query, withColours, locationIds, sortBy, startsBefore, startsAfter, include, isApproved)

List All Invites

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

try { 
    var result = api_instance.getInvites(limit, offset, query, withColours, locationIds, sortBy, startsBefore, startsAfter, include, isApproved);
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

### Return type

[**PaginatedInvitesList**](PaginatedInvitesList.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateInvite**
> InviteDetail updateInvite(inviteId, inviteUpdateParams)

Update a Invite

Updates an existing `Invite`.

### Example 
```dart
import 'package:guest_sdk/api.dart';

var api_instance = new InvitesApi();
var inviteId = inviteId_example; // String | A unique identifier for a `Invite`.
var inviteUpdateParams = new InviteUpdateParams(); // InviteUpdateParams | Updated `Invite` information.

try { 
    var result = api_instance.updateInvite(inviteId, inviteUpdateParams);
    print(result);
} catch (e) {
    print("Exception when calling InvitesApi->updateInvite: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inviteId** | **String**| A unique identifier for a &#x60;Invite&#x60;. | [default to null]
 **inviteUpdateParams** | [**InviteUpdateParams**](InviteUpdateParams.md)| Updated &#x60;Invite&#x60; information. | 

### Return type

[**InviteDetail**](InviteDetail.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


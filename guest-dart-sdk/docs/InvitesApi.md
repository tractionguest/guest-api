# guest_sdk.api.InvitesApi

## Load the API package
```dart
import 'package:guest_sdk/api.dart';
```

All URIs are relative to *https://dravaqa.tractionguest.ca/api/mobile/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createLocationInvite**](InvitesApi.md#createLocationInvite) | **POST** /locations/{locationId}/invites | Creates an Invite
[**getInvite**](InvitesApi.md#getInvite) | **GET** /invites/{inviteId} | Get a Invite
[**getInvites**](InvitesApi.md#getInvites) | **GET** /invites | List All Invites
[**updateInvite**](InvitesApi.md#updateInvite) | **PUT** /invites/{inviteId} | Update a Invite


# **createLocationInvite**
> Invite createLocationInvite(locationId, invite)

Creates an Invite

Creates a new `Invite` for a specific `Location`.

### Example 
```dart
import 'package:guest_sdk/api.dart';
// TODO Configure HTTP basic authorization: ApiCredentials
//defaultApiClient.getAuthentication<HttpBasicAuth>('ApiCredentials').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('ApiCredentials').password = 'YOUR_PASSWORD';

var api_instance = new InvitesApi();
var locationId = locationId_example; // String | A unique identifier for a `Location`.
var invite = new Invite(); // Invite | 

try { 
    var result = api_instance.createLocationInvite(locationId, invite);
    print(result);
} catch (e) {
    print("Exception when calling InvitesApi->createLocationInvite: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **locationId** | **String**| A unique identifier for a &#x60;Location&#x60;. | [default to null]
 **invite** | [**Invite**](Invite.md)|  | 

### Return type

[**Invite**](Invite.md)

### Authorization

[ApiCredentials](../README.md#ApiCredentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getInvite**
> InviteDetail getInvite(inviteId)

Get a Invite

Gets the details of a single instance of a `Invite`.

### Example 
```dart
import 'package:guest_sdk/api.dart';
// TODO Configure HTTP basic authorization: ApiCredentials
//defaultApiClient.getAuthentication<HttpBasicAuth>('ApiCredentials').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('ApiCredentials').password = 'YOUR_PASSWORD';

var api_instance = new InvitesApi();
var inviteId = inviteId_example; // String | A unique identifier for a `Invite`.

try { 
    var result = api_instance.getInvite(inviteId);
    print(result);
} catch (e) {
    print("Exception when calling InvitesApi->getInvite: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inviteId** | **String**| A unique identifier for a &#x60;Invite&#x60;. | [default to null]

### Return type

[**InviteDetail**](InviteDetail.md)

### Authorization

[ApiCredentials](../README.md#ApiCredentials)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getInvites**
> PaginatedInvitesList getInvites()

List All Invites

Gets a list of all `Invite` entities.

### Example 
```dart
import 'package:guest_sdk/api.dart';
// TODO Configure HTTP basic authorization: ApiCredentials
//defaultApiClient.getAuthentication<HttpBasicAuth>('ApiCredentials').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('ApiCredentials').password = 'YOUR_PASSWORD';

var api_instance = new InvitesApi();

try { 
    var result = api_instance.getInvites();
    print(result);
} catch (e) {
    print("Exception when calling InvitesApi->getInvites: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**PaginatedInvitesList**](PaginatedInvitesList.md)

### Authorization

[ApiCredentials](../README.md#ApiCredentials)

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
// TODO Configure HTTP basic authorization: ApiCredentials
//defaultApiClient.getAuthentication<HttpBasicAuth>('ApiCredentials').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('ApiCredentials').password = 'YOUR_PASSWORD';

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

[ApiCredentials](../README.md#ApiCredentials)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


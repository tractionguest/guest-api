# guest_sdk.api.SigninsApi

## Load the API package
```dart
import 'package:guest_sdk/api.dart';
```

All URIs are relative to *https://mobile-api-refactor-admin.tractionguest.ca/api/mobile/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createSignin**](SigninsApi.md#createSignin) | **POST** /signins | Create a Signin
[**getSignin**](SigninsApi.md#getSignin) | **GET** /signins/{signinId} | Get a Signin
[**getSignins**](SigninsApi.md#getSignins) | **GET** /signins | List All Signins
[**updateSignin**](SigninsApi.md#updateSignin) | **PUT** /signins/{signinId} | Update a Signin attribute


# **createSignin**
> Signin createSignin(signinCreateParams)

Create a Signin

Creates a new instance of a `Signin`.

### Example 
```dart
import 'package:guest_sdk/api.dart';
// TODO Configure HTTP basic authorization: ApiCredentials
//defaultApiClient.getAuthentication<HttpBasicAuth>('ApiCredentials').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('ApiCredentials').password = 'YOUR_PASSWORD';
// TODO Configure OAuth2 access token for authorization: TractionGuestAuth
//defaultApiClient.getAuthentication<OAuth>('TractionGuestAuth').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new SigninsApi();
var signinCreateParams = new SigninCreateParams(); // SigninCreateParams | A new `Signin` to be created.

try { 
    var result = api_instance.createSignin(signinCreateParams);
    print(result);
} catch (e) {
    print("Exception when calling SigninsApi->createSignin: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **signinCreateParams** | [**SigninCreateParams**](SigninCreateParams.md)| A new &#x60;Signin&#x60; to be created. | 

### Return type

[**Signin**](Signin.md)

### Authorization

[ApiCredentials](../README.md#ApiCredentials), [TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSignin**
> SigninDetail getSignin(signinId)

Get a Signin

Gets the details of a single instance of a `Signin`.

### Example 
```dart
import 'package:guest_sdk/api.dart';
// TODO Configure HTTP basic authorization: ApiCredentials
//defaultApiClient.getAuthentication<HttpBasicAuth>('ApiCredentials').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('ApiCredentials').password = 'YOUR_PASSWORD';
// TODO Configure OAuth2 access token for authorization: TractionGuestAuth
//defaultApiClient.getAuthentication<OAuth>('TractionGuestAuth').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new SigninsApi();
var signinId = signinId_example; // String | A unique identifier for a `Signin`.

try { 
    var result = api_instance.getSignin(signinId);
    print(result);
} catch (e) {
    print("Exception when calling SigninsApi->getSignin: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **signinId** | **String**| A unique identifier for a &#x60;Signin&#x60;. | [default to null]

### Return type

[**SigninDetail**](SigninDetail.md)

### Authorization

[ApiCredentials](../README.md#ApiCredentials), [TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSignins**
> PaginatedSigninsList getSignins(locationIds, withColours, query, withAcknowledged, withSignedIn, signinBefore, signinAfter, limit, offset)

List All Signins

Gets a list of all `Signin` entities.

### Example 
```dart
import 'package:guest_sdk/api.dart';
// TODO Configure HTTP basic authorization: ApiCredentials
//defaultApiClient.getAuthentication<HttpBasicAuth>('ApiCredentials').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('ApiCredentials').password = 'YOUR_PASSWORD';
// TODO Configure OAuth2 access token for authorization: TractionGuestAuth
//defaultApiClient.getAuthentication<OAuth>('TractionGuestAuth').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new SigninsApi();
var locationIds = locationIds_example; // String | A comma separated list of Location IDs
var withColours = withColours_example; // String | A comma separated list of case-insensitive colour values.  i.e., `red`, `green`, `yellow`, and `orange`
var query = query_example; // String | Allows you to query by `company`, `email`, `first_name`, `last_name`, and `location_name`
var withAcknowledged = true; // bool | Filters to all those `Signin`s that have, or have not been acknowledged
var withSignedIn = true; // bool | Filters to all `Signin`s that are, or are not currently signed out.
var signinBefore = 2013-10-20; // DateTime | Filters results to all those *before* the provided datetime
var signinAfter = 2013-10-20; // DateTime | Filters results to all those *after* the provided datetime
var limit = 56; // int | Limits the results to a specified number, defaults to 50
var offset = 56; // int | Offsets the results to a specified number, defaults to 0

try { 
    var result = api_instance.getSignins(locationIds, withColours, query, withAcknowledged, withSignedIn, signinBefore, signinAfter, limit, offset);
    print(result);
} catch (e) {
    print("Exception when calling SigninsApi->getSignins: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **locationIds** | **String**| A comma separated list of Location IDs | [optional] [default to null]
 **withColours** | **String**| A comma separated list of case-insensitive colour values.  i.e., &#x60;red&#x60;, &#x60;green&#x60;, &#x60;yellow&#x60;, and &#x60;orange&#x60; | [optional] [default to null]
 **query** | **String**| Allows you to query by &#x60;company&#x60;, &#x60;email&#x60;, &#x60;first_name&#x60;, &#x60;last_name&#x60;, and &#x60;location_name&#x60; | [optional] [default to null]
 **withAcknowledged** | **bool**| Filters to all those &#x60;Signin&#x60;s that have, or have not been acknowledged | [optional] [default to null]
 **withSignedIn** | **bool**| Filters to all &#x60;Signin&#x60;s that are, or are not currently signed out. | [optional] [default to null]
 **signinBefore** | **DateTime**| Filters results to all those *before* the provided datetime | [optional] [default to null]
 **signinAfter** | **DateTime**| Filters results to all those *after* the provided datetime | [optional] [default to null]
 **limit** | **int**| Limits the results to a specified number, defaults to 50 | [optional] [default to null]
 **offset** | **int**| Offsets the results to a specified number, defaults to 0 | [optional] [default to null]

### Return type

[**PaginatedSigninsList**](PaginatedSigninsList.md)

### Authorization

[ApiCredentials](../README.md#ApiCredentials), [TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateSignin**
> SigninDetail updateSignin(signinId, signinUpdateParams)

Update a Signin attribute

Update, acknowledge, or `Signout` a `Signin`

### Example 
```dart
import 'package:guest_sdk/api.dart';
// TODO Configure HTTP basic authorization: ApiCredentials
//defaultApiClient.getAuthentication<HttpBasicAuth>('ApiCredentials').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('ApiCredentials').password = 'YOUR_PASSWORD';
// TODO Configure OAuth2 access token for authorization: TractionGuestAuth
//defaultApiClient.getAuthentication<OAuth>('TractionGuestAuth').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new SigninsApi();
var signinId = signinId_example; // String | A unique identifier for a `Signin`.
var signinUpdateParams = new SigninUpdateParams(); // SigninUpdateParams | The only updatable values for a `Signin` are `badge_number`, `badge_returned`, `is_accounted_for`, `is_signed_out`, and `is_acknowledged`.  `is_signed_out`, and `is_acknowledged` are pseudo attributes where once they are set to true, there's no going back.

try { 
    var result = api_instance.updateSignin(signinId, signinUpdateParams);
    print(result);
} catch (e) {
    print("Exception when calling SigninsApi->updateSignin: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **signinId** | **String**| A unique identifier for a &#x60;Signin&#x60;. | [default to null]
 **signinUpdateParams** | [**SigninUpdateParams**](SigninUpdateParams.md)| The only updatable values for a &#x60;Signin&#x60; are &#x60;badge_number&#x60;, &#x60;badge_returned&#x60;, &#x60;is_accounted_for&#x60;, &#x60;is_signed_out&#x60;, and &#x60;is_acknowledged&#x60;.  &#x60;is_signed_out&#x60;, and &#x60;is_acknowledged&#x60; are pseudo attributes where once they are set to true, there&#39;s no going back. | 

### Return type

[**SigninDetail**](SigninDetail.md)

### Authorization

[ApiCredentials](../README.md#ApiCredentials), [TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


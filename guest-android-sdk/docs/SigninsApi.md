# SigninsApi

All URIs are relative to *https://mobile-api-refactor-admin.tractionguest.ca/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createSignin**](SigninsApi.md#createSignin) | **POST** /signins | Create a Signin
[**getSignin**](SigninsApi.md#getSignin) | **GET** /signins/{signinId} | Get a Signin
[**getSignins**](SigninsApi.md#getSignins) | **GET** /signins | List All Signins
[**updateSignin**](SigninsApi.md#updateSignin) | **PUT** /signins/{signinId} | Update a Signin attribute



## createSignin

> Signin createSignin(signinCreateParams, idempotencyKey)

Create a Signin

Creates a new instance of a &#x60;Signin&#x60;.

### Example

```java
// Import classes:
//import GuestSDK.SigninsApi;

SigninsApi apiInstance = new SigninsApi();
SigninCreateParams signinCreateParams = {"guest_email_template_id":47,"host_email_template_id":65,"host_ids":[77,49],"location_id":79,"send_notifications":true,"photos":[{},{}],"sms_message":"some text","first_name":"some text","last_name":"some text","company":"some text","email":"some text"}; // SigninCreateParams | A new `Signin` to be created.
String idempotencyKey = null; // String | An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored
try {
    Signin result = apiInstance.createSignin(signinCreateParams, idempotencyKey);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling SigninsApi#createSignin");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **signinCreateParams** | [**SigninCreateParams**](SigninCreateParams.md)| A new &#x60;Signin&#x60; to be created. |
 **idempotencyKey** | **String**| An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it&#39;s submitted. We store idempotency keys for only 24 hours. Any &#x60;Idempotency-Key&#x60; shorter than 10 characters will be ignored | [optional] [default to null]

### Return type

[**Signin**](Signin.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## getSignin

> SigninDetail getSignin(signinId, include)

Get a Signin

Gets the details of a single instance of a &#x60;Signin&#x60;.

### Example

```java
// Import classes:
//import GuestSDK.SigninsApi;

SigninsApi apiInstance = new SigninsApi();
String signinId = null; // String | A unique identifier for a `Signin`.
String include = null; // String | A list of comma-separated related models to include
try {
    SigninDetail result = apiInstance.getSignin(signinId, include);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling SigninsApi#getSignin");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **signinId** | **String**| A unique identifier for a &#x60;Signin&#x60;. | [default to null]
 **include** | **String**| A list of comma-separated related models to include | [optional] [default to null]

### Return type

[**SigninDetail**](SigninDetail.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getSignins

> PaginatedSigninsList getSignins(locationIds, withColours, query, withAcknowledged, withSignedIn, signinBefore, signinAfter, limit, offset, querySort, include)

List All Signins

Gets a list of all &#x60;Signin&#x60; entities.

### Example

```java
// Import classes:
//import GuestSDK.SigninsApi;

SigninsApi apiInstance = new SigninsApi();
String locationIds = null; // String | A comma separated list of Location IDs
String withColours = null; // String | A comma separated list of case-insensitive colour values. i.e., `red`, `green`, `yellow`, and `orange`
String query = null; // String | Allows you to query by `company`, `email`, `first_name`, `last_name`, and `location_name`
Boolean withAcknowledged = null; // Boolean | Filters to all those `Signin`s that have, or have not been acknowledged
Boolean withSignedIn = null; // Boolean | Filters to all `Signin`s that are, or are not currently signed out.
Date signinBefore = null; // Date | Filters results to all those *before* the provided datetime
Date signinAfter = null; // Date | Filters results to all those *after* the provided datetime
Integer limit = null; // Integer | Limits the results to a specified number, defaults to 50
Integer offset = null; // Integer | Offsets the results to a specified number, defaults to 0
String querySort = null; // String | Allows you to override ordering by most relevant results when querying
String include = null; // String | A list of comma-separated related models to include
try {
    PaginatedSigninsList result = apiInstance.getSignins(locationIds, withColours, query, withAcknowledged, withSignedIn, signinBefore, signinAfter, limit, offset, querySort, include);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling SigninsApi#getSignins");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **locationIds** | **String**| A comma separated list of Location IDs | [optional] [default to null]
 **withColours** | **String**| A comma separated list of case-insensitive colour values. i.e., &#x60;red&#x60;, &#x60;green&#x60;, &#x60;yellow&#x60;, and &#x60;orange&#x60; | [optional] [default to null]
 **query** | **String**| Allows you to query by &#x60;company&#x60;, &#x60;email&#x60;, &#x60;first_name&#x60;, &#x60;last_name&#x60;, and &#x60;location_name&#x60; | [optional] [default to null]
 **withAcknowledged** | **Boolean**| Filters to all those &#x60;Signin&#x60;s that have, or have not been acknowledged | [optional] [default to null]
 **withSignedIn** | **Boolean**| Filters to all &#x60;Signin&#x60;s that are, or are not currently signed out. | [optional] [default to null]
 **signinBefore** | **Date**| Filters results to all those *before* the provided datetime | [optional] [default to null]
 **signinAfter** | **Date**| Filters results to all those *after* the provided datetime | [optional] [default to null]
 **limit** | **Integer**| Limits the results to a specified number, defaults to 50 | [optional] [default to null]
 **offset** | **Integer**| Offsets the results to a specified number, defaults to 0 | [optional] [default to null]
 **querySort** | **String**| Allows you to override ordering by most relevant results when querying | [optional] [default to null] [enum: signin_timestamp_desc, signin_timestamp_asc]
 **include** | **String**| A list of comma-separated related models to include | [optional] [default to null]

### Return type

[**PaginatedSigninsList**](PaginatedSigninsList.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## updateSignin

> SigninDetail updateSignin(signinId, signinUpdateParams, idempotencyKey)

Update a Signin attribute

Update, acknowledge, or &#x60;Signout&#x60; a &#x60;Signin&#x60;

### Example

```java
// Import classes:
//import GuestSDK.SigninsApi;

SigninsApi apiInstance = new SigninsApi();
String signinId = null; // String | A unique identifier for a `Signin`.
SigninUpdateParams signinUpdateParams = {"is_signed_out":true,"is_acknowledged":true,"is_accounted_for":true}; // SigninUpdateParams | The only updatable values for a `Signin` are `badge_number`, `badge_returned`, `is_accounted_for`, `is_signed_out`, and `is_acknowledged`. `is_signed_out`, and `is_acknowledged` are pseudo attributes where once they are set to true, there's no going back.
String idempotencyKey = null; // String | An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored
try {
    SigninDetail result = apiInstance.updateSignin(signinId, signinUpdateParams, idempotencyKey);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling SigninsApi#updateSignin");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **signinId** | **String**| A unique identifier for a &#x60;Signin&#x60;. | [default to null]
 **signinUpdateParams** | [**SigninUpdateParams**](SigninUpdateParams.md)| The only updatable values for a &#x60;Signin&#x60; are &#x60;badge_number&#x60;, &#x60;badge_returned&#x60;, &#x60;is_accounted_for&#x60;, &#x60;is_signed_out&#x60;, and &#x60;is_acknowledged&#x60;. &#x60;is_signed_out&#x60;, and &#x60;is_acknowledged&#x60; are pseudo attributes where once they are set to true, there&#39;s no going back. |
 **idempotencyKey** | **String**| An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it&#39;s submitted. We store idempotency keys for only 24 hours. Any &#x60;Idempotency-Key&#x60; shorter than 10 characters will be ignored | [optional] [default to null]

### Return type

[**SigninDetail**](SigninDetail.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


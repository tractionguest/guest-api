# SigninsAPI

All URIs are relative to *https://mobile-api-refactor-admin.tractionguest.ca/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createSignin**](SigninsAPI.md#createsignin) | **POST** /signins | Create a Signin
[**getSignin**](SigninsAPI.md#getsignin) | **GET** /signins/{signinId} | Get a Signin
[**getSignins**](SigninsAPI.md#getsignins) | **GET** /signins | List All Signins
[**updateSignin**](SigninsAPI.md#updatesignin) | **PUT** /signins/{signinId} | Update a Signin attribute


# **createSignin**
```swift
    open class func createSignin(signinCreateParams: SigninCreateParams, idempotencyKey: String? = nil, completion: @escaping (_ data: Signin?, _ error: Error?) -> Void)
```

Create a Signin

Creates a new instance of a `Signin`.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import GuestSDK

let signinCreateParams = SigninCreateParams(guestEmailTemplateId: 123, hostEmailTemplateId: 123, hostIds: [123], locationId: 123, sendNotifications: false, smsMessage: "smsMessage_example", firstName: "firstName_example", lastName: "lastName_example", company: "company_example", email: "email_example", registrationId: "registrationId_example") // SigninCreateParams | A new `Signin` to be created.
let idempotencyKey = "idempotencyKey_example" // String | An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored (optional)

// Create a Signin
SigninsAPI.createSignin(signinCreateParams: signinCreateParams, idempotencyKey: idempotencyKey) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **signinCreateParams** | [**SigninCreateParams**](SigninCreateParams.md) | A new &#x60;Signin&#x60; to be created. | 
 **idempotencyKey** | **String** | An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it&#39;s submitted. We store idempotency keys for only 24 hours. Any &#x60;Idempotency-Key&#x60; shorter than 10 characters will be ignored | [optional] 

### Return type

[**Signin**](Signin.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSignin**
```swift
    open class func getSignin(signinId: String, include: String? = nil, completion: @escaping (_ data: SigninDetail?, _ error: Error?) -> Void)
```

Get a Signin

Gets the details of a single instance of a `Signin`.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import GuestSDK

let signinId = "signinId_example" // String | A unique identifier for a `Signin`.
let include = "include_example" // String | A list of comma-separated related models to include (optional)

// Get a Signin
SigninsAPI.getSignin(signinId: signinId, include: include) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **signinId** | **String** | A unique identifier for a &#x60;Signin&#x60;. | 
 **include** | **String** | A list of comma-separated related models to include | [optional] 

### Return type

[**SigninDetail**](SigninDetail.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSignins**
```swift
    open class func getSignins(locationIds: String? = nil, withColours: String? = nil, query: String? = nil, withAcknowledged: Bool? = nil, withSignedIn: Bool? = nil, signinBefore: Date? = nil, signinAfter: Date? = nil, limit: Int? = nil, offset: Int? = nil, querySort: QuerySort_getSignins? = nil, include: String? = nil, completion: @escaping (_ data: PaginatedSigninsList?, _ error: Error?) -> Void)
```

List All Signins

Gets a list of all `Signin` entities.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import GuestSDK

let locationIds = "locationIds_example" // String | A comma separated list of Location IDs (optional)
let withColours = "withColours_example" // String | A comma separated list of case-insensitive colour values. i.e., `red`, `green`, `yellow`, and `orange` (optional)
let query = "query_example" // String | Allows you to query by `company`, `email`, `first_name`, `last_name`, and `location_name` (optional)
let withAcknowledged = true // Bool | Filters to all those `Signin`s that have, or have not been acknowledged (optional)
let withSignedIn = true // Bool | Filters to all `Signin`s that are, or are not currently signed out. (optional)
let signinBefore = Date() // Date | Filters results to all those *before* the provided datetime (optional)
let signinAfter = Date() // Date | Filters results to all those *after* the provided datetime (optional)
let limit = 987 // Int | Limits the results to a specified number, defaults to 50 (optional)
let offset = 987 // Int | Offsets the results to a specified number, defaults to 0 (optional)
let querySort = "querySort_example" // String | Allows you to override ordering by most relevant results when querying (optional)
let include = "include_example" // String | A list of comma-separated related models to include (optional)

// List All Signins
SigninsAPI.getSignins(locationIds: locationIds, withColours: withColours, query: query, withAcknowledged: withAcknowledged, withSignedIn: withSignedIn, signinBefore: signinBefore, signinAfter: signinAfter, limit: limit, offset: offset, querySort: querySort, include: include) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **locationIds** | **String** | A comma separated list of Location IDs | [optional] 
 **withColours** | **String** | A comma separated list of case-insensitive colour values. i.e., &#x60;red&#x60;, &#x60;green&#x60;, &#x60;yellow&#x60;, and &#x60;orange&#x60; | [optional] 
 **query** | **String** | Allows you to query by &#x60;company&#x60;, &#x60;email&#x60;, &#x60;first_name&#x60;, &#x60;last_name&#x60;, and &#x60;location_name&#x60; | [optional] 
 **withAcknowledged** | **Bool** | Filters to all those &#x60;Signin&#x60;s that have, or have not been acknowledged | [optional] 
 **withSignedIn** | **Bool** | Filters to all &#x60;Signin&#x60;s that are, or are not currently signed out. | [optional] 
 **signinBefore** | **Date** | Filters results to all those *before* the provided datetime | [optional] 
 **signinAfter** | **Date** | Filters results to all those *after* the provided datetime | [optional] 
 **limit** | **Int** | Limits the results to a specified number, defaults to 50 | [optional] 
 **offset** | **Int** | Offsets the results to a specified number, defaults to 0 | [optional] 
 **querySort** | **String** | Allows you to override ordering by most relevant results when querying | [optional] 
 **include** | **String** | A list of comma-separated related models to include | [optional] 

### Return type

[**PaginatedSigninsList**](PaginatedSigninsList.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateSignin**
```swift
    open class func updateSignin(signinId: String, signinUpdateParams: SigninUpdateParams, idempotencyKey: String? = nil, completion: @escaping (_ data: SigninDetail?, _ error: Error?) -> Void)
```

Update a Signin attribute

Update, acknowledge, or `Signout` a `Signin`

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import GuestSDK

let signinId = "signinId_example" // String | A unique identifier for a `Signin`.
let signinUpdateParams = SigninUpdateParams(isSignedOut: false, isAcknowledged: false, isAccountedFor: false) // SigninUpdateParams | The only updatable values for a `Signin` are `badge_number`, `badge_returned`, `is_accounted_for`, `is_signed_out`, and `is_acknowledged`. `is_signed_out`, and `is_acknowledged` are pseudo attributes where once they are set to true, there's no going back.
let idempotencyKey = "idempotencyKey_example" // String | An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored (optional)

// Update a Signin attribute
SigninsAPI.updateSignin(signinId: signinId, signinUpdateParams: signinUpdateParams, idempotencyKey: idempotencyKey) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **signinId** | **String** | A unique identifier for a &#x60;Signin&#x60;. | 
 **signinUpdateParams** | [**SigninUpdateParams**](SigninUpdateParams.md) | The only updatable values for a &#x60;Signin&#x60; are &#x60;badge_number&#x60;, &#x60;badge_returned&#x60;, &#x60;is_accounted_for&#x60;, &#x60;is_signed_out&#x60;, and &#x60;is_acknowledged&#x60;. &#x60;is_signed_out&#x60;, and &#x60;is_acknowledged&#x60; are pseudo attributes where once they are set to true, there&#39;s no going back. | 
 **idempotencyKey** | **String** | An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it&#39;s submitted. We store idempotency keys for only 24 hours. Any &#x60;Idempotency-Key&#x60; shorter than 10 characters will be ignored | [optional] 

### Return type

[**SigninDetail**](SigninDetail.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


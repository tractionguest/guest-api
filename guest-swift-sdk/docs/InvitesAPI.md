# InvitesAPI

All URIs are relative to *https://tractionguest.ca/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createLocationInvite**](InvitesAPI.md#createlocationinvite) | **POST** /locations/{location_id}/invites | Creates an Invite
[**deleteInvite**](InvitesAPI.md#deleteinvite) | **DELETE** /invites/{invite_id} | Deletes an Invite
[**getInvite**](InvitesAPI.md#getinvite) | **GET** /invites/{invite_id} | Get a Invite
[**getInvites**](InvitesAPI.md#getinvites) | **GET** /invites | List All Invites
[**updateInvite**](InvitesAPI.md#updateinvite) | **PUT** /invites/{invite_id} | Update a Invite


# **createLocationInvite**
```swift
    open class func createLocationInvite(locationId: String, inviteCreateParams: InviteCreateParams, idempotencyKey: String? = nil, completion: @escaping (_ data: InviteDetail?, _ error: Error?) -> Void)
```

Creates an Invite

Creates a new `Invite` for a specific `Location`.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import GuestSDK

let locationId = "locationId_example" // String | 
let inviteCreateParams = InviteCreateParams(mobileNumber: "mobileNumber_example", notificationTriggers: [NotificationTriggerCreateParams(offsetUnit: "offsetUnit_example", notificationGroups: ["notificationGroups_example"], emailTemplateId: 123, offsetOrigin: "offsetOrigin_example", offsetAmount: 123, offsetDirection: "offsetDirection_example")], firstName: "firstName_example", emailTemplateId: 123, customFields: [CustomField(format: "format_example", fieldName: "fieldName_example", fieldValue: "fieldValue_example")], hostIds: [123], watchlistColour: "watchlistColour_example", title: "title_example", startDate: Date(), lastName: "lastName_example", endDate: Date(), email: "email_example", company: "company_example", groupVisitId: "groupVisitId_example") // InviteCreateParams | 
let idempotencyKey = "idempotencyKey_example" // String | An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored (optional)

// Creates an Invite
InvitesAPI.createLocationInvite(locationId: locationId, inviteCreateParams: inviteCreateParams, idempotencyKey: idempotencyKey) { (response, error) in
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
 **locationId** | **String** |  | 
 **inviteCreateParams** | [**InviteCreateParams**](InviteCreateParams.md) |  | 
 **idempotencyKey** | **String** | An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it&#39;s submitted. We store idempotency keys for only 24 hours. Any &#x60;Idempotency-Key&#x60; shorter than 10 characters will be ignored | [optional] 

### Return type

[**InviteDetail**](InviteDetail.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteInvite**
```swift
    open class func deleteInvite(inviteId: String, idempotencyKey: String? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Deletes an Invite

Deletes a single instance of `Invite`

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import GuestSDK

let inviteId = "inviteId_example" // String | 
let idempotencyKey = "idempotencyKey_example" // String | An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored (optional)

// Deletes an Invite
InvitesAPI.deleteInvite(inviteId: inviteId, idempotencyKey: idempotencyKey) { (response, error) in
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
 **inviteId** | **String** |  | 
 **idempotencyKey** | **String** | An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it&#39;s submitted. We store idempotency keys for only 24 hours. Any &#x60;Idempotency-Key&#x60; shorter than 10 characters will be ignored | [optional] 

### Return type

Void (empty response body)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getInvite**
```swift
    open class func getInvite(inviteId: String, include: String? = nil, completion: @escaping (_ data: InviteDetail?, _ error: Error?) -> Void)
```

Get a Invite

Gets the details of a single instance of a `Invite`.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import GuestSDK

let inviteId = "inviteId_example" // String | 
let include = "include_example" // String | A list of comma-separated related models to include (optional)

// Get a Invite
InvitesAPI.getInvite(inviteId: inviteId, include: include) { (response, error) in
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
 **inviteId** | **String** |  | 
 **include** | **String** | A list of comma-separated related models to include | [optional] 

### Return type

[**InviteDetail**](InviteDetail.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getInvites**
```swift
    open class func getInvites(limit: Int? = nil, offset: Int? = nil, query: String? = nil, withColours: String? = nil, locationIds: String? = nil, sortBy: SortBy_getInvites? = nil, startsBefore: Date? = nil, startsAfter: Date? = nil, include: String? = nil, isApproved: Bool? = nil, activeAfter: Date? = nil, activeBefore: Date? = nil, completion: @escaping (_ data: PaginatedInvitesList?, _ error: Error?) -> Void)
```

List All Invites

Gets a list of all `Invite` entities.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import GuestSDK

let limit = 987 // Int | Limits the results to a specified number, defaults to 50 (optional)
let offset = 987 // Int | Offsets the results to a specified number, defaults to 0 (optional)
let query = "query_example" // String | Filters by `first_name`, `last_name`, `company`, and `email` (optional)
let withColours = "withColours_example" // String | A comma separated list of case-insensitive colour values. i.e., `red`, `green`, `yellow`, and `orange` (optional)
let locationIds = "locationIds_example" // String | A comma separated list of Location IDs (optional)
let sortBy = "sortBy_example" // String | Sorts by the field name and direction provided where the pattern is `FIELD_NAME_DIRECTION` (optional)
let startsBefore = Date() // Date | Filters results to all those *before* the provided datetime (optional)
let startsAfter = Date() // Date | Filters results to all those *after* the provided datetime (optional)
let include = "include_example" // String | A list of comma-separated related models to include (optional)
let isApproved = true // Bool | True to return approved and auto approved invites, False to return pending and rejected invites (optional)
let activeAfter = Date() // Date | Checks that an invite hasn't yet started, or has started and is still active after a specified time (optional)
let activeBefore = Date() // Date | Checks that an invite hasn't ended before a specified time (optional)

// List All Invites
InvitesAPI.getInvites(limit: limit, offset: offset, query: query, withColours: withColours, locationIds: locationIds, sortBy: sortBy, startsBefore: startsBefore, startsAfter: startsAfter, include: include, isApproved: isApproved, activeAfter: activeAfter, activeBefore: activeBefore) { (response, error) in
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
 **limit** | **Int** | Limits the results to a specified number, defaults to 50 | [optional] 
 **offset** | **Int** | Offsets the results to a specified number, defaults to 0 | [optional] 
 **query** | **String** | Filters by &#x60;first_name&#x60;, &#x60;last_name&#x60;, &#x60;company&#x60;, and &#x60;email&#x60; | [optional] 
 **withColours** | **String** | A comma separated list of case-insensitive colour values. i.e., &#x60;red&#x60;, &#x60;green&#x60;, &#x60;yellow&#x60;, and &#x60;orange&#x60; | [optional] 
 **locationIds** | **String** | A comma separated list of Location IDs | [optional] 
 **sortBy** | **String** | Sorts by the field name and direction provided where the pattern is &#x60;FIELD_NAME_DIRECTION&#x60; | [optional] 
 **startsBefore** | **Date** | Filters results to all those *before* the provided datetime | [optional] 
 **startsAfter** | **Date** | Filters results to all those *after* the provided datetime | [optional] 
 **include** | **String** | A list of comma-separated related models to include | [optional] 
 **isApproved** | **Bool** | True to return approved and auto approved invites, False to return pending and rejected invites | [optional] 
 **activeAfter** | **Date** | Checks that an invite hasn&#39;t yet started, or has started and is still active after a specified time | [optional] 
 **activeBefore** | **Date** | Checks that an invite hasn&#39;t ended before a specified time | [optional] 

### Return type

[**PaginatedInvitesList**](PaginatedInvitesList.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateInvite**
```swift
    open class func updateInvite(inviteId: String, inviteUpdateParams: InviteUpdateParams, idempotencyKey: String? = nil, completion: @escaping (_ data: InviteDetail?, _ error: Error?) -> Void)
```

Update a Invite

Updates an existing `Invite`.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import GuestSDK

let inviteId = "inviteId_example" // String | 
let inviteUpdateParams = InviteUpdateParams(mobileNumber: "mobileNumber_example", userId: 123, onPremise: false, notificationTriggers: [NotificationTriggerCreateParams(offsetUnit: "offsetUnit_example", notificationGroups: ["notificationGroups_example"], emailTemplateId: 123, offsetOrigin: "offsetOrigin_example", offsetAmount: 123, offsetDirection: "offsetDirection_example")], firstName: "firstName_example", emailTemplateId: 123, customFields: [CustomField(format: "format_example", fieldName: "fieldName_example", fieldValue: "fieldValue_example")], hostIds: [123], title: "title_example", startDate: Date(), lastName: "lastName_example", endDate: Date(), email: "email_example", company: "company_example") // InviteUpdateParams | Updated `Invite` information.
let idempotencyKey = "idempotencyKey_example" // String | An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored (optional)

// Update a Invite
InvitesAPI.updateInvite(inviteId: inviteId, inviteUpdateParams: inviteUpdateParams, idempotencyKey: idempotencyKey) { (response, error) in
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
 **inviteId** | **String** |  | 
 **inviteUpdateParams** | [**InviteUpdateParams**](InviteUpdateParams.md) | Updated &#x60;Invite&#x60; information. | 
 **idempotencyKey** | **String** | An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it&#39;s submitted. We store idempotency keys for only 24 hours. Any &#x60;Idempotency-Key&#x60; shorter than 10 characters will be ignored | [optional] 

### Return type

[**InviteDetail**](InviteDetail.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


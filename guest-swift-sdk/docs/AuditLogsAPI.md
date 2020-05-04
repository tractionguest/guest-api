# AuditLogsAPI

All URIs are relative to *https://tractionguest.ca/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAuditLog**](AuditLogsAPI.md#getauditlog) | **GET** /audit_logs/{auditLogId} | Get an AuditLog
[**getAuditLogs**](AuditLogsAPI.md#getauditlogs) | **GET** /audit_logs | List All AuditLogs


# **getAuditLog**
```swift
    open class func getAuditLog(auditLogId: String, completion: @escaping (_ data: AuditLog?, _ error: Error?) -> Void)
```

Get an AuditLog

Gets the details of a single instance of an `AuditLog`.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import GuestSDK

let auditLogId = "auditLogId_example" // String | A unique identifier for an `AuditLog`.

// Get an AuditLog
AuditLogsAPI.getAuditLog(auditLogId: auditLogId) { (response, error) in
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
 **auditLogId** | **String** | A unique identifier for an &#x60;AuditLog&#x60;. | 

### Return type

[**AuditLog**](AuditLog.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAuditLogs**
```swift
    open class func getAuditLogs(limit: Int? = nil, offset: Int? = nil, sortBy: String? = nil, auditableId: Int? = nil, auditableType: String? = nil, actionType: String? = nil, userId: Int? = nil, completion: @escaping (_ data: PaginatedAuditLogsList?, _ error: Error?) -> Void)
```

List All AuditLogs

Gets a list of all `AuditLog` entities.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import GuestSDK

let limit = 987 // Int | Limits the results to a specified number, defaults to 50 (optional)
let offset = 987 // Int | Offsets the results to a specified number, defaults to 0 (optional)
let sortBy = "sortBy_example" // String | Sorts by the field name and direction provided where the pattern is `FIELD_NAME_DIRECTION` (optional)
let auditableId = 987 // Int | The unique ID of a model that has associated audit logs (optional)
let auditableType = "auditableType_example" // String | The name of the model that has associated audit logs. Valid values include: - `user` - `device_configuration` - `signin` - `invite` - `watchlist_record` - `account_preference` - `signout` - `host` - `invite_watchlist` - `location_preference` - `parking_lot` - `parking_stall` - `permission_bundle` - `person` - `physical_access_grant` - `physical_access_provider` - `physical_access_rule` - `security_badge_type` - `signin_watchlist` - `user_group_physical_access_rule` - `visitor` - `bulk_data_batch`  (optional)
let actionType = "actionType_example" // String | The action performed by the user. Valid values include: - `create` - `update` - `destroy`  (optional)
let userId = 987 // Int | The ID of the user who performed the database change (optional)

// List All AuditLogs
AuditLogsAPI.getAuditLogs(limit: limit, offset: offset, sortBy: sortBy, auditableId: auditableId, auditableType: auditableType, actionType: actionType, userId: userId) { (response, error) in
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
 **sortBy** | **String** | Sorts by the field name and direction provided where the pattern is &#x60;FIELD_NAME_DIRECTION&#x60; | [optional] 
 **auditableId** | **Int** | The unique ID of a model that has associated audit logs | [optional] 
 **auditableType** | **String** | The name of the model that has associated audit logs. Valid values include: - &#x60;user&#x60; - &#x60;device_configuration&#x60; - &#x60;signin&#x60; - &#x60;invite&#x60; - &#x60;watchlist_record&#x60; - &#x60;account_preference&#x60; - &#x60;signout&#x60; - &#x60;host&#x60; - &#x60;invite_watchlist&#x60; - &#x60;location_preference&#x60; - &#x60;parking_lot&#x60; - &#x60;parking_stall&#x60; - &#x60;permission_bundle&#x60; - &#x60;person&#x60; - &#x60;physical_access_grant&#x60; - &#x60;physical_access_provider&#x60; - &#x60;physical_access_rule&#x60; - &#x60;security_badge_type&#x60; - &#x60;signin_watchlist&#x60; - &#x60;user_group_physical_access_rule&#x60; - &#x60;visitor&#x60; - &#x60;bulk_data_batch&#x60;  | [optional] 
 **actionType** | **String** | The action performed by the user. Valid values include: - &#x60;create&#x60; - &#x60;update&#x60; - &#x60;destroy&#x60;  | [optional] 
 **userId** | **Int** | The ID of the user who performed the database change | [optional] 

### Return type

[**PaginatedAuditLogsList**](PaginatedAuditLogsList.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


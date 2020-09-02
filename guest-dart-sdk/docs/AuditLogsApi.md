# guest_sdk.api.AuditLogsApi

## Load the API package
```dart
import 'package:guest_sdk/api.dart';
```

All URIs are relative to *https://tractionguest.ca/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAuditLog**](AuditLogsApi.md#getAuditLog) | **GET** /audit_logs/{audit_log_id} | Get an AuditLog
[**getAuditLogs**](AuditLogsApi.md#getAuditLogs) | **GET** /audit_logs | List all AuditLogs


# **getAuditLog**
> AuditLog getAuditLog(auditLogId)

Get an AuditLog

Gets the details of a single instance of an `AuditLog`.

### Example 
```dart
import 'package:guest_sdk/api.dart';

var api_instance = new AuditLogsApi();
var auditLogId = auditLogId_example; // String | 

try { 
    var result = api_instance.getAuditLog(auditLogId);
    print(result);
} catch (e) {
    print("Exception when calling AuditLogsApi->getAuditLog: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **auditLogId** | **String**|  | [default to null]

### Return type

[**AuditLog**](AuditLog.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAuditLogs**
> PaginatedAuditLogsList getAuditLogs(limit, offset, sortBy, auditableId, auditableType, actionType, userId)

List all AuditLogs

Gets a list of all `AuditLog` entities.

### Example 
```dart
import 'package:guest_sdk/api.dart';

var api_instance = new AuditLogsApi();
var limit = 56; // int | Limits the results to a specified number, defaults to 50
var offset = 56; // int | Offsets the results to a specified number, defaults to 0
var sortBy = sortBy_example; // String | Sorts by the field name and direction provided where the pattern is `FIELD_NAME_DIRECTION`
var auditableId = 56; // int | The unique ID of a model that has associated audit logs
var auditableType = auditableType_example; // String | The name of the model that has associated audit logs. Valid values include: - `user` - `device_configuration` - `signin` - `invite` - `watchlist_record` - `account_preference` - `signout` - `host` - `invite_watchlist` - `location_preference` - `parking_lot` - `parking_stall` - `permission_bundle` - `person` - `physical_access_grant` - `physical_access_provider` - `physical_access_rule` - `security_badge_type` - `signin_watchlist` - `user_group_physical_access_rule` - `visitor` - `bulk_data_batch` 
var actionType = actionType_example; // String | The action performed by the user. Valid values include: - `create` - `update` - `destroy` 
var userId = 56; // int | The ID of the user who performed the database change

try { 
    var result = api_instance.getAuditLogs(limit, offset, sortBy, auditableId, auditableType, actionType, userId);
    print(result);
} catch (e) {
    print("Exception when calling AuditLogsApi->getAuditLogs: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**| Limits the results to a specified number, defaults to 50 | [optional] [default to null]
 **offset** | **int**| Offsets the results to a specified number, defaults to 0 | [optional] [default to null]
 **sortBy** | **String**| Sorts by the field name and direction provided where the pattern is &#x60;FIELD_NAME_DIRECTION&#x60; | [optional] [default to null]
 **auditableId** | **int**| The unique ID of a model that has associated audit logs | [optional] [default to null]
 **auditableType** | **String**| The name of the model that has associated audit logs. Valid values include: - &#x60;user&#x60; - &#x60;device_configuration&#x60; - &#x60;signin&#x60; - &#x60;invite&#x60; - &#x60;watchlist_record&#x60; - &#x60;account_preference&#x60; - &#x60;signout&#x60; - &#x60;host&#x60; - &#x60;invite_watchlist&#x60; - &#x60;location_preference&#x60; - &#x60;parking_lot&#x60; - &#x60;parking_stall&#x60; - &#x60;permission_bundle&#x60; - &#x60;person&#x60; - &#x60;physical_access_grant&#x60; - &#x60;physical_access_provider&#x60; - &#x60;physical_access_rule&#x60; - &#x60;security_badge_type&#x60; - &#x60;signin_watchlist&#x60; - &#x60;user_group_physical_access_rule&#x60; - &#x60;visitor&#x60; - &#x60;bulk_data_batch&#x60;  | [optional] [default to null]
 **actionType** | **String**| The action performed by the user. Valid values include: - &#x60;create&#x60; - &#x60;update&#x60; - &#x60;destroy&#x60;  | [optional] [default to null]
 **userId** | **int**| The ID of the user who performed the database change | [optional] [default to null]

### Return type

[**PaginatedAuditLogsList**](PaginatedAuditLogsList.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# TGAuditLogsApi

All URIs are relative to *https://tractionguest.ca/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAuditLog**](TGAuditLogsApi.md#getauditlog) | **GET** /audit_logs/{audit_log_id} | Get an AuditLog
[**getAuditLogs**](TGAuditLogsApi.md#getauditlogs) | **GET** /audit_logs | List all AuditLogs


# **getAuditLog**
```objc
-(NSURLSessionTask*) getAuditLogWithAuditLogId: (NSString*) auditLogId
        completionHandler: (void (^)(TGAuditLog* output, NSError* error)) handler;
```

Get an AuditLog

Gets the details of a single instance of an `AuditLog`.

### Example 
```objc
TGDefaultConfiguration *apiConfig = [TGDefaultConfiguration sharedConfig];


NSString* auditLogId = @"auditLogId_example"; // 

TGAuditLogsApi*apiInstance = [[TGAuditLogsApi alloc] init];

// Get an AuditLog
[apiInstance getAuditLogWithAuditLogId:auditLogId
          completionHandler: ^(TGAuditLog* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TGAuditLogsApi->getAuditLog: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **auditLogId** | **NSString***|  | 

### Return type

[**TGAuditLog***](TGAuditLog.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAuditLogs**
```objc
-(NSURLSessionTask*) getAuditLogsWithLimit: (NSNumber*) limit
    offset: (NSNumber*) offset
    sortBy: (NSString*) sortBy
    auditableId: (NSNumber*) auditableId
    auditableType: (NSString*) auditableType
    actionType: (NSString*) actionType
    userId: (NSNumber*) userId
        completionHandler: (void (^)(TGPaginatedAuditLogsList* output, NSError* error)) handler;
```

List all AuditLogs

Gets a list of all `AuditLog` entities.

### Example 
```objc
TGDefaultConfiguration *apiConfig = [TGDefaultConfiguration sharedConfig];


NSNumber* limit = @56; // Limits the results to a specified number, defaults to 50 (optional)
NSNumber* offset = @56; // Offsets the results to a specified number, defaults to 0 (optional)
NSString* sortBy = @"sortBy_example"; // Sorts by the field name and direction provided where the pattern is `FIELD_NAME_DIRECTION` (optional)
NSNumber* auditableId = @56; // The unique ID of a model that has associated audit logs (optional)
NSString* auditableType = @"auditableType_example"; // The name of the model that has associated audit logs. Valid values include: - `user` - `device_configuration` - `signin` - `invite` - `watchlist_record` - `account_preference` - `signout` - `host` - `invite_watchlist` - `location_preference` - `parking_lot` - `parking_stall` - `permission_bundle` - `person` - `physical_access_grant` - `physical_access_provider` - `physical_access_rule` - `security_badge_type` - `signin_watchlist` - `user_group_physical_access_rule` - `visitor` - `bulk_data_batch`  (optional)
NSString* actionType = @"actionType_example"; // The action performed by the user. Valid values include: - `create` - `update` - `destroy`  (optional)
NSNumber* userId = @56; // The ID of the user who performed the database change (optional)

TGAuditLogsApi*apiInstance = [[TGAuditLogsApi alloc] init];

// List all AuditLogs
[apiInstance getAuditLogsWithLimit:limit
              offset:offset
              sortBy:sortBy
              auditableId:auditableId
              auditableType:auditableType
              actionType:actionType
              userId:userId
          completionHandler: ^(TGPaginatedAuditLogsList* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TGAuditLogsApi->getAuditLogs: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **NSNumber***| Limits the results to a specified number, defaults to 50 | [optional] 
 **offset** | **NSNumber***| Offsets the results to a specified number, defaults to 0 | [optional] 
 **sortBy** | **NSString***| Sorts by the field name and direction provided where the pattern is &#x60;FIELD_NAME_DIRECTION&#x60; | [optional] 
 **auditableId** | **NSNumber***| The unique ID of a model that has associated audit logs | [optional] 
 **auditableType** | **NSString***| The name of the model that has associated audit logs. Valid values include: - &#x60;user&#x60; - &#x60;device_configuration&#x60; - &#x60;signin&#x60; - &#x60;invite&#x60; - &#x60;watchlist_record&#x60; - &#x60;account_preference&#x60; - &#x60;signout&#x60; - &#x60;host&#x60; - &#x60;invite_watchlist&#x60; - &#x60;location_preference&#x60; - &#x60;parking_lot&#x60; - &#x60;parking_stall&#x60; - &#x60;permission_bundle&#x60; - &#x60;person&#x60; - &#x60;physical_access_grant&#x60; - &#x60;physical_access_provider&#x60; - &#x60;physical_access_rule&#x60; - &#x60;security_badge_type&#x60; - &#x60;signin_watchlist&#x60; - &#x60;user_group_physical_access_rule&#x60; - &#x60;visitor&#x60; - &#x60;bulk_data_batch&#x60;  | [optional] 
 **actionType** | **NSString***| The action performed by the user. Valid values include: - &#x60;create&#x60; - &#x60;update&#x60; - &#x60;destroy&#x60;  | [optional] 
 **userId** | **NSNumber***| The ID of the user who performed the database change | [optional] 

### Return type

[**TGPaginatedAuditLogsList***](TGPaginatedAuditLogsList.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


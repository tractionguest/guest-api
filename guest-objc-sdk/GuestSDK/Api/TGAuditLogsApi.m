#import "TGAuditLogsApi.h"
#import "TGQueryParamCollection.h"
#import "TGApiClient.h"
#import "TGAuditLog.h"
#import "TGErrorsList.h"
#import "TGPaginatedAuditLogsList.h"


@interface TGAuditLogsApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation TGAuditLogsApi

NSString* kTGAuditLogsApiErrorDomain = @"TGAuditLogsApiErrorDomain";
NSInteger kTGAuditLogsApiMissingParamErrorCode = 234513;

@synthesize apiClient = _apiClient;

#pragma mark - Initialize methods

- (instancetype) init {
    return [self initWithApiClient:[TGApiClient sharedClient]];
}


-(instancetype) initWithApiClient:(TGApiClient *)apiClient {
    self = [super init];
    if (self) {
        _apiClient = apiClient;
        _mutableDefaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

#pragma mark -

-(NSString*) defaultHeaderForKey:(NSString*)key {
    return self.mutableDefaultHeaders[key];
}

-(void) setDefaultHeaderValue:(NSString*) value forKey:(NSString*)key {
    [self.mutableDefaultHeaders setValue:value forKey:key];
}

-(NSDictionary *)defaultHeaders {
    return self.mutableDefaultHeaders;
}

#pragma mark - Api Methods

///
/// Get an AuditLog
/// Gets the details of a single instance of an `AuditLog`.
///  @param auditLogId  
///
///  @returns TGAuditLog*
///
-(NSURLSessionTask*) getAuditLogWithAuditLogId: (NSString*) auditLogId
    completionHandler: (void (^)(TGAuditLog* output, NSError* error)) handler {
    // verify the required parameter 'auditLogId' is set
    if (auditLogId == nil) {
        NSParameterAssert(auditLogId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"auditLogId"] };
            NSError* error = [NSError errorWithDomain:kTGAuditLogsApiErrorDomain code:kTGAuditLogsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/audit_logs/{audit_log_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (auditLogId != nil) {
        pathParams[@"audit_log_id"] = auditLogId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"TractionGuestAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"TGAuditLog*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((TGAuditLog*)data, error);
                                }
                            }];
}

///
/// List all AuditLogs
/// Gets a list of all `AuditLog` entities.
///  @param limit Limits the results to a specified number, defaults to 50 (optional)
///
///  @param offset Offsets the results to a specified number, defaults to 0 (optional)
///
///  @param sortBy Sorts by the field name and direction provided where the pattern is `FIELD_NAME_DIRECTION` (optional)
///
///  @param auditableId The unique ID of a model that has associated audit logs (optional)
///
///  @param auditableType The name of the model that has associated audit logs. Valid values include: - `user` - `device_configuration` - `signin` - `invite` - `watchlist_record` - `account_preference` - `signout` - `host` - `invite_watchlist` - `location_preference` - `parking_lot` - `parking_stall` - `permission_bundle` - `person` - `physical_access_grant` - `physical_access_provider` - `physical_access_rule` - `security_badge_type` - `signin_watchlist` - `user_group_physical_access_rule` - `visitor` - `bulk_data_batch`  (optional)
///
///  @param actionType The action performed by the user. Valid values include: - `create` - `update` - `destroy`  (optional)
///
///  @param userId The ID of the user who performed the database change (optional)
///
///  @returns TGPaginatedAuditLogsList*
///
-(NSURLSessionTask*) getAuditLogsWithLimit: (NSNumber*) limit
    offset: (NSNumber*) offset
    sortBy: (NSString*) sortBy
    auditableId: (NSNumber*) auditableId
    auditableType: (NSString*) auditableType
    actionType: (NSString*) actionType
    userId: (NSNumber*) userId
    completionHandler: (void (^)(TGPaginatedAuditLogsList* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/audit_logs"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (limit != nil) {
        queryParams[@"limit"] = limit;
    }
    if (offset != nil) {
        queryParams[@"offset"] = offset;
    }
    if (sortBy != nil) {
        queryParams[@"sort_by"] = sortBy;
    }
    if (auditableId != nil) {
        queryParams[@"auditable_id"] = auditableId;
    }
    if (auditableType != nil) {
        queryParams[@"auditable_type"] = auditableType;
    }
    if (actionType != nil) {
        queryParams[@"action_type"] = actionType;
    }
    if (userId != nil) {
        queryParams[@"user_id"] = userId;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"TractionGuestAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"TGPaginatedAuditLogsList*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((TGPaginatedAuditLogsList*)data, error);
                                }
                            }];
}



@end

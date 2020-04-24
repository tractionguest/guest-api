#import "OAIInvitesApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"
#import "OAIErrorsList.h"
#import "OAIInviteCreateParams.h"
#import "OAIInviteDetail.h"
#import "OAIInviteUpdateParams.h"
#import "OAIPaginatedInvitesList.h"


@interface OAIInvitesApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIInvitesApi

NSString* kOAIInvitesApiErrorDomain = @"OAIInvitesApiErrorDomain";
NSInteger kOAIInvitesApiMissingParamErrorCode = 234513;

@synthesize apiClient = _apiClient;

#pragma mark - Initialize methods

- (instancetype) init {
    return [self initWithApiClient:[OAIApiClient sharedClient]];
}


-(instancetype) initWithApiClient:(OAIApiClient *)apiClient {
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
/// Creates an Invite
/// Creates a new `Invite` for a specific `Location`.
///  @param locationId A unique identifier for a `Location`. 
///
///  @param inviteCreateParams  
///
///  @param idempotencyKey An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored (optional)
///
///  @returns OAIInviteDetail*
///
-(NSURLSessionTask*) createLocationInviteWithLocationId: (NSNumber*) locationId
    inviteCreateParams: (OAIInviteCreateParams*) inviteCreateParams
    idempotencyKey: (NSString*) idempotencyKey
    completionHandler: (void (^)(OAIInviteDetail* output, NSError* error)) handler {
    // verify the required parameter 'locationId' is set
    if (locationId == nil) {
        NSParameterAssert(locationId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"locationId"] };
            NSError* error = [NSError errorWithDomain:kOAIInvitesApiErrorDomain code:kOAIInvitesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'inviteCreateParams' is set
    if (inviteCreateParams == nil) {
        NSParameterAssert(inviteCreateParams);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inviteCreateParams"] };
            NSError* error = [NSError errorWithDomain:kOAIInvitesApiErrorDomain code:kOAIInvitesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/locations/{locationId}/invites"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (locationId != nil) {
        pathParams[@"locationId"] = locationId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (idempotencyKey != nil) {
        headerParams[@"Idempotency-Key"] = idempotencyKey;
    }
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"TractionGuestAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = inviteCreateParams;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIInviteDetail*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIInviteDetail*)data, error);
                                }
                            }];
}

///
/// Deletes an Invite
/// Deletes a single instance of `Invite`
///  @param inviteId A unique identifier for a `Invite`. 
///
///  @param idempotencyKey An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored (optional)
///
///  @returns void
///
-(NSURLSessionTask*) deleteInviteWithInviteId: (NSString*) inviteId
    idempotencyKey: (NSString*) idempotencyKey
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'inviteId' is set
    if (inviteId == nil) {
        NSParameterAssert(inviteId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inviteId"] };
            NSError* error = [NSError errorWithDomain:kOAIInvitesApiErrorDomain code:kOAIInvitesApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/invites/{inviteId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (inviteId != nil) {
        pathParams[@"inviteId"] = inviteId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (idempotencyKey != nil) {
        headerParams[@"Idempotency-Key"] = idempotencyKey;
    }
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
                                    method: @"DELETE"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: nil
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler(error);
                                }
                            }];
}

///
/// Get a Invite
/// Gets the details of a single instance of a `Invite`.
///  @param inviteId A unique identifier for a `Invite`. 
///
///  @param include A list of comma-separated related models to include (optional)
///
///  @returns OAIInviteDetail*
///
-(NSURLSessionTask*) getInviteWithInviteId: (NSString*) inviteId
    include: (NSString*) include
    completionHandler: (void (^)(OAIInviteDetail* output, NSError* error)) handler {
    // verify the required parameter 'inviteId' is set
    if (inviteId == nil) {
        NSParameterAssert(inviteId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inviteId"] };
            NSError* error = [NSError errorWithDomain:kOAIInvitesApiErrorDomain code:kOAIInvitesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/invites/{inviteId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (inviteId != nil) {
        pathParams[@"inviteId"] = inviteId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (include != nil) {
        queryParams[@"include"] = include;
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
                              responseType: @"OAIInviteDetail*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIInviteDetail*)data, error);
                                }
                            }];
}

///
/// List All Invites
/// Gets a list of all `Invite` entities.
///  @param limit Limits the results to a specified number, defaults to 50 (optional)
///
///  @param offset Offsets the results to a specified number, defaults to 0 (optional)
///
///  @param query Filters by `first_name`, `last_name`, `company`, and `email` (optional)
///
///  @param withColours A comma separated list of case-insensitive colour values. i.e., `red`, `green`, `yellow`, and `orange` (optional)
///
///  @param locationIds A comma separated list of Location IDs (optional)
///
///  @param sortBy Sorts by the field name and direction provided where the pattern is `FIELD_NAME_DIRECTION` (optional)
///
///  @param startsBefore Filters results to all those *before* the provided datetime (optional)
///
///  @param startsAfter Filters results to all those *after* the provided datetime (optional)
///
///  @param include A list of comma-separated related models to include (optional)
///
///  @param isApproved True to return approved and auto approved invites, False to return pending and rejected invites (optional)
///
///  @param activeAfter Checks that an invite hasn't yet started, or has started and is still active after a specified time (optional)
///
///  @param activeBefore Checks that an invite hasn't ended before a specified time (optional)
///
///  @returns OAIPaginatedInvitesList*
///
-(NSURLSessionTask*) getInvitesWithLimit: (NSNumber*) limit
    offset: (NSNumber*) offset
    query: (NSString*) query
    withColours: (NSString*) withColours
    locationIds: (NSString*) locationIds
    sortBy: (NSString*) sortBy
    startsBefore: (NSDate*) startsBefore
    startsAfter: (NSDate*) startsAfter
    include: (NSString*) include
    isApproved: (NSNumber*) isApproved
    activeAfter: (NSDate*) activeAfter
    activeBefore: (NSDate*) activeBefore
    completionHandler: (void (^)(OAIPaginatedInvitesList* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/invites"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (limit != nil) {
        queryParams[@"limit"] = limit;
    }
    if (offset != nil) {
        queryParams[@"offset"] = offset;
    }
    if (query != nil) {
        queryParams[@"query"] = query;
    }
    if (withColours != nil) {
        queryParams[@"with_colours"] = withColours;
    }
    if (locationIds != nil) {
        queryParams[@"location_ids"] = locationIds;
    }
    if (sortBy != nil) {
        queryParams[@"sort_by"] = sortBy;
    }
    if (startsBefore != nil) {
        queryParams[@"starts_before"] = startsBefore;
    }
    if (startsAfter != nil) {
        queryParams[@"starts_after"] = startsAfter;
    }
    if (include != nil) {
        queryParams[@"include"] = include;
    }
    if (isApproved != nil) {
        queryParams[@"is_approved"] = [isApproved isEqual:@(YES)] ? @"true" : @"false";
    }
    if (activeAfter != nil) {
        queryParams[@"active_after"] = activeAfter;
    }
    if (activeBefore != nil) {
        queryParams[@"active_before"] = activeBefore;
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
                              responseType: @"OAIPaginatedInvitesList*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIPaginatedInvitesList*)data, error);
                                }
                            }];
}

///
/// Update a Invite
/// Updates an existing `Invite`.
///  @param inviteId A unique identifier for a `Invite`. 
///
///  @param inviteUpdateParams Updated `Invite` information. 
///
///  @param idempotencyKey An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored (optional)
///
///  @returns OAIInviteDetail*
///
-(NSURLSessionTask*) updateInviteWithInviteId: (NSString*) inviteId
    inviteUpdateParams: (OAIInviteUpdateParams*) inviteUpdateParams
    idempotencyKey: (NSString*) idempotencyKey
    completionHandler: (void (^)(OAIInviteDetail* output, NSError* error)) handler {
    // verify the required parameter 'inviteId' is set
    if (inviteId == nil) {
        NSParameterAssert(inviteId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inviteId"] };
            NSError* error = [NSError errorWithDomain:kOAIInvitesApiErrorDomain code:kOAIInvitesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'inviteUpdateParams' is set
    if (inviteUpdateParams == nil) {
        NSParameterAssert(inviteUpdateParams);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inviteUpdateParams"] };
            NSError* error = [NSError errorWithDomain:kOAIInvitesApiErrorDomain code:kOAIInvitesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/invites/{inviteId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (inviteId != nil) {
        pathParams[@"inviteId"] = inviteId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (idempotencyKey != nil) {
        headerParams[@"Idempotency-Key"] = idempotencyKey;
    }
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"TractionGuestAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = inviteUpdateParams;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"PUT"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"OAIInviteDetail*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((OAIInviteDetail*)data, error);
                                }
                            }];
}



@end

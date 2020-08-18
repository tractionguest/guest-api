#import "TGInvitesApi.h"
#import "TGQueryParamCollection.h"
#import "TGApiClient.h"
#import "TGErrorsList.h"
#import "TGInviteCreateParams.h"
#import "TGInviteDetail.h"
#import "TGInviteUpdateParams.h"
#import "TGPaginatedInvitesList.h"


@interface TGInvitesApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation TGInvitesApi

NSString* kTGInvitesApiErrorDomain = @"TGInvitesApiErrorDomain";
NSInteger kTGInvitesApiMissingParamErrorCode = 234513;

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
/// Create an Invite
/// Creates a new `Invite` for a specific `Location`.
///  @param locationId  
///
///  @param inviteCreateParams  
///
///  @param idempotencyKey An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored (optional)
///
///  @returns TGInviteDetail*
///
-(NSURLSessionTask*) createLocationInviteWithLocationId: (NSString*) locationId
    inviteCreateParams: (TGInviteCreateParams*) inviteCreateParams
    idempotencyKey: (NSString*) idempotencyKey
    completionHandler: (void (^)(TGInviteDetail* output, NSError* error)) handler {
    // verify the required parameter 'locationId' is set
    if (locationId == nil) {
        NSParameterAssert(locationId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"locationId"] };
            NSError* error = [NSError errorWithDomain:kTGInvitesApiErrorDomain code:kTGInvitesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'inviteCreateParams' is set
    if (inviteCreateParams == nil) {
        NSParameterAssert(inviteCreateParams);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inviteCreateParams"] };
            NSError* error = [NSError errorWithDomain:kTGInvitesApiErrorDomain code:kTGInvitesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/locations/{location_id}/invites"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (locationId != nil) {
        pathParams[@"location_id"] = locationId;
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
                              responseType: @"TGInviteDetail*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((TGInviteDetail*)data, error);
                                }
                            }];
}

///
/// Create an Invite from a Registration
/// Creates a new `Invite` from `Registration` data.
///  @param registrationId  
///
///  @param idempotencyKey An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored (optional)
///
///  @returns TGInviteDetail*
///
-(NSURLSessionTask*) createRegistrationInviteWithRegistrationId: (NSString*) registrationId
    idempotencyKey: (NSString*) idempotencyKey
    completionHandler: (void (^)(TGInviteDetail* output, NSError* error)) handler {
    // verify the required parameter 'registrationId' is set
    if (registrationId == nil) {
        NSParameterAssert(registrationId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"registrationId"] };
            NSError* error = [NSError errorWithDomain:kTGInvitesApiErrorDomain code:kTGInvitesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/registrations/{registration_id}/invites"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (registrationId != nil) {
        pathParams[@"registration_id"] = registrationId;
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
                              responseType: @"TGInviteDetail*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((TGInviteDetail*)data, error);
                                }
                            }];
}

///
/// Deletes an Invite
/// Deletes a single instance of `Invite`
///  @param inviteId  
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
            NSError* error = [NSError errorWithDomain:kTGInvitesApiErrorDomain code:kTGInvitesApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/invites/{invite_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (inviteId != nil) {
        pathParams[@"invite_id"] = inviteId;
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
/// Get an Invite
/// Gets the details of a single instance of a `Invite`.
///  @param inviteId  
///
///  @param include A list of comma-separated related models to include (optional)
///
///  @returns TGInviteDetail*
///
-(NSURLSessionTask*) getInviteWithInviteId: (NSString*) inviteId
    include: (NSString*) include
    completionHandler: (void (^)(TGInviteDetail* output, NSError* error)) handler {
    // verify the required parameter 'inviteId' is set
    if (inviteId == nil) {
        NSParameterAssert(inviteId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inviteId"] };
            NSError* error = [NSError errorWithDomain:kTGInvitesApiErrorDomain code:kTGInvitesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/invites/{invite_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (inviteId != nil) {
        pathParams[@"invite_id"] = inviteId;
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
                              responseType: @"TGInviteDetail*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((TGInviteDetail*)data, error);
                                }
                            }];
}

///
/// List all Invites
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
///  @returns TGPaginatedInvitesList*
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
    completionHandler: (void (^)(TGPaginatedInvitesList* output, NSError* error)) handler {
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
                              responseType: @"TGPaginatedInvitesList*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((TGPaginatedInvitesList*)data, error);
                                }
                            }];
}

///
/// Update an Invite
/// Updates an existing `Invite`.
///  @param inviteId  
///
///  @param inviteUpdateParams Updated `Invite` information. 
///
///  @param idempotencyKey An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored (optional)
///
///  @returns TGInviteDetail*
///
-(NSURLSessionTask*) updateInviteWithInviteId: (NSString*) inviteId
    inviteUpdateParams: (TGInviteUpdateParams*) inviteUpdateParams
    idempotencyKey: (NSString*) idempotencyKey
    completionHandler: (void (^)(TGInviteDetail* output, NSError* error)) handler {
    // verify the required parameter 'inviteId' is set
    if (inviteId == nil) {
        NSParameterAssert(inviteId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inviteId"] };
            NSError* error = [NSError errorWithDomain:kTGInvitesApiErrorDomain code:kTGInvitesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'inviteUpdateParams' is set
    if (inviteUpdateParams == nil) {
        NSParameterAssert(inviteUpdateParams);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"inviteUpdateParams"] };
            NSError* error = [NSError errorWithDomain:kTGInvitesApiErrorDomain code:kTGInvitesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/invites/{invite_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (inviteId != nil) {
        pathParams[@"invite_id"] = inviteId;
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
                              responseType: @"TGInviteDetail*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((TGInviteDetail*)data, error);
                                }
                            }];
}



@end

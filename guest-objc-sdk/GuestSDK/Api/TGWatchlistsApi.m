#import "TGWatchlistsApi.h"
#import "TGQueryParamCollection.h"
#import "TGApiClient.h"
#import "TGErrorsList.h"
#import "TGPaginatedWatchlistList.h"
#import "TGWatchlist.h"
#import "TGWatchlistCreateParams.h"


@interface TGWatchlistsApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation TGWatchlistsApi

NSString* kTGWatchlistsApiErrorDomain = @"TGWatchlistsApiErrorDomain";
NSInteger kTGWatchlistsApiMissingParamErrorCode = 234513;

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
/// Create Watchlist
/// Create a new `Watchlist` record. Please note, every action taken against this endpoint is recorded in the audit log.
///  @param watchlistCreateParams The new `Watchlist` to create 
///
///  @param idempotencyKey An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored (optional)
///
///  @returns TGWatchlist*
///
-(NSURLSessionTask*) createWatchlistWithWatchlistCreateParams: (TGWatchlistCreateParams*) watchlistCreateParams
    idempotencyKey: (NSString*) idempotencyKey
    completionHandler: (void (^)(TGWatchlist* output, NSError* error)) handler {
    // verify the required parameter 'watchlistCreateParams' is set
    if (watchlistCreateParams == nil) {
        NSParameterAssert(watchlistCreateParams);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"watchlistCreateParams"] };
            NSError* error = [NSError errorWithDomain:kTGWatchlistsApiErrorDomain code:kTGWatchlistsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/watchlists"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

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
    bodyParam = watchlistCreateParams;

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
                              responseType: @"TGWatchlist*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((TGWatchlist*)data, error);
                                }
                            }];
}

///
/// Deletes a Watchlist
/// Deletes a single instance of `Watchlist`
///  @param watchlistId  
///
///  @param idempotencyKey An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored (optional)
///
///  @returns void
///
-(NSURLSessionTask*) deleteWatchlistWithWatchlistId: (NSString*) watchlistId
    idempotencyKey: (NSString*) idempotencyKey
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'watchlistId' is set
    if (watchlistId == nil) {
        NSParameterAssert(watchlistId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"watchlistId"] };
            NSError* error = [NSError errorWithDomain:kTGWatchlistsApiErrorDomain code:kTGWatchlistsApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/watchlists/{watchlist_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (watchlistId != nil) {
        pathParams[@"watchlist_id"] = watchlistId;
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
/// Get a Watchlist
/// Gets the details of a single instance of a `Watchlist`.
///  @param watchlistId  
///
///  @param include A list of comma-separated related models to include (optional)
///
///  @returns TGWatchlist*
///
-(NSURLSessionTask*) getWatchlistWithWatchlistId: (NSString*) watchlistId
    include: (NSString*) include
    completionHandler: (void (^)(TGWatchlist* output, NSError* error)) handler {
    // verify the required parameter 'watchlistId' is set
    if (watchlistId == nil) {
        NSParameterAssert(watchlistId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"watchlistId"] };
            NSError* error = [NSError errorWithDomain:kTGWatchlistsApiErrorDomain code:kTGWatchlistsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/watchlists/{watchlist_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (watchlistId != nil) {
        pathParams[@"watchlist_id"] = watchlistId;
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
                              responseType: @"TGWatchlist*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((TGWatchlist*)data, error);
                                }
                            }];
}

///
/// List all Watchlists
/// Gets a list of all `Watchlist` entities.
///  @param limit Limits the results to a specified number, defaults to 50 (optional)
///
///  @param offset Offsets the results to a specified number, defaults to 0 (optional)
///
///  @param query Query the results by `first_name`, `last_name`, `email`, `colour`, and `notes` all at once. (optional)
///
///  @param withColours A comma separated list of case-insensitive colour values. i.e., `red`, `green`, `yellow`, and `orange` (optional)
///
///  @param include A list of comma-separated related models to include (optional)
///
///  @returns TGPaginatedWatchlistList*
///
-(NSURLSessionTask*) getWatchlistsWithLimit: (NSNumber*) limit
    offset: (NSNumber*) offset
    query: (NSString*) query
    withColours: (NSString*) withColours
    include: (NSString*) include
    completionHandler: (void (^)(TGPaginatedWatchlistList* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/watchlists"];

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
                              responseType: @"TGPaginatedWatchlistList*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((TGPaginatedWatchlistList*)data, error);
                                }
                            }];
}

///
/// Update a Watchlist
/// Update an existing `Watchlist` record. Every operation against this endpoint is recorded in the audit log.
///  @param watchlistId  
///
///  @param watchlistCreateParams The watchlist record attributes to update 
///
///  @param idempotencyKey An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored (optional)
///
///  @returns TGWatchlist*
///
-(NSURLSessionTask*) updateWatchlistWithWatchlistId: (NSString*) watchlistId
    watchlistCreateParams: (TGWatchlistCreateParams*) watchlistCreateParams
    idempotencyKey: (NSString*) idempotencyKey
    completionHandler: (void (^)(TGWatchlist* output, NSError* error)) handler {
    // verify the required parameter 'watchlistId' is set
    if (watchlistId == nil) {
        NSParameterAssert(watchlistId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"watchlistId"] };
            NSError* error = [NSError errorWithDomain:kTGWatchlistsApiErrorDomain code:kTGWatchlistsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'watchlistCreateParams' is set
    if (watchlistCreateParams == nil) {
        NSParameterAssert(watchlistCreateParams);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"watchlistCreateParams"] };
            NSError* error = [NSError errorWithDomain:kTGWatchlistsApiErrorDomain code:kTGWatchlistsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/watchlists/{watchlist_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (watchlistId != nil) {
        pathParams[@"watchlist_id"] = watchlistId;
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
    bodyParam = watchlistCreateParams;

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
                              responseType: @"TGWatchlist*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((TGWatchlist*)data, error);
                                }
                            }];
}



@end

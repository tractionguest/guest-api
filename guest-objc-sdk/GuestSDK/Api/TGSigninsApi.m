#import "TGSigninsApi.h"
#import "TGQueryParamCollection.h"
#import "TGApiClient.h"
#import "TGErrorsList.h"
#import "TGPaginatedSigninsList.h"
#import "TGSignin.h"
#import "TGSigninCreateParams.h"
#import "TGSigninDetail.h"
#import "TGSigninUpdateParams.h"


@interface TGSigninsApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation TGSigninsApi

NSString* kTGSigninsApiErrorDomain = @"TGSigninsApiErrorDomain";
NSInteger kTGSigninsApiMissingParamErrorCode = 234513;

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
/// Create Signin
/// Creates a Signin
///  @param signinCreateParams Params for creating a Signin can omit certain fields if a `registration_id` is present. (optional)
///
///  @returns TGSignin*
///
-(NSURLSessionTask*) createSigninWithSigninCreateParams: (TGSigninCreateParams*) signinCreateParams
    completionHandler: (void (^)(TGSignin* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/signins"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

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
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"TractionGuestAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = signinCreateParams;

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
                              responseType: @"TGSignin*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((TGSignin*)data, error);
                                }
                            }];
}

///
/// Get a Signin
/// Gets the details of a single instance of a `Signin`.
///  @param signinId  
///
///  @param include A list of comma-separated related models to include (optional)
///
///  @returns TGSigninDetail*
///
-(NSURLSessionTask*) getSigninWithSigninId: (NSString*) signinId
    include: (NSString*) include
    completionHandler: (void (^)(TGSigninDetail* output, NSError* error)) handler {
    // verify the required parameter 'signinId' is set
    if (signinId == nil) {
        NSParameterAssert(signinId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"signinId"] };
            NSError* error = [NSError errorWithDomain:kTGSigninsApiErrorDomain code:kTGSigninsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/signins/{signin_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (signinId != nil) {
        pathParams[@"signin_id"] = signinId;
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
                              responseType: @"TGSigninDetail*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((TGSigninDetail*)data, error);
                                }
                            }];
}

///
/// List all Signins
/// Gets a list of all `Signin` entities.
///  @param locationIds A comma separated list of Location IDs (optional)
///
///  @param withColours A comma separated list of case-insensitive colour values. i.e., `red`, `green`, `yellow`, and `orange` (optional)
///
///  @param query Allows you to query by `company`, `email`, `first_name`, `last_name`, and `location_name` (optional)
///
///  @param withAcknowledged Filters to all those `Signin`s that have, or have not been acknowledged (optional)
///
///  @param withSignedIn Filters to all `Signin`s that are, or are not currently signed out. (optional)
///
///  @param signinBefore Filters results to all those *before* the provided datetime (optional)
///
///  @param signinAfter Filters results to all those *after* the provided datetime (optional)
///
///  @param limit Limits the results to a specified number, defaults to 50 (optional)
///
///  @param offset Offsets the results to a specified number, defaults to 0 (optional)
///
///  @param querySort Allows you to override ordering by most relevant results when querying (optional)
///
///  @param include A list of comma-separated related models to include (optional)
///
///  @returns TGPaginatedSigninsList*
///
-(NSURLSessionTask*) getSigninsWithLocationIds: (NSString*) locationIds
    withColours: (NSString*) withColours
    query: (NSString*) query
    withAcknowledged: (NSNumber*) withAcknowledged
    withSignedIn: (NSNumber*) withSignedIn
    signinBefore: (NSDate*) signinBefore
    signinAfter: (NSDate*) signinAfter
    limit: (NSNumber*) limit
    offset: (NSNumber*) offset
    querySort: (NSString*) querySort
    include: (NSString*) include
    completionHandler: (void (^)(TGPaginatedSigninsList* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/signins"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (locationIds != nil) {
        queryParams[@"location_ids"] = locationIds;
    }
    if (withColours != nil) {
        queryParams[@"with_colours"] = withColours;
    }
    if (query != nil) {
        queryParams[@"query"] = query;
    }
    if (withAcknowledged != nil) {
        queryParams[@"with_acknowledged"] = [withAcknowledged isEqual:@(YES)] ? @"true" : @"false";
    }
    if (withSignedIn != nil) {
        queryParams[@"with_signed_in"] = [withSignedIn isEqual:@(YES)] ? @"true" : @"false";
    }
    if (signinBefore != nil) {
        queryParams[@"signin_before"] = signinBefore;
    }
    if (signinAfter != nil) {
        queryParams[@"signin_after"] = signinAfter;
    }
    if (limit != nil) {
        queryParams[@"limit"] = limit;
    }
    if (offset != nil) {
        queryParams[@"offset"] = offset;
    }
    if (querySort != nil) {
        queryParams[@"query_sort"] = querySort;
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
                              responseType: @"TGPaginatedSigninsList*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((TGPaginatedSigninsList*)data, error);
                                }
                            }];
}

///
/// Update a Signin
/// Update, acknowledge, or `Signout` a `Signin`
///  @param signinId  
///
///  @param signinUpdateParams The only updatable values for a `Signin` are `badge_number`, `badge_returned`, `is_accounted_for`, `is_signed_out`, and `is_acknowledged`.  `is_signed_out` and `is_acknowledged` are pseudo attributes that once set to true, are irreversible. 
///
///  @param idempotencyKey An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored (optional)
///
///  @returns TGSigninDetail*
///
-(NSURLSessionTask*) updateSigninWithSigninId: (NSString*) signinId
    signinUpdateParams: (TGSigninUpdateParams*) signinUpdateParams
    idempotencyKey: (NSString*) idempotencyKey
    completionHandler: (void (^)(TGSigninDetail* output, NSError* error)) handler {
    // verify the required parameter 'signinId' is set
    if (signinId == nil) {
        NSParameterAssert(signinId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"signinId"] };
            NSError* error = [NSError errorWithDomain:kTGSigninsApiErrorDomain code:kTGSigninsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'signinUpdateParams' is set
    if (signinUpdateParams == nil) {
        NSParameterAssert(signinUpdateParams);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"signinUpdateParams"] };
            NSError* error = [NSError errorWithDomain:kTGSigninsApiErrorDomain code:kTGSigninsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/signins/{signin_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (signinId != nil) {
        pathParams[@"signin_id"] = signinId;
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
    bodyParam = signinUpdateParams;

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
                              responseType: @"TGSigninDetail*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((TGSigninDetail*)data, error);
                                }
                            }];
}



@end

#import "TGPackagesApi.h"
#import "TGQueryParamCollection.h"
#import "TGApiClient.h"
#import "TGErrorsList.h"
#import "TGPackage.h"
#import "TGPackageCreateParams.h"
#import "TGPackageUpdateParams.h"
#import "TGPaginatedPackagesList.h"


@interface TGPackagesApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation TGPackagesApi

NSString* kTGPackagesApiErrorDomain = @"TGPackagesApiErrorDomain";
NSInteger kTGPackagesApiMissingParamErrorCode = 234513;

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
/// Create package
/// Creates a [Package] entity by extracting information about the recipient and carrier from the given image file.
///  @param packageCreateParams Parameters for creating a package (optional)
///
///  @returns TGPackage*
///
-(NSURLSessionTask*) createPackageWithPackageCreateParams: (TGPackageCreateParams*) packageCreateParams
    completionHandler: (void (^)(TGPackage* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/packages"];

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
    bodyParam = packageCreateParams;

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
                              responseType: @"TGPackage*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((TGPackage*)data, error);
                                }
                            }];
}

///
/// 
/// Delete a pacakge
///  @param packageId  
///
///  @param idempotencyKey An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored (optional)
///
///  @returns void
///
-(NSURLSessionTask*) deletePackageWithPackageId: (NSString*) packageId
    idempotencyKey: (NSString*) idempotencyKey
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'packageId' is set
    if (packageId == nil) {
        NSParameterAssert(packageId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"packageId"] };
            NSError* error = [NSError errorWithDomain:kTGPackagesApiErrorDomain code:kTGPackagesApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/packages/{package_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (packageId != nil) {
        pathParams[@"package_id"] = packageId;
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
/// Get Package
/// Gets the details of a single instance of a Package
///  @param packageId  
///
///  @param include A list of comma-separated related models to include  (optional)
///
///  @returns TGPackage*
///
-(NSURLSessionTask*) getPackageWithPackageId: (NSString*) packageId
    include: (NSString*) include
    completionHandler: (void (^)(TGPackage* output, NSError* error)) handler {
    // verify the required parameter 'packageId' is set
    if (packageId == nil) {
        NSParameterAssert(packageId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"packageId"] };
            NSError* error = [NSError errorWithDomain:kTGPackagesApiErrorDomain code:kTGPackagesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/packages/{package_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (packageId != nil) {
        pathParams[@"package_id"] = packageId;
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
                              responseType: @"TGPackage*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((TGPackage*)data, error);
                                }
                            }];
}

///
/// Get packages
/// Gets a list of [Package] entities.
///  @param locationIds A comma separated list of Location ids for filtering. i.e. '1,2,3' Will return all packages from all locations if none are specified (optional)
///
///  @param limit Limits the results to a specified number, defaults to 50 (optional, default to @50)
///
///  @param offset Offsets the results to a specified number, defaults to 0 (optional, default to @0)
///
///  @param include A list of comma-separated related models to include. Possible values: 'recipient', 'location', 'image' (optional)
///
///  @param pickedUp Filters packages by their \"picked_up\" state.. (optional)
///
///  @param query Searches for packages by recipient name (optional)
///
///  @returns TGPaginatedPackagesList*
///
-(NSURLSessionTask*) getPackagesWithLocationIds: (NSString*) locationIds
    limit: (NSNumber*) limit
    offset: (NSNumber*) offset
    include: (NSString*) include
    pickedUp: (NSNumber*) pickedUp
    query: (NSString*) query
    completionHandler: (void (^)(TGPaginatedPackagesList* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/packages"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (locationIds != nil) {
        queryParams[@"location_ids"] = locationIds;
    }
    if (limit != nil) {
        queryParams[@"limit"] = limit;
    }
    if (offset != nil) {
        queryParams[@"offset"] = offset;
    }
    if (include != nil) {
        queryParams[@"include"] = include;
    }
    if (pickedUp != nil) {
        queryParams[@"picked_up"] = [pickedUp isEqual:@(YES)] ? @"true" : @"false";
    }
    if (query != nil) {
        queryParams[@"query"] = query;
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
                              responseType: @"TGPaginatedPackagesList*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((TGPaginatedPackagesList*)data, error);
                                }
                            }];
}

///
/// Update Package
/// Update/Edit information about a Package.  picked_up - changes the package_state to picked up and assigns non null value to picked_up_at  recipient_id - update the package's intended recipient. Changes package_state to 'recipient_matched' if a match hasn't been found and notifies host about their package via email. A previous recipient will stop getting notifications  carrier_name - change/update the package's carrier/courier information    
///  @param packageId  
///
///  @param idempotencyKey An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it's submitted. We store idempotency keys for only 24 hours. Any `Idempotency-Key` shorter than 10 characters will be ignored (optional)
///
///  @param packageUpdateParams  (optional)
///
///  @returns TGPackage*
///
-(NSURLSessionTask*) updatePackageWithPackageId: (NSString*) packageId
    idempotencyKey: (NSString*) idempotencyKey
    packageUpdateParams: (TGPackageUpdateParams*) packageUpdateParams
    completionHandler: (void (^)(TGPackage* output, NSError* error)) handler {
    // verify the required parameter 'packageId' is set
    if (packageId == nil) {
        NSParameterAssert(packageId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"packageId"] };
            NSError* error = [NSError errorWithDomain:kTGPackagesApiErrorDomain code:kTGPackagesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/packages/{package_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (packageId != nil) {
        pathParams[@"package_id"] = packageId;
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
    bodyParam = packageUpdateParams;

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
                              responseType: @"TGPackage*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((TGPackage*)data, error);
                                }
                            }];
}



@end

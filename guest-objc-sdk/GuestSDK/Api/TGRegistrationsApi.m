#import "TGRegistrationsApi.h"
#import "TGQueryParamCollection.h"
#import "TGApiClient.h"
#import "TGErrorsList.h"
#import "TGPaginatedRegistrationsList.h"
#import "TGRegistrationDetail.h"


@interface TGRegistrationsApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation TGRegistrationsApi

NSString* kTGRegistrationsApiErrorDomain = @"TGRegistrationsApiErrorDomain";
NSInteger kTGRegistrationsApiMissingParamErrorCode = 234513;

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
/// Get a Registration
/// Gets the details of a single instance of a `Registration`
///  @param registrationId  
///
///  @param include A list of comma-separated related models to include (optional)
///
///  @returns TGRegistrationDetail*
///
-(NSURLSessionTask*) getRegistrationWithRegistrationId: (NSString*) registrationId
    include: (NSString*) include
    completionHandler: (void (^)(TGRegistrationDetail* output, NSError* error)) handler {
    // verify the required parameter 'registrationId' is set
    if (registrationId == nil) {
        NSParameterAssert(registrationId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"registrationId"] };
            NSError* error = [NSError errorWithDomain:kTGRegistrationsApiErrorDomain code:kTGRegistrationsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/registrations/{registration_id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (registrationId != nil) {
        pathParams[@"registration_id"] = registrationId;
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
                              responseType: @"TGRegistrationDetail*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((TGRegistrationDetail*)data, error);
                                }
                            }];
}

///
/// List all Registrations
/// Gets a list of all `Registration` entities.
///  @param limit Limits the results to a specified number, defaults to 50 (optional)
///
///  @param offset Offsets the results to a specified number, defaults to 0 (optional)
///
///  @param locationIds A comma separated list of Location IDs (optional)
///
///  @param createdBefore Restricts results to only those that were created before the provided date (optional)
///
///  @param createdAfter Restricts results to only those that were created after the provided date (optional)
///
///  @returns TGPaginatedRegistrationsList*
///
-(NSURLSessionTask*) getRegistrationsWithLimit: (NSNumber*) limit
    offset: (NSNumber*) offset
    locationIds: (NSString*) locationIds
    createdBefore: (NSString*) createdBefore
    createdAfter: (NSString*) createdAfter
    completionHandler: (void (^)(TGPaginatedRegistrationsList* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/registrations"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (limit != nil) {
        queryParams[@"limit"] = limit;
    }
    if (offset != nil) {
        queryParams[@"offset"] = offset;
    }
    if (locationIds != nil) {
        queryParams[@"location_ids"] = locationIds;
    }
    if (createdBefore != nil) {
        queryParams[@"created_before"] = createdBefore;
    }
    if (createdAfter != nil) {
        queryParams[@"created_after"] = createdAfter;
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
                              responseType: @"TGPaginatedRegistrationsList*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((TGPaginatedRegistrationsList*)data, error);
                                }
                            }];
}



@end

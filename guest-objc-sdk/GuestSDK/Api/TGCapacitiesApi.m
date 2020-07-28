#import "TGCapacitiesApi.h"
#import "TGQueryParamCollection.h"
#import "TGApiClient.h"
#import "TGCapacity.h"
#import "TGCapacityForecast.h"
#import "TGErrorsList.h"


@interface TGCapacitiesApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation TGCapacitiesApi

NSString* kTGCapacitiesApiErrorDomain = @"TGCapacitiesApiErrorDomain";
NSInteger kTGCapacitiesApiMissingParamErrorCode = 234513;

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
/// Get the current capacity details for a location
/// Get details of current capacity in a location
///  @param locationId  
///
///  @returns TGCapacity*
///
-(NSURLSessionTask*) getCapacityWithLocationId: (NSString*) locationId
    completionHandler: (void (^)(TGCapacity* output, NSError* error)) handler {
    // verify the required parameter 'locationId' is set
    if (locationId == nil) {
        NSParameterAssert(locationId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"locationId"] };
            NSError* error = [NSError errorWithDomain:kTGCapacitiesApiErrorDomain code:kTGCapacitiesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/locations/{location_id}/capacities"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (locationId != nil) {
        pathParams[@"location_id"] = locationId;
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
                              responseType: @"TGCapacity*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((TGCapacity*)data, error);
                                }
                            }];
}

///
/// Get the capacity details for a location
/// Gets the details of the future capacity in a location.
///  @param locationId  
///
///  @param hoursToForecast The next N number of hours, the data needs to be calculated. Range from 1 to 24. If not set, it defaults to 8. (optional, default to @8)
///
///  @param timestamp ISO8601 timestamp(includes the offset value) to use as the start point for the capacity estimate report. Defaults to the current local timestamp of the location if not provided. Eg: \"2020-07-16T17:05:08-07:00\" (optional)
///
///  @returns TGCapacityForecast*
///
-(NSURLSessionTask*) getCapacityForecastWithLocationId: (NSString*) locationId
    hoursToForecast: (NSNumber*) hoursToForecast
    timestamp: (NSString*) timestamp
    completionHandler: (void (^)(TGCapacityForecast* output, NSError* error)) handler {
    // verify the required parameter 'locationId' is set
    if (locationId == nil) {
        NSParameterAssert(locationId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"locationId"] };
            NSError* error = [NSError errorWithDomain:kTGCapacitiesApiErrorDomain code:kTGCapacitiesApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/locations/{location_id}/capacity_forecasts"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (locationId != nil) {
        pathParams[@"location_id"] = locationId;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (hoursToForecast != nil) {
        queryParams[@"hours_to_forecast"] = hoursToForecast;
    }
    if (timestamp != nil) {
        queryParams[@"timestamp"] = timestamp;
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
                              responseType: @"TGCapacityForecast*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((TGCapacityForecast*)data, error);
                                }
                            }];
}



@end

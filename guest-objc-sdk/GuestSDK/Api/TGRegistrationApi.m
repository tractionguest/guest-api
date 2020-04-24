#import "TGRegistrationApi.h"
#import "TGQueryParamCollection.h"
#import "TGApiClient.h"
#import "TGErrorsList.h"
#import "TGRegistration.h"


@interface TGRegistrationApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation TGRegistrationApi

NSString* kTGRegistrationApiErrorDomain = @"TGRegistrationApiErrorDomain";
NSInteger kTGRegistrationApiMissingParamErrorCode = 234513;

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
///  @param registrationId A unique identifier for `Registration`. 
///
///  @param include A list of comma-separated related models to include (optional)
///
///  @returns TGRegistration*
///
-(NSURLSessionTask*) getRegistrationWithRegistrationId: (NSString*) registrationId
    include: (NSString*) include
    completionHandler: (void (^)(TGRegistration* output, NSError* error)) handler {
    // verify the required parameter 'registrationId' is set
    if (registrationId == nil) {
        NSParameterAssert(registrationId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"registrationId"] };
            NSError* error = [NSError errorWithDomain:kTGRegistrationApiErrorDomain code:kTGRegistrationApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/registrations/{registrationId}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (registrationId != nil) {
        pathParams[@"registrationId"] = registrationId;
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
                              responseType: @"TGRegistration*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((TGRegistration*)data, error);
                                }
                            }];
}



@end

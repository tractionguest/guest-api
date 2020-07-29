#import "TGEmailTemplatesApi.h"
#import "TGQueryParamCollection.h"
#import "TGApiClient.h"
#import "TGErrorsList.h"
#import "TGPaginatedEmailTemplatesList.h"


@interface TGEmailTemplatesApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation TGEmailTemplatesApi

NSString* kTGEmailTemplatesApiErrorDomain = @"TGEmailTemplatesApiErrorDomain";
NSInteger kTGEmailTemplatesApiMissingParamErrorCode = 234513;

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
/// List all EmailTemplates
/// Gets a list of all `EmailTemplate` entities.
///  @param limit Limits the results to a specified number, defaults to 50 (optional)
///
///  @param offset Offsets the results to a specified number, defaults to 0 (optional)
///
///  @param include A list of comma-separated related models to include (optional)
///
///  @returns TGPaginatedEmailTemplatesList*
///
-(NSURLSessionTask*) getEmailTemplatesWithLimit: (NSNumber*) limit
    offset: (NSNumber*) offset
    include: (NSString*) include
    completionHandler: (void (^)(TGPaginatedEmailTemplatesList* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/email_templates"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (limit != nil) {
        queryParams[@"limit"] = limit;
    }
    if (offset != nil) {
        queryParams[@"offset"] = offset;
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
                              responseType: @"TGPaginatedEmailTemplatesList*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((TGPaginatedEmailTemplatesList*)data, error);
                                }
                            }];
}



@end

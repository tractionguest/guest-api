# TGUsersApi

All URIs are relative to *https://tractionguest.ca/api/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getCurrentUser**](TGUsersApi.md#getcurrentuser) | **GET** /users/{user_id} | Get the current User


# **getCurrentUser**
```objc
-(NSURLSessionTask*) getCurrentUserWithUserId: (NSString*) userId
    include: (NSString*) include
        completionHandler: (void (^)(TGUser* output, NSError* error)) handler;
```

Get the current User

Gets the details of a single instance of the current `User`.

### Example 
```objc
TGDefaultConfiguration *apiConfig = [TGDefaultConfiguration sharedConfig];


NSString* userId = @"userId_example"; // 
NSString* include = @"include_example"; // A list of comma-separated related models to include (optional)

TGUsersApi*apiInstance = [[TGUsersApi alloc] init];

// Get the current User
[apiInstance getCurrentUserWithUserId:userId
              include:include
          completionHandler: ^(TGUser* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling TGUsersApi->getCurrentUser: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **NSString***|  | 
 **include** | **NSString***| A list of comma-separated related models to include | [optional] 

### Return type

[**TGUser***](TGUser.md)

### Authorization

[TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


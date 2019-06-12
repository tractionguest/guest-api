# guest_sdk.api.CredentialsApi

## Load the API package
```dart
import 'package:guest_sdk/api.dart';
```

All URIs are relative to *https://mobile-api-refactor-admin.tractionguest.ca/api/mobile/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCredentials**](CredentialsApi.md#createCredentials) | **POST** /credentials | Creates credentials from login information


# **createCredentials**
> Credential createCredentials(credentialCreateParams)

Creates credentials from login information

### Example 
```dart
import 'package:guest_sdk/api.dart';
// TODO Configure HTTP basic authorization: ApiCredentials
//defaultApiClient.getAuthentication<HttpBasicAuth>('ApiCredentials').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('ApiCredentials').password = 'YOUR_PASSWORD';
// TODO Configure OAuth2 access token for authorization: TractionGuestAuth
//defaultApiClient.getAuthentication<OAuth>('TractionGuestAuth').accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new CredentialsApi();
var credentialCreateParams = new CredentialCreateParams(); // CredentialCreateParams | 

try { 
    var result = api_instance.createCredentials(credentialCreateParams);
    print(result);
} catch (e) {
    print("Exception when calling CredentialsApi->createCredentials: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **credentialCreateParams** | [**CredentialCreateParams**](CredentialCreateParams.md)|  | 

### Return type

[**Credential**](Credential.md)

### Authorization

[ApiCredentials](../README.md#ApiCredentials), [TractionGuestAuth](../README.md#TractionGuestAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


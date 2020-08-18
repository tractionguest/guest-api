part of guest_sdk.api;



class CredentialsApi {
  final ApiClient apiClient;

  CredentialsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Creates credentials from login information
  ///
  /// 
  Future<Credential> createCredentials(CredentialCreateParams credentialCreateParams) async {
    Object postBody = credentialCreateParams;

    // verify required params are set
    if(credentialCreateParams == null) {
     throw new ApiException(400, "Missing required param: credentialCreateParams");
    }

    // create path and map variables
    String path = "/credentials".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["ApiCredentials", "TractionGuestAuth"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Credential') as Credential;
    } else {
      return null;
    }
  }
  /// Deletes a mobile credential
  ///
  /// 
  Future deleteCredential(String credentialId) async {
    Object postBody;

    // verify required params are set
    if(credentialId == null) {
     throw new ApiException(400, "Missing required param: credentialId");
    }

    // create path and map variables
    String path = "/credentials/{credentialId}".replaceAll("{format}","json").replaceAll("{" + "credentialId" + "}", credentialId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["ApiCredentials"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'DELETE',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }
}

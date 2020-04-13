part of guest_sdk.api;



class RegistrationApi {
  final ApiClient apiClient;

  RegistrationApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Get a Registration
  ///
  /// Gets the details of a single instance of a &#x60;Registration&#x60;
  Future<Registration> getRegistration(String registrationId, { String include }) async {
    Object postBody;

    // verify required params are set
    if(registrationId == null) {
     throw new ApiException(400, "Missing required param: registrationId");
    }

    // create path and map variables
    String path = "/registrations/{registrationId}".replaceAll("{format}","json").replaceAll("{" + "registrationId" + "}", registrationId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(include != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "include", include));
    }

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["TractionGuestAuth"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Registration') as Registration;
    } else {
      return null;
    }
  }
}
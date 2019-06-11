part of guest_sdk.api;



class EmailTemplatesApi {
  final ApiClient apiClient;

  EmailTemplatesApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// List All EmailTemplates
  ///
  /// Gets a list of all &#x60;EmailTemplate&#x60; entities.
  Future<PaginatedEmailTemplatesList> getEmailTemplates() async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/email_templates".replaceAll("{format}","json");

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'PaginatedEmailTemplatesList') as PaginatedEmailTemplatesList;
    } else {
      return null;
    }
  }
}

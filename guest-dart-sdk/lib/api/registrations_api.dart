part of guest_sdk.api;



class RegistrationsApi {
  final ApiClient apiClient;

  RegistrationsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Get a Registration
  ///
  /// Gets the details of a single instance of a &#x60;Registration&#x60;
  Future<RegistrationDetail> getRegistration(String registrationId, { String include }) async {
    Object postBody;

    // verify required params are set
    if(registrationId == null) {
     throw new ApiException(400, "Missing required param: registrationId");
    }

    // create path and map variables
    String path = "/registrations/{registration_id}".replaceAll("{format}","json").replaceAll("{" + "registration_id" + "}", registrationId.toString());

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'RegistrationDetail') as RegistrationDetail;
    } else {
      return null;
    }
  }
  /// List all Registrations
  ///
  /// Gets a list of all &#x60;Registration&#x60; entities.
  Future<PaginatedRegistrationsList> getRegistrations({ int limit, int offset, String locationIds, String createdBefore, String createdAfter }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/registrations".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(limit != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "limit", limit));
    }
    if(offset != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "offset", offset));
    }
    if(locationIds != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "location_ids", locationIds));
    }
    if(createdBefore != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "created_before", createdBefore));
    }
    if(createdAfter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "created_after", createdAfter));
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
      return apiClient.deserialize(_decodeBodyBytes(response), 'PaginatedRegistrationsList') as PaginatedRegistrationsList;
    } else {
      return null;
    }
  }
}

part of guest_sdk.api;



class SigninsApi {
  final ApiClient apiClient;

  SigninsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Create Signin
  ///
  /// Creates a Signin
  Future<Signin> createSignin({ SigninCreateParams signinCreateParams }) async {
    Object postBody = signinCreateParams;

    // verify required params are set

    // create path and map variables
    String path = "/signins".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'Signin') as Signin;
    } else {
      return null;
    }
  }
  /// Get a Signin
  ///
  /// Gets the details of a single instance of a &#x60;Signin&#x60;.
  Future<SigninDetail> getSignin(String signinId, { String include }) async {
    Object postBody;

    // verify required params are set
    if(signinId == null) {
     throw new ApiException(400, "Missing required param: signinId");
    }

    // create path and map variables
    String path = "/signins/{signin_id}".replaceAll("{format}","json").replaceAll("{" + "signin_id" + "}", signinId.toString());

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'SigninDetail') as SigninDetail;
    } else {
      return null;
    }
  }
  /// List all Signins
  ///
  /// Gets a list of all &#x60;Signin&#x60; entities.
  Future<PaginatedSigninsList> getSignins({ String locationIds, String withColours, String query, bool withAcknowledged, bool withSignedIn, DateTime signinBefore, DateTime signinAfter, int limit, int offset, String querySort, String include }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/signins".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(locationIds != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "location_ids", locationIds));
    }
    if(withColours != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "with_colours", withColours));
    }
    if(query != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "query", query));
    }
    if(withAcknowledged != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "with_acknowledged", withAcknowledged));
    }
    if(withSignedIn != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "with_signed_in", withSignedIn));
    }
    if(signinBefore != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "signin_before", signinBefore));
    }
    if(signinAfter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "signin_after", signinAfter));
    }
    if(limit != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "limit", limit));
    }
    if(offset != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "offset", offset));
    }
    if(querySort != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "query_sort", querySort));
    }
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
      return apiClient.deserialize(_decodeBodyBytes(response), 'PaginatedSigninsList') as PaginatedSigninsList;
    } else {
      return null;
    }
  }
  /// Update a Signin
  ///
  /// Update, acknowledge, or &#x60;Signout&#x60; a &#x60;Signin&#x60;
  Future<SigninDetail> updateSignin(String signinId, SigninUpdateParams signinUpdateParams, { String idempotencyKey }) async {
    Object postBody = signinUpdateParams;

    // verify required params are set
    if(signinId == null) {
     throw new ApiException(400, "Missing required param: signinId");
    }
    if(signinUpdateParams == null) {
     throw new ApiException(400, "Missing required param: signinUpdateParams");
    }

    // create path and map variables
    String path = "/signins/{signin_id}".replaceAll("{format}","json").replaceAll("{" + "signin_id" + "}", signinId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    headerParams["Idempotency-Key"] = idempotencyKey;

    List<String> contentTypes = ["application/json"];

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
                                             'PUT',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'SigninDetail') as SigninDetail;
    } else {
      return null;
    }
  }
}

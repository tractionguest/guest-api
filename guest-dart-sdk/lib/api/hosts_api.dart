part of guest_sdk.api;



class HostsApi {
  final ApiClient apiClient;

  HostsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Create a Host
  ///
  /// Creates a Host
  Future<Host> createHost(HostCreateParams hostCreateParams, { String idempotencyKey }) async {
    Object postBody = hostCreateParams;

    // verify required params are set
    if(hostCreateParams == null) {
     throw new ApiException(400, "Missing required param: hostCreateParams");
    }

    // create path and map variables
    String path = "/hosts".replaceAll("{format}","json");

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'Host') as Host;
    } else {
      return null;
    }
  }
  /// Create multiple Hosts
  ///
  /// Creates a batch of &#x60;Host&#x60; records in an async queue. Please note, every action taken against this endpoint is recorded in the audit log.
  Future<BatchJob> createHosts({ String idempotencyKey, HostBatchCreateParams hostBatchCreateParams }) async {
    Object postBody = hostBatchCreateParams;

    // verify required params are set

    // create path and map variables
    String path = "/hosts/batch".replaceAll("{format}","json");

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'BatchJob') as BatchJob;
    } else {
      return null;
    }
  }
  /// List all Hosts
  ///
  /// Gets a list of all &#x60;Host&#x60; entities.
  Future<PaginatedHostsList> getHosts({ String query, int limit, int offset, String include }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/hosts".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(query != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "query", query));
    }
    if(limit != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "limit", limit));
    }
    if(offset != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "offset", offset));
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
      return apiClient.deserialize(_decodeBodyBytes(response), 'PaginatedHostsList') as PaginatedHostsList;
    } else {
      return null;
    }
  }
}

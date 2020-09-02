part of guest_sdk.api;



class AuditLogsApi {
  final ApiClient apiClient;

  AuditLogsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Get an AuditLog
  ///
  /// Gets the details of a single instance of an &#x60;AuditLog&#x60;.
  Future<AuditLog> getAuditLog(String auditLogId) async {
    Object postBody;

    // verify required params are set
    if(auditLogId == null) {
     throw new ApiException(400, "Missing required param: auditLogId");
    }

    // create path and map variables
    String path = "/audit_logs/{audit_log_id}".replaceAll("{format}","json").replaceAll("{" + "audit_log_id" + "}", auditLogId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'AuditLog') as AuditLog;
    } else {
      return null;
    }
  }
  /// List all AuditLogs
  ///
  /// Gets a list of all &#x60;AuditLog&#x60; entities.
  Future<PaginatedAuditLogsList> getAuditLogs({ int limit, int offset, String sortBy, int auditableId, String auditableType, String actionType, int userId }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/audit_logs".replaceAll("{format}","json");

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
    if(sortBy != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "sort_by", sortBy));
    }
    if(auditableId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "auditable_id", auditableId));
    }
    if(auditableType != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "auditable_type", auditableType));
    }
    if(actionType != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "action_type", actionType));
    }
    if(userId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "user_id", userId));
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
      return apiClient.deserialize(_decodeBodyBytes(response), 'PaginatedAuditLogsList') as PaginatedAuditLogsList;
    } else {
      return null;
    }
  }
}

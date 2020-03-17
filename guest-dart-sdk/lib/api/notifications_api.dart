part of guest_sdk.api;



class NotificationsApi {
  final ApiClient apiClient;

  NotificationsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Create notifications
  ///
  /// Enqueues notifications to filtered Hosts and/or SignIns via specified channels
  Future createNotification(NotificationsCreateParams notificationsCreateParams) async {
    Object postBody = notificationsCreateParams;

    // verify required params are set
    if(notificationsCreateParams == null) {
     throw new ApiException(400, "Missing required param: notificationsCreateParams");
    }

    // create path and map variables
    String path = "/notifications".replaceAll("{format}","json");

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
    } else {
      return;
    }
  }
}

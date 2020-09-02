part of guest_sdk.api;



class GuestAlertsApi {
  final ApiClient apiClient;

  GuestAlertsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Create GuestAlert
  ///
  /// Enqueues guest alerts via specified channels
  Future<GuestAlertDetail> createGuestAlert(GuestAlertCreateParams guestAlertCreateParams) async {
    Object postBody = guestAlertCreateParams;

    // verify required params are set
    if(guestAlertCreateParams == null) {
     throw new ApiException(400, "Missing required param: guestAlertCreateParams");
    }

    // create path and map variables
    String path = "/guest_alerts".replaceAll("{format}","json");

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'GuestAlertDetail') as GuestAlertDetail;
    } else {
      return null;
    }
  }
}

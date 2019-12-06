part of guest_sdk.api;



class DeliveriesApi {
  final ApiClient apiClient;

  DeliveriesApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Create Delivery
  ///
  /// 
  Future<Delivery> createDelivery(int locationId, DeliveryCreateParams deliveryCreateParams) async {
    Object postBody = deliveryCreateParams;

    // verify required params are set
    if(locationId == null) {
     throw new ApiException(400, "Missing required param: locationId");
    }
    if(deliveryCreateParams == null) {
     throw new ApiException(400, "Missing required param: deliveryCreateParams");
    }

    // create path and map variables
    String path = "/locations/{locationId}/deliveries".replaceAll("{format}","json").replaceAll("{" + "locationId" + "}", locationId.toString());

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'Delivery') as Delivery;
    } else {
      return null;
    }
  }
  /// List all Deliveries
  ///
  /// 
  Future<PaginatedDeliveries> getDeliveries(int locationId, { String include }) async {
    Object postBody;

    // verify required params are set
    if(locationId == null) {
     throw new ApiException(400, "Missing required param: locationId");
    }

    // create path and map variables
    String path = "/locations/{locationId}/deliveries".replaceAll("{format}","json").replaceAll("{" + "locationId" + "}", locationId.toString());

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'PaginatedDeliveries') as PaginatedDeliveries;
    } else {
      return null;
    }
  }
  /// Update a Delivery
  ///
  /// 
  Future<Delivery> updateDelivery(String deliveryId, DeliveryUpdateParams deliveryUpdateParams) async {
    Object postBody = deliveryUpdateParams;

    // verify required params are set
    if(deliveryId == null) {
     throw new ApiException(400, "Missing required param: deliveryId");
    }
    if(deliveryUpdateParams == null) {
     throw new ApiException(400, "Missing required param: deliveryUpdateParams");
    }

    // create path and map variables
    String path = "/deliveries/{deliveryId}".replaceAll("{format}","json").replaceAll("{" + "deliveryId" + "}", deliveryId.toString());

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'Delivery') as Delivery;
    } else {
      return null;
    }
  }
}

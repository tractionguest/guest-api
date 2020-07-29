part of guest_sdk.api;



class CapacitiesApi {
  final ApiClient apiClient;

  CapacitiesApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Get the current capacity details for a location
  ///
  /// Get details of current capacity in a location
  Future<Capacity> getCapacity(String locationId) async {
    Object postBody;

    // verify required params are set
    if(locationId == null) {
     throw new ApiException(400, "Missing required param: locationId");
    }

    // create path and map variables
    String path = "/locations/{location_id}/capacities".replaceAll("{format}","json").replaceAll("{" + "location_id" + "}", locationId.toString());

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'Capacity') as Capacity;
    } else {
      return null;
    }
  }
  /// Get the capacity details for a location
  ///
  /// Gets the details of the future capacity in a location.
  Future<CapacityForecast> getCapacityForecast(String locationId, { int hoursToForecast, String timestamp }) async {
    Object postBody;

    // verify required params are set
    if(locationId == null) {
     throw new ApiException(400, "Missing required param: locationId");
    }

    // create path and map variables
    String path = "/locations/{location_id}/capacity_forecasts".replaceAll("{format}","json").replaceAll("{" + "location_id" + "}", locationId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(hoursToForecast != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "hours_to_forecast", hoursToForecast));
    }
    if(timestamp != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "timestamp", timestamp));
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
      return apiClient.deserialize(_decodeBodyBytes(response), 'CapacityForecast') as CapacityForecast;
    } else {
      return null;
    }
  }
}

part of guest_sdk.api;



class LocationsApi {
  final ApiClient apiClient;

  LocationsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Get the details of a location
  ///
  /// Gets details of a single instance of &#x60;Location&#x60;.
  Future<Location> getLocation(String locationId) async {
    Object postBody;

    // verify required params are set
    if(locationId == null) {
     throw new ApiException(400, "Missing required param: locationId");
    }

    // create path and map variables
    String path = "/locations/{location_id}".replaceAll("{format}","json").replaceAll("{" + "location_id" + "}", locationId.toString());

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'Location') as Location;
    } else {
      return null;
    }
  }
  /// List all Locations
  ///
  /// Gets a list of all &#x60;Location&#x60; entities.
  Future<PaginatedLocationsList> getLocations({ int limit, int offset, String query, String include }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/locations".replaceAll("{format}","json");

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
    if(query != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "query", query));
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
      return apiClient.deserialize(_decodeBodyBytes(response), 'PaginatedLocationsList') as PaginatedLocationsList;
    } else {
      return null;
    }
  }
}

part of guest_sdk.api;



class WatchlistsApi {
  final ApiClient apiClient;

  WatchlistsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Create Watchlist
  ///
  /// Create a new &#x60;Watchlist&#x60; record. Please note, every action taken against this endpoint is recorded in the audit log.
  Future<Watchlist> createWatchlist(WatchlistCreateParams watchlistCreateParams, { String idempotencyKey }) async {
    Object postBody = watchlistCreateParams;

    // verify required params are set
    if(watchlistCreateParams == null) {
     throw new ApiException(400, "Missing required param: watchlistCreateParams");
    }

    // create path and map variables
    String path = "/watchlists".replaceAll("{format}","json");

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'Watchlist') as Watchlist;
    } else {
      return null;
    }
  }
  /// Deletes a Watchlist
  ///
  /// Deletes a single instance of &#x60;Watchlist&#x60;
  Future deleteWatchlist(String watchlistId, { String idempotencyKey }) async {
    Object postBody;

    // verify required params are set
    if(watchlistId == null) {
     throw new ApiException(400, "Missing required param: watchlistId");
    }

    // create path and map variables
    String path = "/watchlists/{watchlist_id}".replaceAll("{format}","json").replaceAll("{" + "watchlist_id" + "}", watchlistId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    headerParams["Idempotency-Key"] = idempotencyKey;

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
                                             'DELETE',
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
  /// Get a Watchlist
  ///
  /// Gets the details of a single instance of a &#x60;Watchlist&#x60;.
  Future<Watchlist> getWatchlist(String watchlistId, { String include }) async {
    Object postBody;

    // verify required params are set
    if(watchlistId == null) {
     throw new ApiException(400, "Missing required param: watchlistId");
    }

    // create path and map variables
    String path = "/watchlists/{watchlist_id}".replaceAll("{format}","json").replaceAll("{" + "watchlist_id" + "}", watchlistId.toString());

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'Watchlist') as Watchlist;
    } else {
      return null;
    }
  }
  /// List all Watchlists
  ///
  /// Gets a list of all &#x60;Watchlist&#x60; entities.
  Future<PaginatedWatchlistList> getWatchlists({ int limit, int offset, String query, String withColours, String include }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/watchlists".replaceAll("{format}","json");

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
    if(withColours != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "with_colours", withColours));
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
      return apiClient.deserialize(_decodeBodyBytes(response), 'PaginatedWatchlistList') as PaginatedWatchlistList;
    } else {
      return null;
    }
  }
  /// Update a Watchlist
  ///
  /// Update an existing &#x60;Watchlist&#x60; record. Every operation against this endpoint is recorded in the audit log.
  Future<Watchlist> updateWatchlist(String watchlistId, WatchlistCreateParams watchlistCreateParams, { String idempotencyKey }) async {
    Object postBody = watchlistCreateParams;

    // verify required params are set
    if(watchlistId == null) {
     throw new ApiException(400, "Missing required param: watchlistId");
    }
    if(watchlistCreateParams == null) {
     throw new ApiException(400, "Missing required param: watchlistCreateParams");
    }

    // create path and map variables
    String path = "/watchlists/{watchlist_id}".replaceAll("{format}","json").replaceAll("{" + "watchlist_id" + "}", watchlistId.toString());

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'Watchlist') as Watchlist;
    } else {
      return null;
    }
  }
}

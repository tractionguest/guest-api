part of guest_sdk.api;



class WatchlistsApi {
  final ApiClient apiClient;

  WatchlistsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Get a Watchlist
  ///
  /// Gets the details of a single instance of a &#x60;Watchlist&#x60;.
  Future<Watchlist> getWatchlist(String watchlistId) async {
    Object postBody;

    // verify required params are set
    if(watchlistId == null) {
     throw new ApiException(400, "Missing required param: watchlistId");
    }

    // create path and map variables
    String path = "/watchlists/{watchlistId}".replaceAll("{format}","json").replaceAll("{" + "watchlistId" + "}", watchlistId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["ApiCredentials", "TractionGuestAuth"];

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
  /// List All Watchlists
  ///
  /// Gets a list of all &#x60;Watchlist&#x60; entities.
  Future<PaginatedWatchlistList> getWatchlists({ int limit, int offset, String query, String withColours }) async {
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

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["ApiCredentials", "TractionGuestAuth"];

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
}

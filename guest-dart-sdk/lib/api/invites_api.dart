part of guest_sdk.api;



class InvitesApi {
  final ApiClient apiClient;

  InvitesApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Creates an Invite
  ///
  /// Creates a new &#x60;Invite&#x60; for a specific &#x60;Location&#x60;.
  Future<Invite> createLocationInvite(String locationId, Invite invite) async {
    Object postBody = invite;

    // verify required params are set
    if(locationId == null) {
     throw new ApiException(400, "Missing required param: locationId");
    }
    if(invite == null) {
     throw new ApiException(400, "Missing required param: invite");
    }

    // create path and map variables
    String path = "/locations/{locationId}/invites".replaceAll("{format}","json").replaceAll("{" + "locationId" + "}", locationId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["ApiCredentials"];

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'Invite') as Invite;
    } else {
      return null;
    }
  }
  /// Get a Invite
  ///
  /// Gets the details of a single instance of a &#x60;Invite&#x60;.
  Future<InviteDetail> getInvite(String inviteId) async {
    Object postBody;

    // verify required params are set
    if(inviteId == null) {
     throw new ApiException(400, "Missing required param: inviteId");
    }

    // create path and map variables
    String path = "/invites/{inviteId}".replaceAll("{format}","json").replaceAll("{" + "inviteId" + "}", inviteId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["ApiCredentials"];

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'InviteDetail') as InviteDetail;
    } else {
      return null;
    }
  }
  /// List All Invites
  ///
  /// Gets a list of all &#x60;Invite&#x60; entities.
  Future<PaginatedInvitesList> getInvites() async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/invites".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["ApiCredentials"];

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'PaginatedInvitesList') as PaginatedInvitesList;
    } else {
      return null;
    }
  }
  /// Update a Invite
  ///
  /// Updates an existing &#x60;Invite&#x60;.
  Future<InviteDetail> updateInvite(String inviteId, InviteUpdateParams inviteUpdateParams) async {
    Object postBody = inviteUpdateParams;

    // verify required params are set
    if(inviteId == null) {
     throw new ApiException(400, "Missing required param: inviteId");
    }
    if(inviteUpdateParams == null) {
     throw new ApiException(400, "Missing required param: inviteUpdateParams");
    }

    // create path and map variables
    String path = "/invites/{inviteId}".replaceAll("{format}","json").replaceAll("{" + "inviteId" + "}", inviteId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["ApiCredentials"];

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
      return apiClient.deserialize(_decodeBodyBytes(response), 'InviteDetail') as InviteDetail;
    } else {
      return null;
    }
  }
}

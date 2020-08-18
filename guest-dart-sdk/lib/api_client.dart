part of guest_sdk.api;

class QueryParam {
  String name;
  String value;

  QueryParam(this.name, this.value);
}

class ApiClient {

  String basePath;
  var client = Client();

  Map<String, String> _defaultHeaderMap = {};
  Map<String, Authentication> _authentications = {};

  final _regList = RegExp(r'^List<(.*)>$');
  final _regMap = RegExp(r'^Map<String,(.*)>$');

  ApiClient({this.basePath = "https://tractionguest.ca/api/v3"}) {
    // Setup authentications (key: authentication name, value: authentication).
  }

  void addDefaultHeader(String key, String value) {
     _defaultHeaderMap[key] = value;
  }

  dynamic _deserialize(dynamic value, String targetType) {
    try {
      switch (targetType) {
        case 'String':
          return '$value';
        case 'int':
          return value is int ? value : int.parse('$value');
        case 'bool':
          return value is bool ? value : '$value'.toLowerCase() == 'true';
        case 'double':
          return value is double ? value : double.parse('$value');
        case 'AuditLog':
          return AuditLog.fromJson(value);
        case 'AuditLogChange':
          return AuditLogChange.fromJson(value);
        case 'BatchJob':
          return BatchJob.fromJson(value);
        case 'Capacity':
          return Capacity.fromJson(value);
        case 'CapacityByHourResponse':
          return CapacityByHourResponse.fromJson(value);
        case 'CapacityForecast':
          return CapacityForecast.fromJson(value);
        case 'CustomField':
          return CustomField.fromJson(value);
        case 'Docusign':
          return Docusign.fromJson(value);
        case 'EmailTemplate':
          return EmailTemplate.fromJson(value);
        case 'Error':
          return Error.fromJson(value);
        case 'ErrorsList':
          return ErrorsList.fromJson(value);
        case 'ExternalWatchlistResult':
          return ExternalWatchlistResult.fromJson(value);
        case 'GroupVisit':
          return GroupVisit.fromJson(value);
        case 'GuestAlertCreateParams':
          return GuestAlertCreateParams.fromJson(value);
        case 'GuestAlertDetail':
          return GuestAlertDetail.fromJson(value);
        case 'GuestAlertSigninSelectors':
          return GuestAlertSigninSelectors.fromJson(value);
        case 'GuestResponse':
          return GuestResponse.fromJson(value);
        case 'Host':
          return Host.fromJson(value);
        case 'HostBatchCreateParams':
          return HostBatchCreateParams.fromJson(value);
        case 'HostCreateParams':
          return HostCreateParams.fromJson(value);
        case 'Image':
          return Image.fromJson(value);
        case 'InternalWatchlistResult':
          return InternalWatchlistResult.fromJson(value);
        case 'Invite':
          return Invite.fromJson(value);
        case 'InviteCreateParams':
          return InviteCreateParams.fromJson(value);
        case 'InviteDetail':
          return InviteDetail.fromJson(value);
        case 'InviteUpdateParams':
          return InviteUpdateParams.fromJson(value);
        case 'InviteWatchlist':
          return InviteWatchlist.fromJson(value);
        case 'Location':
          return Location.fromJson(value);
        case 'NotificationTrigger':
          return NotificationTrigger.fromJson(value);
        case 'NotificationTriggerCreateParams':
          return NotificationTriggerCreateParams.fromJson(value);
        case 'Package':
          return Package.fromJson(value);
        case 'PackageCreateParams':
          return PackageCreateParams.fromJson(value);
        case 'PackageUpdateParams':
          return PackageUpdateParams.fromJson(value);
        case 'PaginatedAuditLogsList':
          return PaginatedAuditLogsList.fromJson(value);
        case 'PaginatedEmailTemplatesList':
          return PaginatedEmailTemplatesList.fromJson(value);
        case 'PaginatedHostsList':
          return PaginatedHostsList.fromJson(value);
        case 'PaginatedInvitesList':
          return PaginatedInvitesList.fromJson(value);
        case 'PaginatedLocationsList':
          return PaginatedLocationsList.fromJson(value);
        case 'PaginatedPackagesList':
          return PaginatedPackagesList.fromJson(value);
        case 'PaginatedRegistrationsList':
          return PaginatedRegistrationsList.fromJson(value);
        case 'PaginatedSigninsList':
          return PaginatedSigninsList.fromJson(value);
        case 'PaginatedWatchlistList':
          return PaginatedWatchlistList.fromJson(value);
        case 'Pagination':
          return Pagination.fromJson(value);
        case 'PermissionGroup':
          return PermissionGroup.fromJson(value);
        case 'Registration':
          return Registration.fromJson(value);
        case 'RegistrationDetail':
          return RegistrationDetail.fromJson(value);
        case 'SignableDocument':
          return SignableDocument.fromJson(value);
        case 'Signin':
          return Signin.fromJson(value);
        case 'SigninAcknowledgement':
          return SigninAcknowledgement.fromJson(value);
        case 'SigninCreateParams':
          return SigninCreateParams.fromJson(value);
        case 'SigninData':
          return SigninData.fromJson(value);
        case 'SigninDetail':
          return SigninDetail.fromJson(value);
        case 'SigninUpdateParams':
          return SigninUpdateParams.fromJson(value);
        case 'SigninWatchlist':
          return SigninWatchlist.fromJson(value);
        case 'SimpleSignature':
          return SimpleSignature.fromJson(value);
        case 'User':
          return User.fromJson(value);
        case 'Visitor':
          return Visitor.fromJson(value);
        case 'Watchlist':
          return Watchlist.fromJson(value);
        case 'WatchlistCreateParams':
          return WatchlistCreateParams.fromJson(value);
        case 'WatchlistMatch':
          return WatchlistMatch.fromJson(value);
        case 'WatchlistSearch':
          return WatchlistSearch.fromJson(value);
        default:
          {
            Match match;
            if (value is List &&
                (match = _regList.firstMatch(targetType)) != null) {
              var newTargetType = match[1];
              return value.map((v) => _deserialize(v, newTargetType)).toList();
            } else if (value is Map &&
                (match = _regMap.firstMatch(targetType)) != null) {
              var newTargetType = match[1];
              return Map.fromIterables(value.keys,
                  value.values.map((v) => _deserialize(v, newTargetType)));
            }
          }
      }
    } on Exception catch (e, stack) {
      throw ApiException.withInner(500, 'Exception during deserialization.', e, stack);
    }
    throw ApiException(500, 'Could not find a suitable class for deserialization');
  }

  dynamic deserialize(String json, String targetType) {
    // Remove all spaces.  Necessary for reg expressions as well.
    targetType = targetType.replaceAll(' ', '');

    if (targetType == 'String') return json;

    var decodedJson = jsonDecode(json);
    return _deserialize(decodedJson, targetType);
  }

  String serialize(Object obj) {
    String serialized = '';
    if (obj == null) {
      serialized = '';
    } else {
      serialized = json.encode(obj);
    }
    return serialized;
  }

  // We don't use a Map<String, String> for queryParams.
  // If collectionFormat is 'multi' a key might appear multiple times.
  Future<Response> invokeAPI(String path,
                             String method,
                             Iterable<QueryParam> queryParams,
                             Object body,
                             Map<String, String> headerParams,
                             Map<String, String> formParams,
                             String contentType,
                             List<String> authNames) async {

    _updateParamsForAuth(authNames, queryParams, headerParams);

    var ps = queryParams
      .where((p) => p.value != null)
      .map((p) => '${p.name}=${Uri.encodeQueryComponent(p.value)}');

    String queryString = ps.isNotEmpty ?
                         '?' + ps.join('&') :
                         '';

    String url = basePath + path + queryString;

    headerParams.addAll(_defaultHeaderMap);
    headerParams['Content-Type'] = contentType;

    if(body is MultipartRequest) {
      var request = MultipartRequest(method, Uri.parse(url));
      request.fields.addAll(body.fields);
      request.files.addAll(body.files);
      request.headers.addAll(body.headers);
      request.headers.addAll(headerParams);
      var response = await client.send(request);
      return Response.fromStream(response);
    } else {
      var msgBody = contentType == "application/x-www-form-urlencoded" ? formParams : serialize(body);
      switch(method) {
        case "POST":
          return client.post(url, headers: headerParams, body: msgBody);
        case "PUT":
          return client.put(url, headers: headerParams, body: msgBody);
        case "DELETE":
          return client.delete(url, headers: headerParams);
        case "PATCH":
          return client.patch(url, headers: headerParams, body: msgBody);
        default:
          return client.get(url, headers: headerParams);
      }
    }
  }

  /// Update query and header parameters based on authentication settings.
  /// @param authNames The authentications to apply
  void _updateParamsForAuth(List<String> authNames, List<QueryParam> queryParams, Map<String, String> headerParams) {
    authNames.forEach((authName) {
      Authentication auth = _authentications[authName];
      if (auth == null) throw ArgumentError("Authentication undefined: " + authName);
      auth.applyToParams(queryParams, headerParams);
    });
  }

  T getAuthentication<T extends Authentication>(String name) {
    var authentication = _authentications[name];

    return authentication is T ? authentication : null;
  }
}

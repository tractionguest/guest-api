part of guest_sdk.api;

class NotificationsSigninFilterParams {
  
  List<int> locationIds = [];
  
  DateTime signedInBefore = null;
  
  DateTime signedInAfter = null;
  
  List<int> signinIds = [];
  
  bool isSignedOut = null;
  NotificationsSigninFilterParams();

  @override
  String toString() {
    return 'NotificationsSigninFilterParams[locationIds=$locationIds, signedInBefore=$signedInBefore, signedInAfter=$signedInAfter, signinIds=$signinIds, isSignedOut=$isSignedOut, ]';
  }

  NotificationsSigninFilterParams.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['location_ids'] == null) {
      locationIds = null;
    } else {
      locationIds = (json['location_ids'] as List).cast<int>();
    }
    if (json['signed_in_before'] == null) {
      signedInBefore = null;
    } else {
      signedInBefore = DateTime.parse(json['signed_in_before']);
    }
    if (json['signed_in_after'] == null) {
      signedInAfter = null;
    } else {
      signedInAfter = DateTime.parse(json['signed_in_after']);
    }
    if (json['signin_ids'] == null) {
      signinIds = null;
    } else {
      signinIds = (json['signin_ids'] as List).cast<int>();
    }
    if (json['is_signed_out'] == null) {
      isSignedOut = null;
    } else {
          isSignedOut = json['is_signed_out'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (locationIds != null)
      json['location_ids'] = locationIds;
    if (signedInBefore != null)
      json['signed_in_before'] = signedInBefore == null ? null : signedInBefore.toUtc().toIso8601String();
    if (signedInAfter != null)
      json['signed_in_after'] = signedInAfter == null ? null : signedInAfter.toUtc().toIso8601String();
    if (signinIds != null)
      json['signin_ids'] = signinIds;
    if (isSignedOut != null)
      json['is_signed_out'] = isSignedOut;
    return json;
  }

  static List<NotificationsSigninFilterParams> listFromJson(List<dynamic> json) {
    return json == null ? new List<NotificationsSigninFilterParams>() : json.map((value) => new NotificationsSigninFilterParams.fromJson(value)).toList();
  }

  static Map<String, NotificationsSigninFilterParams> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, NotificationsSigninFilterParams>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new NotificationsSigninFilterParams.fromJson(value));
    }
    return map;
  }
}


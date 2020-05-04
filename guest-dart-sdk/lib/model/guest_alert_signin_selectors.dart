part of guest_sdk.api;

class GuestAlertSigninSelectors {
  /*  */
  bool isSignedOut = null;
  /*  */
  List<int> signinIds = [];
  /*  */
  List<int> locationIds = [];
  GuestAlertSigninSelectors();

  @override
  String toString() {
    return 'GuestAlertSigninSelectors[isSignedOut=$isSignedOut, signinIds=$signinIds, locationIds=$locationIds, ]';
  }

  GuestAlertSigninSelectors.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['is_signed_out'] == null) {
      isSignedOut = null;
    } else {
          isSignedOut = json['is_signed_out'];
    }
    if (json['signin_ids'] == null) {
      signinIds = null;
    } else {
      signinIds = (json['signin_ids'] as List).cast<int>();
    }
    if (json['location_ids'] == null) {
      locationIds = null;
    } else {
      locationIds = (json['location_ids'] as List).cast<int>();
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (isSignedOut != null)
      json['is_signed_out'] = isSignedOut;
    if (signinIds != null)
      json['signin_ids'] = signinIds;
    if (locationIds != null)
      json['location_ids'] = locationIds;
    return json;
  }

  static List<GuestAlertSigninSelectors> listFromJson(List<dynamic> json) {
    return json == null ? new List<GuestAlertSigninSelectors>() : json.map((value) => new GuestAlertSigninSelectors.fromJson(value)).toList();
  }

  static Map<String, GuestAlertSigninSelectors> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, GuestAlertSigninSelectors>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new GuestAlertSigninSelectors.fromJson(value));
    }
    return map;
  }
}


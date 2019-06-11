part of guest_sdk.api;

class SigninUpdateParams {
  /* Used to sign out the `Signin`, can only be set to `true`. */
  bool isSignedOut = null;
  /* Used to acknowledge the `Signin`, can only be set to `true`. */
  bool isAcknowledged = null;
  
  String badgeNumber = null;
  
  bool badgeReturned = null;
  
  bool isAccountedFor = null;
  SigninUpdateParams();

  @override
  String toString() {
    return 'SigninUpdateParams[isSignedOut=$isSignedOut, isAcknowledged=$isAcknowledged, badgeNumber=$badgeNumber, badgeReturned=$badgeReturned, isAccountedFor=$isAccountedFor, ]';
  }

  SigninUpdateParams.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['is_signed_out'] == null) {
      isSignedOut = null;
    } else {
          isSignedOut = json['is_signed_out'];
    }
    if (json['is_acknowledged'] == null) {
      isAcknowledged = null;
    } else {
          isAcknowledged = json['is_acknowledged'];
    }
    if (json['badge_number'] == null) {
      badgeNumber = null;
    } else {
          badgeNumber = json['badge_number'];
    }
    if (json['badge_returned'] == null) {
      badgeReturned = null;
    } else {
          badgeReturned = json['badge_returned'];
    }
    if (json['is_accounted_for'] == null) {
      isAccountedFor = null;
    } else {
          isAccountedFor = json['is_accounted_for'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (isSignedOut != null)
      json['is_signed_out'] = isSignedOut;
    if (isAcknowledged != null)
      json['is_acknowledged'] = isAcknowledged;
    if (badgeNumber != null)
      json['badge_number'] = badgeNumber;
    if (badgeReturned != null)
      json['badge_returned'] = badgeReturned;
    if (isAccountedFor != null)
      json['is_accounted_for'] = isAccountedFor;
    return json;
  }

  static List<SigninUpdateParams> listFromJson(List<dynamic> json) {
    return json == null ? new List<SigninUpdateParams>() : json.map((value) => new SigninUpdateParams.fromJson(value)).toList();
  }

  static Map<String, SigninUpdateParams> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, SigninUpdateParams>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new SigninUpdateParams.fromJson(value));
    }
    return map;
  }
}


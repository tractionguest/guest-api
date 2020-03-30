part of guest_sdk.api;

class GuestAlertCreateParams {
  /* Plain text of the alert to be sent */
  String message = null;
  /* Specify the broadcast channel, one of 'SMS' and/or 'EMAIL' */
  List<String> channels = [];
  
  GuestAlertSigninSelectors signinSelectors = null;
  GuestAlertCreateParams();

  @override
  String toString() {
    return 'GuestAlertCreateParams[message=$message, channels=$channels, signinSelectors=$signinSelectors, ]';
  }

  GuestAlertCreateParams.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['message'] == null) {
      message = null;
    } else {
          message = json['message'];
    }
    if (json['channels'] == null) {
      channels = null;
    } else {
      channels = (json['channels'] as List).cast<String>();
    }
    if (json['signin_selectors'] == null) {
      signinSelectors = null;
    } else {
      signinSelectors = new GuestAlertSigninSelectors.fromJson(json['signin_selectors']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (message != null)
      json['message'] = message;
    if (channels != null)
      json['channels'] = channels;
    if (signinSelectors != null)
      json['signin_selectors'] = signinSelectors;
    return json;
  }

  static List<GuestAlertCreateParams> listFromJson(List<dynamic> json) {
    return json == null ? new List<GuestAlertCreateParams>() : json.map((value) => new GuestAlertCreateParams.fromJson(value)).toList();
  }

  static Map<String, GuestAlertCreateParams> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, GuestAlertCreateParams>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new GuestAlertCreateParams.fromJson(value));
    }
    return map;
  }
}


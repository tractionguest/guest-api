part of guest_sdk.api;

class NotificationsCreateParams {
  /* Notification body  */
  String message = null;
  
  NotificationsSigninFilterParams signinFilters = null;
  /* Specify the broadcast channel, such as 'SMS' or 'EMAIL' */
  String channels = null;
  //enum channelsEnum {  SMS,  EMAIL,  };{
  
  NotificationsHostFilterParams hostFilters = null;
  /* The type of object that will receive the notification such as, 'signin' or 'host' */
  String target = null;
  //enum targetEnum {  HOSTS,  SIGNINS,  };{
  NotificationsCreateParams();

  @override
  String toString() {
    return 'NotificationsCreateParams[message=$message, signinFilters=$signinFilters, channels=$channels, hostFilters=$hostFilters, target=$target, ]';
  }

  NotificationsCreateParams.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['message'] == null) {
      message = null;
    } else {
          message = json['message'];
    }
    if (json['signin_filters'] == null) {
      signinFilters = null;
    } else {
      signinFilters = new NotificationsSigninFilterParams.fromJson(json['signin_filters']);
    }
    if (json['channels'] == null) {
      channels = null;
    } else {
          channels = json['channels'];
    }
    if (json['host_filters'] == null) {
      hostFilters = null;
    } else {
      hostFilters = new NotificationsHostFilterParams.fromJson(json['host_filters']);
    }
    if (json['target'] == null) {
      target = null;
    } else {
          target = json['target'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (message != null)
      json['message'] = message;
    if (signinFilters != null)
      json['signin_filters'] = signinFilters;
    if (channels != null)
      json['channels'] = channels;
    if (hostFilters != null)
      json['host_filters'] = hostFilters;
    if (target != null)
      json['target'] = target;
    return json;
  }

  static List<NotificationsCreateParams> listFromJson(List<dynamic> json) {
    return json == null ? new List<NotificationsCreateParams>() : json.map((value) => new NotificationsCreateParams.fromJson(value)).toList();
  }

  static Map<String, NotificationsCreateParams> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, NotificationsCreateParams>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new NotificationsCreateParams.fromJson(value));
    }
    return map;
  }
}


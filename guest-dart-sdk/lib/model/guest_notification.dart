part of guest_sdk.api;

class GuestNotification {
  /* Will be used for the email body and the SMS text payload */
  String messageBody = null;
  /* Will be used for the email subject */
  String messageTitle = null;
  
  List<int> signinIds = [];
  GuestNotification();

  @override
  String toString() {
    return 'GuestNotification[messageBody=$messageBody, messageTitle=$messageTitle, signinIds=$signinIds, ]';
  }

  GuestNotification.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['message_body'] == null) {
      messageBody = null;
    } else {
          messageBody = json['message_body'];
    }
    if (json['message_title'] == null) {
      messageTitle = null;
    } else {
          messageTitle = json['message_title'];
    }
    if (json['signin_ids'] == null) {
      signinIds = null;
    } else {
      signinIds = (json['signin_ids'] as List).cast<int>();
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (messageBody != null)
      json['message_body'] = messageBody;
    if (messageTitle != null)
      json['message_title'] = messageTitle;
    if (signinIds != null)
      json['signin_ids'] = signinIds;
    return json;
  }

  static List<GuestNotification> listFromJson(List<dynamic> json) {
    return json == null ? new List<GuestNotification>() : json.map((value) => new GuestNotification.fromJson(value)).toList();
  }

  static Map<String, GuestNotification> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, GuestNotification>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new GuestNotification.fromJson(value));
    }
    return map;
  }
}


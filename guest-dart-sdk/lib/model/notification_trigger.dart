part of guest_sdk.api;

class NotificationTrigger {
  /* Whether the offset should be calculated for before, or after the event */
  String offsetDirection = null;
  //enum offsetDirectionEnum {  BEFORE,  AFTER,  };{
  /* Whether the offset should be calculated as `days` or `hours` */
  String offsetType = null;
  //enum offsetTypeEnum {  days,  hours,  };{
  /* The amount to offset the notification from the event */
  int offsetAmount = null;
  /* Whether the offset should be calculated from the start, or finish of the event */
  String offsetOrigin = null;
  //enum offsetOriginEnum {  START,  END,  };{
  
  int emailTemplateId = null;
  /* An array made of only `INVITEE`, `HOSTS, or `LEP` as possible string values */
  List<String> notificationGroups = [];
  NotificationTrigger();

  @override
  String toString() {
    return 'NotificationTrigger[offsetDirection=$offsetDirection, offsetType=$offsetType, offsetAmount=$offsetAmount, offsetOrigin=$offsetOrigin, emailTemplateId=$emailTemplateId, notificationGroups=$notificationGroups, ]';
  }

  NotificationTrigger.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['offset_direction'] == null) {
      offsetDirection = null;
    } else {
          offsetDirection = json['offset_direction'];
    }
    if (json['offset_type'] == null) {
      offsetType = null;
    } else {
          offsetType = json['offset_type'];
    }
    if (json['offset_amount'] == null) {
      offsetAmount = null;
    } else {
          offsetAmount = json['offset_amount'];
    }
    if (json['offset_origin'] == null) {
      offsetOrigin = null;
    } else {
          offsetOrigin = json['offset_origin'];
    }
    if (json['email_template_id'] == null) {
      emailTemplateId = null;
    } else {
          emailTemplateId = json['email_template_id'];
    }
    if (json['notification_groups'] == null) {
      notificationGroups = null;
    } else {
      notificationGroups = (json['notification_groups'] as List).cast<String>();
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (offsetDirection != null)
      json['offset_direction'] = offsetDirection;
    if (offsetType != null)
      json['offset_type'] = offsetType;
    if (offsetAmount != null)
      json['offset_amount'] = offsetAmount;
    if (offsetOrigin != null)
      json['offset_origin'] = offsetOrigin;
    if (emailTemplateId != null)
      json['email_template_id'] = emailTemplateId;
    if (notificationGroups != null)
      json['notification_groups'] = notificationGroups;
    return json;
  }

  static List<NotificationTrigger> listFromJson(List<dynamic> json) {
    return json == null ? new List<NotificationTrigger>() : json.map((value) => new NotificationTrigger.fromJson(value)).toList();
  }

  static Map<String, NotificationTrigger> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, NotificationTrigger>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new NotificationTrigger.fromJson(value));
    }
    return map;
  }
}


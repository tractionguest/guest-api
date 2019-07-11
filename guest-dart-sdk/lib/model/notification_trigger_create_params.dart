part of guest_sdk.api;

class NotificationTriggerCreateParams {
  /* Whether the offset should be calculated for before, or after the event */
  String offsetDirection = null;
  //enum offsetDirectionEnum {  BEFORE,  AFTER,  };{
  /* The amount to offset the notification from the event */
  int offsetAmount = null;
  /* Whether the offset should be calculated from the start, or finish of the event */
  String offsetOrigin = null;
  //enum offsetOriginEnum {  START,  END,  };{
  
  int emailTemplateId = null;
  /* An array made of only `INVITEE`, `HOSTS, or `LEP` as possible string values */
  List<String> notificationGroups = [];
  /* Whether the offset should be calculated as `days` or `hours` */
  String offsetUnit = null;
  //enum offsetUnitEnum {  days,  hours,  };{
  NotificationTriggerCreateParams();

  @override
  String toString() {
    return 'NotificationTriggerCreateParams[offsetDirection=$offsetDirection, offsetAmount=$offsetAmount, offsetOrigin=$offsetOrigin, emailTemplateId=$emailTemplateId, notificationGroups=$notificationGroups, offsetUnit=$offsetUnit, ]';
  }

  NotificationTriggerCreateParams.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['offset_direction'] == null) {
      offsetDirection = null;
    } else {
          offsetDirection = json['offset_direction'];
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
    if (json['offset_unit'] == null) {
      offsetUnit = null;
    } else {
          offsetUnit = json['offset_unit'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (offsetDirection != null)
      json['offset_direction'] = offsetDirection;
    if (offsetAmount != null)
      json['offset_amount'] = offsetAmount;
    if (offsetOrigin != null)
      json['offset_origin'] = offsetOrigin;
    if (emailTemplateId != null)
      json['email_template_id'] = emailTemplateId;
    if (notificationGroups != null)
      json['notification_groups'] = notificationGroups;
    if (offsetUnit != null)
      json['offset_unit'] = offsetUnit;
    return json;
  }

  static List<NotificationTriggerCreateParams> listFromJson(List<dynamic> json) {
    return json == null ? new List<NotificationTriggerCreateParams>() : json.map((value) => new NotificationTriggerCreateParams.fromJson(value)).toList();
  }

  static Map<String, NotificationTriggerCreateParams> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, NotificationTriggerCreateParams>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new NotificationTriggerCreateParams.fromJson(value));
    }
    return map;
  }
}


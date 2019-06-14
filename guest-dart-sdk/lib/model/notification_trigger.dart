part of guest_sdk.api;

class NotificationTrigger {
  
  String subject = null;
  
  String title = null;
  
  String message = null;
  
  List<String> notificationGroupNames = [];
  /* trigger_target */
  String triggerTarget = null;
  //enum triggerTargetEnum {  START,  END,  };{
  /* trigger_span */
  String triggerSpan = null;
  //enum triggerSpanEnum {  days,  hours,  };{
  /* trigger_pointer */
  String triggerPointer = null;
  //enum triggerPointerEnum {  BEFORE,  AFTER,  };{
  /* the trigger_number */
  int eventOffset = null;
  NotificationTrigger();

  @override
  String toString() {
    return 'NotificationTrigger[subject=$subject, title=$title, message=$message, notificationGroupNames=$notificationGroupNames, triggerTarget=$triggerTarget, triggerSpan=$triggerSpan, triggerPointer=$triggerPointer, eventOffset=$eventOffset, ]';
  }

  NotificationTrigger.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['subject'] == null) {
      subject = null;
    } else {
          subject = json['subject'];
    }
    if (json['title'] == null) {
      title = null;
    } else {
          title = json['title'];
    }
    if (json['message'] == null) {
      message = null;
    } else {
          message = json['message'];
    }
    if (json['notification_group_names'] == null) {
      notificationGroupNames = null;
    } else {
      notificationGroupNames = (json['notification_group_names'] as List).cast<String>();
    }
    if (json['trigger_target'] == null) {
      triggerTarget = null;
    } else {
          triggerTarget = json['trigger_target'];
    }
    if (json['trigger_span'] == null) {
      triggerSpan = null;
    } else {
          triggerSpan = json['trigger_span'];
    }
    if (json['trigger_pointer'] == null) {
      triggerPointer = null;
    } else {
          triggerPointer = json['trigger_pointer'];
    }
    if (json['event_offset'] == null) {
      eventOffset = null;
    } else {
          eventOffset = json['event_offset'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (subject != null)
      json['subject'] = subject;
    if (title != null)
      json['title'] = title;
    if (message != null)
      json['message'] = message;
    if (notificationGroupNames != null)
      json['notification_group_names'] = notificationGroupNames;
    if (triggerTarget != null)
      json['trigger_target'] = triggerTarget;
    if (triggerSpan != null)
      json['trigger_span'] = triggerSpan;
    if (triggerPointer != null)
      json['trigger_pointer'] = triggerPointer;
    if (eventOffset != null)
      json['event_offset'] = eventOffset;
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


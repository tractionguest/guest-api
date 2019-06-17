part of guest_sdk.api;

class InviteUpdateParams {
  
  String company = null;
  
  String email = null;
  
  DateTime endDate = null;
  
  String lastName = null;
  
  DateTime startDate = null;
  
  String title = null;
  
  List<int> hostIds = [];
  
  List<CustomField> customFields = [];
  
  int emailTemplateId = null;
  
  String mobile = null;
  
  String firstName = null;
  
  List<NotificationTrigger> notificationTriggers = [];
  
  bool onPremise = null;
  /* Used for transfering ownership of an `Invite` to another member of the Account */
  int userId = null;
  InviteUpdateParams();

  @override
  String toString() {
    return 'InviteUpdateParams[company=$company, email=$email, endDate=$endDate, lastName=$lastName, startDate=$startDate, title=$title, hostIds=$hostIds, customFields=$customFields, emailTemplateId=$emailTemplateId, mobile=$mobile, firstName=$firstName, notificationTriggers=$notificationTriggers, onPremise=$onPremise, userId=$userId, ]';
  }

  InviteUpdateParams.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['company'] == null) {
      company = null;
    } else {
          company = json['company'];
    }
    if (json['email'] == null) {
      email = null;
    } else {
          email = json['email'];
    }
    if (json['end_date'] == null) {
      endDate = null;
    } else {
      endDate = DateTime.parse(json['end_date']);
    }
    if (json['last_name'] == null) {
      lastName = null;
    } else {
          lastName = json['last_name'];
    }
    if (json['start_date'] == null) {
      startDate = null;
    } else {
      startDate = DateTime.parse(json['start_date']);
    }
    if (json['title'] == null) {
      title = null;
    } else {
          title = json['title'];
    }
    if (json['host_ids'] == null) {
      hostIds = null;
    } else {
      hostIds = (json['host_ids'] as List).cast<int>();
    }
    if (json['custom_fields'] == null) {
      customFields = null;
    } else {
      customFields = CustomField.listFromJson(json['custom_fields']);
    }
    if (json['email_template_id'] == null) {
      emailTemplateId = null;
    } else {
          emailTemplateId = json['email_template_id'];
    }
    if (json['mobile'] == null) {
      mobile = null;
    } else {
          mobile = json['mobile'];
    }
    if (json['first_name'] == null) {
      firstName = null;
    } else {
          firstName = json['first_name'];
    }
    if (json['notification_triggers'] == null) {
      notificationTriggers = null;
    } else {
      notificationTriggers = NotificationTrigger.listFromJson(json['notification_triggers']);
    }
    if (json['on_premise'] == null) {
      onPremise = null;
    } else {
          onPremise = json['on_premise'];
    }
    if (json['user_id'] == null) {
      userId = null;
    } else {
          userId = json['user_id'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (company != null)
      json['company'] = company;
    if (email != null)
      json['email'] = email;
    if (endDate != null)
      json['end_date'] = endDate == null ? null : endDate.toUtc().toIso8601String();
    if (lastName != null)
      json['last_name'] = lastName;
    if (startDate != null)
      json['start_date'] = startDate == null ? null : startDate.toUtc().toIso8601String();
    if (title != null)
      json['title'] = title;
    if (hostIds != null)
      json['host_ids'] = hostIds;
    if (customFields != null)
      json['custom_fields'] = customFields;
    if (emailTemplateId != null)
      json['email_template_id'] = emailTemplateId;
    if (mobile != null)
      json['mobile'] = mobile;
    if (firstName != null)
      json['first_name'] = firstName;
    if (notificationTriggers != null)
      json['notification_triggers'] = notificationTriggers;
    if (onPremise != null)
      json['on_premise'] = onPremise;
    if (userId != null)
      json['user_id'] = userId;
    return json;
  }

  static List<InviteUpdateParams> listFromJson(List<dynamic> json) {
    return json == null ? new List<InviteUpdateParams>() : json.map((value) => new InviteUpdateParams.fromJson(value)).toList();
  }

  static Map<String, InviteUpdateParams> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InviteUpdateParams>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InviteUpdateParams.fromJson(value));
    }
    return map;
  }
}


part of guest_sdk.api;

class InviteUpdateParams {
  
  String mobileNumber = null;
  /* Used for transfering ownership of an `Invite` to another member of the Account */
  int userId = null;
  
  bool onPremise = null;
  
  List<NotificationTriggerCreateParams> notificationTriggers = [];
  
  String firstName = null;
  
  int emailTemplateId = null;
  
  List<CustomField> customFields = [];
  
  List<int> hostIds = [];
  
  String title = null;
  /*  */
  DateTime startDate = null;
  
  String lastName = null;
  
  DateTime endDate = null;
  
  String email = null;
  
  String company = null;
  InviteUpdateParams();

  @override
  String toString() {
    return 'InviteUpdateParams[mobileNumber=$mobileNumber, userId=$userId, onPremise=$onPremise, notificationTriggers=$notificationTriggers, firstName=$firstName, emailTemplateId=$emailTemplateId, customFields=$customFields, hostIds=$hostIds, title=$title, startDate=$startDate, lastName=$lastName, endDate=$endDate, email=$email, company=$company, ]';
  }

  InviteUpdateParams.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['mobile_number'] == null) {
      mobileNumber = null;
    } else {
          mobileNumber = json['mobile_number'];
    }
    if (json['user_id'] == null) {
      userId = null;
    } else {
          userId = json['user_id'];
    }
    if (json['on_premise'] == null) {
      onPremise = null;
    } else {
          onPremise = json['on_premise'];
    }
    if (json['notification_triggers'] == null) {
      notificationTriggers = null;
    } else {
      notificationTriggers = NotificationTriggerCreateParams.listFromJson(json['notification_triggers']);
    }
    if (json['first_name'] == null) {
      firstName = null;
    } else {
          firstName = json['first_name'];
    }
    if (json['email_template_id'] == null) {
      emailTemplateId = null;
    } else {
          emailTemplateId = json['email_template_id'];
    }
    if (json['custom_fields'] == null) {
      customFields = null;
    } else {
      customFields = CustomField.listFromJson(json['custom_fields']);
    }
    if (json['host_ids'] == null) {
      hostIds = null;
    } else {
      hostIds = (json['host_ids'] as List).cast<int>();
    }
    if (json['title'] == null) {
      title = null;
    } else {
          title = json['title'];
    }
    if (json['start_date'] == null) {
      startDate = null;
    } else {
      startDate = DateTime.parse(json['start_date']);
    }
    if (json['last_name'] == null) {
      lastName = null;
    } else {
          lastName = json['last_name'];
    }
    if (json['end_date'] == null) {
      endDate = null;
    } else {
      endDate = DateTime.parse(json['end_date']);
    }
    if (json['email'] == null) {
      email = null;
    } else {
          email = json['email'];
    }
    if (json['company'] == null) {
      company = null;
    } else {
          company = json['company'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (mobileNumber != null)
      json['mobile_number'] = mobileNumber;
    if (userId != null)
      json['user_id'] = userId;
    if (onPremise != null)
      json['on_premise'] = onPremise;
    if (notificationTriggers != null)
      json['notification_triggers'] = notificationTriggers;
    if (firstName != null)
      json['first_name'] = firstName;
    if (emailTemplateId != null)
      json['email_template_id'] = emailTemplateId;
    if (customFields != null)
      json['custom_fields'] = customFields;
    if (hostIds != null)
      json['host_ids'] = hostIds;
    if (title != null)
      json['title'] = title;
    if (startDate != null)
      json['start_date'] = startDate == null ? null : startDate.toUtc().toIso8601String();
    if (lastName != null)
      json['last_name'] = lastName;
    if (endDate != null)
      json['end_date'] = endDate == null ? null : endDate.toUtc().toIso8601String();
    if (email != null)
      json['email'] = email;
    if (company != null)
      json['company'] = company;
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


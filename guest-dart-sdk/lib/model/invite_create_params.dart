part of guest_sdk.api;

class InviteCreateParams {
  
  String mobileNumber = null;
  
  List<NotificationTriggerCreateParams> notificationTriggers = [];
  
  String firstName = null;
  
  int emailTemplateId = null;
  
  List<CustomField> customFields = [];
  
  List<int> hostIds = [];
  
  String watchlistColour = null;
  //enum watchlistColourEnum {  RED,  GREEN,  YELLOW,  ORANGE,  };{
  
  String title = null;
  /* The `start_date` is required for invitations to lobbies */
  DateTime startDate = null;
  
  String lastName = null;
  
  DateTime endDate = null;
  
  String email = null;
  
  String company = null;
  
  String groupVisitId = null;
  InviteCreateParams();

  @override
  String toString() {
    return 'InviteCreateParams[mobileNumber=$mobileNumber, notificationTriggers=$notificationTriggers, firstName=$firstName, emailTemplateId=$emailTemplateId, customFields=$customFields, hostIds=$hostIds, watchlistColour=$watchlistColour, title=$title, startDate=$startDate, lastName=$lastName, endDate=$endDate, email=$email, company=$company, groupVisitId=$groupVisitId, ]';
  }

  InviteCreateParams.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['mobile_number'] == null) {
      mobileNumber = null;
    } else {
          mobileNumber = json['mobile_number'];
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
    if (json['watchlist_colour'] == null) {
      watchlistColour = null;
    } else {
          watchlistColour = json['watchlist_colour'];
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
    if (json['group_visit_id'] == null) {
      groupVisitId = null;
    } else {
          groupVisitId = json['group_visit_id'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (mobileNumber != null)
      json['mobile_number'] = mobileNumber;
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
    if (watchlistColour != null)
      json['watchlist_colour'] = watchlistColour;
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
    if (groupVisitId != null)
      json['group_visit_id'] = groupVisitId;
    return json;
  }

  static List<InviteCreateParams> listFromJson(List<dynamic> json) {
    return json == null ? new List<InviteCreateParams>() : json.map((value) => new InviteCreateParams.fromJson(value)).toList();
  }

  static Map<String, InviteCreateParams> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InviteCreateParams>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InviteCreateParams.fromJson(value));
    }
    return map;
  }
}


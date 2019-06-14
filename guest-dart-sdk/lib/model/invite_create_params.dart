part of guest_sdk.api;

class InviteCreateParams {
  
  String company = null;
  
  String email = null;
  
  DateTime endDate = null;
  
  String lastName = null;
  
  DateTime startDate = null;
  
  String title = null;
  
  String watchlistColour = null;
  //enum watchlistColourEnum {  RED,  GREEN,  YELLOW,  ORANGE,  };{
  
  List<int> hostIds = [];
  
  List<CustomField> customFields = [];
  
  List<NotificationTrigger> triggers = [];
  
  int emailTemplateId = null;
  
  String mobile = null;
  InviteCreateParams();

  @override
  String toString() {
    return 'InviteCreateParams[company=$company, email=$email, endDate=$endDate, lastName=$lastName, startDate=$startDate, title=$title, watchlistColour=$watchlistColour, hostIds=$hostIds, customFields=$customFields, triggers=$triggers, emailTemplateId=$emailTemplateId, mobile=$mobile, ]';
  }

  InviteCreateParams.fromJson(Map<String, dynamic> json) {
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
    if (json['watchlist_colour'] == null) {
      watchlistColour = null;
    } else {
          watchlistColour = json['watchlist_colour'];
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
    if (json['triggers'] == null) {
      triggers = null;
    } else {
      triggers = NotificationTrigger.listFromJson(json['triggers']);
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
    if (watchlistColour != null)
      json['watchlist_colour'] = watchlistColour;
    if (hostIds != null)
      json['host_ids'] = hostIds;
    if (customFields != null)
      json['custom_fields'] = customFields;
    if (triggers != null)
      json['triggers'] = triggers;
    if (emailTemplateId != null)
      json['email_template_id'] = emailTemplateId;
    if (mobile != null)
      json['mobile'] = mobile;
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


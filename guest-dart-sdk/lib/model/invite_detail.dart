part of guest_sdk.api;

class InviteDetail {
  
  int id = null;
  
  Registration registration = null;
  /* Phone number */
  String mobileNumber = null;
  
  EmailTemplate emailTemplate = null;
  
  InviteWatchlist inviteWatchlist = null;
  /* List of scheduled notifications for an invite */
  List<NotificationTrigger> notificationTriggers = [];
  
  List<CustomField> customFields = [];
  
  String watchlistColour = null;
  //enum watchlistColourEnum {  RED,  GREEN,  YELLOW,  ORANGE,  };{
  
  Location location = null;
  
  List<Host> hosts = [];
  
  DateTime startDate = null;
  
  String lastName = null;
  
  String firstName = null;
  
  DateTime endDate = null;
  
  String email = null;
  
  DateTime createdAt = null;
  
  String company = null;
  
  GroupVisit groupVisit = null;
  InviteDetail();

  @override
  String toString() {
    return 'InviteDetail[id=$id, registration=$registration, mobileNumber=$mobileNumber, emailTemplate=$emailTemplate, inviteWatchlist=$inviteWatchlist, notificationTriggers=$notificationTriggers, customFields=$customFields, watchlistColour=$watchlistColour, location=$location, hosts=$hosts, startDate=$startDate, lastName=$lastName, firstName=$firstName, endDate=$endDate, email=$email, createdAt=$createdAt, company=$company, groupVisit=$groupVisit, ]';
  }

  InviteDetail.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['registration'] == null) {
      registration = null;
    } else {
      registration = new Registration.fromJson(json['registration']);
    }
    if (json['mobile_number'] == null) {
      mobileNumber = null;
    } else {
          mobileNumber = json['mobile_number'];
    }
    if (json['email_template'] == null) {
      emailTemplate = null;
    } else {
      emailTemplate = new EmailTemplate.fromJson(json['email_template']);
    }
    if (json['invite_watchlist'] == null) {
      inviteWatchlist = null;
    } else {
      inviteWatchlist = new InviteWatchlist.fromJson(json['invite_watchlist']);
    }
    if (json['notification_triggers'] == null) {
      notificationTriggers = null;
    } else {
      notificationTriggers = NotificationTrigger.listFromJson(json['notification_triggers']);
    }
    if (json['custom_fields'] == null) {
      customFields = null;
    } else {
      customFields = CustomField.listFromJson(json['custom_fields']);
    }
    if (json['watchlist_colour'] == null) {
      watchlistColour = null;
    } else {
          watchlistColour = json['watchlist_colour'];
    }
    if (json['location'] == null) {
      location = null;
    } else {
      location = new Location.fromJson(json['location']);
    }
    if (json['hosts'] == null) {
      hosts = null;
    } else {
      hosts = Host.listFromJson(json['hosts']);
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
    if (json['first_name'] == null) {
      firstName = null;
    } else {
          firstName = json['first_name'];
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
    if (json['created_at'] == null) {
      createdAt = null;
    } else {
      createdAt = DateTime.parse(json['created_at']);
    }
    if (json['company'] == null) {
      company = null;
    } else {
          company = json['company'];
    }
    if (json['group_visit'] == null) {
      groupVisit = null;
    } else {
      groupVisit = new GroupVisit.fromJson(json['group_visit']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (registration != null)
      json['registration'] = registration;
    if (mobileNumber != null)
      json['mobile_number'] = mobileNumber;
    if (emailTemplate != null)
      json['email_template'] = emailTemplate;
    if (inviteWatchlist != null)
      json['invite_watchlist'] = inviteWatchlist;
    if (notificationTriggers != null)
      json['notification_triggers'] = notificationTriggers;
    if (customFields != null)
      json['custom_fields'] = customFields;
    if (watchlistColour != null)
      json['watchlist_colour'] = watchlistColour;
    if (location != null)
      json['location'] = location;
    if (hosts != null)
      json['hosts'] = hosts;
    if (startDate != null)
      json['start_date'] = startDate == null ? null : startDate.toUtc().toIso8601String();
    if (lastName != null)
      json['last_name'] = lastName;
    if (firstName != null)
      json['first_name'] = firstName;
    if (endDate != null)
      json['end_date'] = endDate == null ? null : endDate.toUtc().toIso8601String();
    if (email != null)
      json['email'] = email;
    if (createdAt != null)
      json['created_at'] = createdAt == null ? null : createdAt.toUtc().toIso8601String();
    if (company != null)
      json['company'] = company;
    if (groupVisit != null)
      json['group_visit'] = groupVisit;
    return json;
  }

  static List<InviteDetail> listFromJson(List<dynamic> json) {
    return json == null ? new List<InviteDetail>() : json.map((value) => new InviteDetail.fromJson(value)).toList();
  }

  static Map<String, InviteDetail> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InviteDetail>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InviteDetail.fromJson(value));
    }
    return map;
  }
}


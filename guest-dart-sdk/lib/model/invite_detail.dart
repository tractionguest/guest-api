part of guest_sdk.api;

class InviteDetail {
  
  int id = null;
  
  String company = null;
  
  DateTime createdAt = null;
  
  String email = null;
  
  DateTime endDate = null;
  
  String firstName = null;
  
  String lastName = null;
  
  DateTime startDate = null;
  
  List<Host> hosts = [];
  
  Location location = null;
  
  Watchlist watchlist = null;
  
  String watchlistColour = null;
  //enum watchlistColourEnum {  RED,  GREEN,  YELLOW,  ORANGE,  };{
  
  EmailTemplate template = null;
  
  List<CustomField> customFields = [];
  InviteDetail();

  @override
  String toString() {
    return 'InviteDetail[id=$id, company=$company, createdAt=$createdAt, email=$email, endDate=$endDate, firstName=$firstName, lastName=$lastName, startDate=$startDate, hosts=$hosts, location=$location, watchlist=$watchlist, watchlistColour=$watchlistColour, template=$template, customFields=$customFields, ]';
  }

  InviteDetail.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['company'] == null) {
      company = null;
    } else {
          company = json['company'];
    }
    if (json['created_at'] == null) {
      createdAt = null;
    } else {
      createdAt = DateTime.parse(json['created_at']);
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
    if (json['first_name'] == null) {
      firstName = null;
    } else {
          firstName = json['first_name'];
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
    if (json['hosts'] == null) {
      hosts = null;
    } else {
      hosts = Host.listFromJson(json['hosts']);
    }
    if (json['location'] == null) {
      location = null;
    } else {
      location = new Location.fromJson(json['location']);
    }
    if (json['watchlist'] == null) {
      watchlist = null;
    } else {
      watchlist = new Watchlist.fromJson(json['watchlist']);
    }
    if (json['watchlist_colour'] == null) {
      watchlistColour = null;
    } else {
          watchlistColour = json['watchlist_colour'];
    }
    if (json['template'] == null) {
      template = null;
    } else {
      template = new EmailTemplate.fromJson(json['template']);
    }
    if (json['custom_fields'] == null) {
      customFields = null;
    } else {
      customFields = CustomField.listFromJson(json['custom_fields']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (company != null)
      json['company'] = company;
    if (createdAt != null)
      json['created_at'] = createdAt == null ? null : createdAt.toUtc().toIso8601String();
    if (email != null)
      json['email'] = email;
    if (endDate != null)
      json['end_date'] = endDate == null ? null : endDate.toUtc().toIso8601String();
    if (firstName != null)
      json['first_name'] = firstName;
    if (lastName != null)
      json['last_name'] = lastName;
    if (startDate != null)
      json['start_date'] = startDate == null ? null : startDate.toUtc().toIso8601String();
    if (hosts != null)
      json['hosts'] = hosts;
    if (location != null)
      json['location'] = location;
    if (watchlist != null)
      json['watchlist'] = watchlist;
    if (watchlistColour != null)
      json['watchlist_colour'] = watchlistColour;
    if (template != null)
      json['template'] = template;
    if (customFields != null)
      json['custom_fields'] = customFields;
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


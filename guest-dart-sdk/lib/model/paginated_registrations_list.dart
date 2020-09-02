part of guest_sdk.api;

class PaginatedRegistrationsList {
  
  List<Registration> registrations = [];
  
  Pagination pagination = null;
  PaginatedRegistrationsList();

  @override
  String toString() {
    return 'PaginatedRegistrationsList[registrations=$registrations, pagination=$pagination, ]';
  }

  PaginatedRegistrationsList.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['registrations'] == null) {
      registrations = null;
    } else {
      registrations = Registration.listFromJson(json['registrations']);
    }
    if (json['pagination'] == null) {
      pagination = null;
    } else {
      pagination = new Pagination.fromJson(json['pagination']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (registrations != null)
      json['registrations'] = registrations;
    if (pagination != null)
      json['pagination'] = pagination;
    return json;
  }

  static List<PaginatedRegistrationsList> listFromJson(List<dynamic> json) {
    return json == null ? new List<PaginatedRegistrationsList>() : json.map((value) => new PaginatedRegistrationsList.fromJson(value)).toList();
  }

  static Map<String, PaginatedRegistrationsList> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, PaginatedRegistrationsList>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new PaginatedRegistrationsList.fromJson(value));
    }
    return map;
  }
}


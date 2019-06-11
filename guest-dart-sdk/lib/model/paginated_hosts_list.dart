part of guest_sdk.api;

class PaginatedHostsList {
  
  List<Host> hosts = [];
  
  Pagination pagination = null;
  PaginatedHostsList();

  @override
  String toString() {
    return 'PaginatedHostsList[hosts=$hosts, pagination=$pagination, ]';
  }

  PaginatedHostsList.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['hosts'] == null) {
      hosts = null;
    } else {
      hosts = Host.listFromJson(json['hosts']);
    }
    if (json['pagination'] == null) {
      pagination = null;
    } else {
      pagination = new Pagination.fromJson(json['pagination']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (hosts != null)
      json['hosts'] = hosts;
    if (pagination != null)
      json['pagination'] = pagination;
    return json;
  }

  static List<PaginatedHostsList> listFromJson(List<dynamic> json) {
    return json == null ? new List<PaginatedHostsList>() : json.map((value) => new PaginatedHostsList.fromJson(value)).toList();
  }

  static Map<String, PaginatedHostsList> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, PaginatedHostsList>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new PaginatedHostsList.fromJson(value));
    }
    return map;
  }
}


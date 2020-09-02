part of guest_sdk.api;

class PaginatedHostsList {
  
  Pagination pagination = null;
  
  List<Host> hosts = [];
  PaginatedHostsList();

  @override
  String toString() {
    return 'PaginatedHostsList[pagination=$pagination, hosts=$hosts, ]';
  }

  PaginatedHostsList.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['pagination'] == null) {
      pagination = null;
    } else {
      pagination = new Pagination.fromJson(json['pagination']);
    }
    if (json['hosts'] == null) {
      hosts = null;
    } else {
      hosts = Host.listFromJson(json['hosts']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (pagination != null)
      json['pagination'] = pagination;
    if (hosts != null)
      json['hosts'] = hosts;
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


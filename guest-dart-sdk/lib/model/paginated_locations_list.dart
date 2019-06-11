part of guest_sdk.api;

class PaginatedLocationsList {
  
  Pagination pagination = null;
  
  List<Location> locations = [];
  PaginatedLocationsList();

  @override
  String toString() {
    return 'PaginatedLocationsList[pagination=$pagination, locations=$locations, ]';
  }

  PaginatedLocationsList.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['pagination'] == null) {
      pagination = null;
    } else {
      pagination = new Pagination.fromJson(json['pagination']);
    }
    if (json['locations'] == null) {
      locations = null;
    } else {
      locations = Location.listFromJson(json['locations']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (pagination != null)
      json['pagination'] = pagination;
    if (locations != null)
      json['locations'] = locations;
    return json;
  }

  static List<PaginatedLocationsList> listFromJson(List<dynamic> json) {
    return json == null ? new List<PaginatedLocationsList>() : json.map((value) => new PaginatedLocationsList.fromJson(value)).toList();
  }

  static Map<String, PaginatedLocationsList> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, PaginatedLocationsList>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new PaginatedLocationsList.fromJson(value));
    }
    return map;
  }
}


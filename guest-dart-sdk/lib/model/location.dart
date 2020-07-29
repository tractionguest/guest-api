part of guest_sdk.api;

class Location {
  
  int id = null;
  
  String name = null;
  /* Maximum capacity of a location */
  int maxCapacity = null;
  /*  IANA timezone designations */
  String timezone = null;
  Location();

  @override
  String toString() {
    return 'Location[id=$id, name=$name, maxCapacity=$maxCapacity, timezone=$timezone, ]';
  }

  Location.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['max_capacity'] == null) {
      maxCapacity = null;
    } else {
          maxCapacity = json['max_capacity'];
    }
    if (json['timezone'] == null) {
      timezone = null;
    } else {
          timezone = json['timezone'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (name != null)
      json['name'] = name;
      json['max_capacity'] = maxCapacity;
      json['timezone'] = timezone;
    return json;
  }

  static List<Location> listFromJson(List<dynamic> json) {
    return json == null ? new List<Location>() : json.map((value) => new Location.fromJson(value)).toList();
  }

  static Map<String, Location> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, Location>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new Location.fromJson(value));
    }
    return map;
  }
}


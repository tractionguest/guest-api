part of guest_sdk.api;

class WatchlistSearch {
  
  String name = null;
  
  String company = null;
  
  String city = null;
  
  String country = null;
  
  String state = null;
  WatchlistSearch();

  @override
  String toString() {
    return 'WatchlistSearch[name=$name, company=$company, city=$city, country=$country, state=$state, ]';
  }

  WatchlistSearch.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['company'] == null) {
      company = null;
    } else {
          company = json['company'];
    }
    if (json['city'] == null) {
      city = null;
    } else {
          city = json['city'];
    }
    if (json['country'] == null) {
      country = null;
    } else {
          country = json['country'];
    }
    if (json['state'] == null) {
      state = null;
    } else {
          state = json['state'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (name != null)
      json['name'] = name;
    if (company != null)
      json['company'] = company;
    if (city != null)
      json['city'] = city;
    if (country != null)
      json['country'] = country;
    if (state != null)
      json['state'] = state;
    return json;
  }

  static List<WatchlistSearch> listFromJson(List<dynamic> json) {
    return json == null ? new List<WatchlistSearch>() : json.map((value) => new WatchlistSearch.fromJson(value)).toList();
  }

  static Map<String, WatchlistSearch> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, WatchlistSearch>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new WatchlistSearch.fromJson(value));
    }
    return map;
  }
}


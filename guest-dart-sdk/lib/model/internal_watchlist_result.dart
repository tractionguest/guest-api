part of guest_sdk.api;

class InternalWatchlistResult {
  
  int id = null;
  
  String email = null;
  
  String colour = null;
  
  String lastName = null;
  
  String firstName = null;
  InternalWatchlistResult();

  @override
  String toString() {
    return 'InternalWatchlistResult[id=$id, email=$email, colour=$colour, lastName=$lastName, firstName=$firstName, ]';
  }

  InternalWatchlistResult.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['email'] == null) {
      email = null;
    } else {
          email = json['email'];
    }
    if (json['colour'] == null) {
      colour = null;
    } else {
          colour = json['colour'];
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
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (email != null)
      json['email'] = email;
    if (colour != null)
      json['colour'] = colour;
    if (lastName != null)
      json['last_name'] = lastName;
    if (firstName != null)
      json['first_name'] = firstName;
    return json;
  }

  static List<InternalWatchlistResult> listFromJson(List<dynamic> json) {
    return json == null ? new List<InternalWatchlistResult>() : json.map((value) => new InternalWatchlistResult.fromJson(value)).toList();
  }

  static Map<String, InternalWatchlistResult> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InternalWatchlistResult>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InternalWatchlistResult.fromJson(value));
    }
    return map;
  }
}


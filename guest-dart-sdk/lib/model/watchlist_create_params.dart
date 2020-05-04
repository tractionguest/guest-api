part of guest_sdk.api;

class WatchlistCreateParams {
  
  List<String> aliases = [];
  
  String notes = null;
  
  String lastName = null;
  
  String firstName = null;
  
  String email = null;
  
  String colour = null;
  //enum colourEnum {  RED,  YELLOW,  GREEN,  ORANGE,  };{
  WatchlistCreateParams();

  @override
  String toString() {
    return 'WatchlistCreateParams[aliases=$aliases, notes=$notes, lastName=$lastName, firstName=$firstName, email=$email, colour=$colour, ]';
  }

  WatchlistCreateParams.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['aliases'] == null) {
      aliases = null;
    } else {
      aliases = (json['aliases'] as List).cast<String>();
    }
    if (json['notes'] == null) {
      notes = null;
    } else {
          notes = json['notes'];
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
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (aliases != null)
      json['aliases'] = aliases;
    if (notes != null)
      json['notes'] = notes;
    if (lastName != null)
      json['last_name'] = lastName;
    if (firstName != null)
      json['first_name'] = firstName;
    if (email != null)
      json['email'] = email;
    if (colour != null)
      json['colour'] = colour;
    return json;
  }

  static List<WatchlistCreateParams> listFromJson(List<dynamic> json) {
    return json == null ? new List<WatchlistCreateParams>() : json.map((value) => new WatchlistCreateParams.fromJson(value)).toList();
  }

  static Map<String, WatchlistCreateParams> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, WatchlistCreateParams>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new WatchlistCreateParams.fromJson(value));
    }
    return map;
  }
}


part of guest_sdk.api;

class WatchlistCreateParams {
  
  String colour = null;
  //enum colourEnum {  RED,  YELLOW,  GREEN,  ORANGE,  };{
  
  String email = null;
  
  String firstName = null;
  
  String lastName = null;
  
  String notes = null;
  
  List<String> aliases = [];
  WatchlistCreateParams();

  @override
  String toString() {
    return 'WatchlistCreateParams[colour=$colour, email=$email, firstName=$firstName, lastName=$lastName, notes=$notes, aliases=$aliases, ]';
  }

  WatchlistCreateParams.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['colour'] == null) {
      colour = null;
    } else {
          colour = json['colour'];
    }
    if (json['email'] == null) {
      email = null;
    } else {
          email = json['email'];
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
    if (json['notes'] == null) {
      notes = null;
    } else {
          notes = json['notes'];
    }
    if (json['aliases'] == null) {
      aliases = null;
    } else {
      aliases = (json['aliases'] as List).cast<String>();
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (colour != null)
      json['colour'] = colour;
    if (email != null)
      json['email'] = email;
    if (firstName != null)
      json['first_name'] = firstName;
    if (lastName != null)
      json['last_name'] = lastName;
    if (notes != null)
      json['notes'] = notes;
    if (aliases != null)
      json['aliases'] = aliases;
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


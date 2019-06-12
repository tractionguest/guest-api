part of guest_sdk.api;

class Watchlist {
  
  int id = null;
  
  String colour = null;
  //enum colourEnum {  RED,  YELLOW,  GREEN,  ORANGE,  };{
  
  String email = null;
  
  String firstName = null;
  
  String lastName = null;
  
  String notes = null;
  
  String photo = null;
  
  List<String> aliases = [];
  Watchlist();

  @override
  String toString() {
    return 'Watchlist[id=$id, colour=$colour, email=$email, firstName=$firstName, lastName=$lastName, notes=$notes, photo=$photo, aliases=$aliases, ]';
  }

  Watchlist.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
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
    if (json['photo'] == null) {
      photo = null;
    } else {
          photo = json['photo'];
    }
    if (json['aliases'] == null) {
      aliases = null;
    } else {
      aliases = (json['aliases'] as List).cast<String>();
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
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
    if (photo != null)
      json['photo'] = photo;
    if (aliases != null)
      json['aliases'] = aliases;
    return json;
  }

  static List<Watchlist> listFromJson(List<dynamic> json) {
    return json == null ? new List<Watchlist>() : json.map((value) => new Watchlist.fromJson(value)).toList();
  }

  static Map<String, Watchlist> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, Watchlist>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new Watchlist.fromJson(value));
    }
    return map;
  }
}


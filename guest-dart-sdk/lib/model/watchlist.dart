part of guest_sdk.api;

class Watchlist {
  
  int id = null;
  
  List<String> aliases = [];
  
  String photo = null;
  
  String notes = null;
  
  String lastName = null;
  
  String firstName = null;
  
  String email = null;
  
  String colour = null;
  //enum colourEnum {  RED,  YELLOW,  GREEN,  ORANGE,  };{
  Watchlist();

  @override
  String toString() {
    return 'Watchlist[id=$id, aliases=$aliases, photo=$photo, notes=$notes, lastName=$lastName, firstName=$firstName, email=$email, colour=$colour, ]';
  }

  Watchlist.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['aliases'] == null) {
      aliases = null;
    } else {
      aliases = (json['aliases'] as List).cast<String>();
    }
    if (json['photo'] == null) {
      photo = null;
    } else {
          photo = json['photo'];
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
    if (id != null)
      json['id'] = id;
    if (aliases != null)
      json['aliases'] = aliases;
    if (photo != null)
      json['photo'] = photo;
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


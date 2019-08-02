part of guest_sdk.api;

class Invite {
  
  int id = null;
  
  String firstName = null;
  
  String lastName = null;
  
  DateTime startDate = null;
  
  Location location = null;
  
  String watchlistColour = null;
  //enum watchlistColourEnum {  RED,  GREEN,  YELLOW,  ORANGE,  };{
  
  List<Host> hosts = [];
  
  InviteWatchlist inviteWatchlist = null;
  
  DateTime endDate = null;
  
  String email = null;
  Invite();

  @override
  String toString() {
    return 'Invite[id=$id, firstName=$firstName, lastName=$lastName, startDate=$startDate, location=$location, watchlistColour=$watchlistColour, hosts=$hosts, inviteWatchlist=$inviteWatchlist, endDate=$endDate, email=$email, ]';
  }

  Invite.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
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
    if (json['start_date'] == null) {
      startDate = null;
    } else {
      startDate = DateTime.parse(json['start_date']);
    }
    if (json['location'] == null) {
      location = null;
    } else {
      location = new Location.fromJson(json['location']);
    }
    if (json['watchlist_colour'] == null) {
      watchlistColour = null;
    } else {
          watchlistColour = json['watchlist_colour'];
    }
    if (json['hosts'] == null) {
      hosts = null;
    } else {
      hosts = Host.listFromJson(json['hosts']);
    }
    if (json['invite_watchlist'] == null) {
      inviteWatchlist = null;
    } else {
      inviteWatchlist = new InviteWatchlist.fromJson(json['invite_watchlist']);
    }
    if (json['end_date'] == null) {
      endDate = null;
    } else {
      endDate = DateTime.parse(json['end_date']);
    }
    if (json['email'] == null) {
      email = null;
    } else {
          email = json['email'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (firstName != null)
      json['first_name'] = firstName;
    if (lastName != null)
      json['last_name'] = lastName;
    if (startDate != null)
      json['start_date'] = startDate == null ? null : startDate.toUtc().toIso8601String();
    if (location != null)
      json['location'] = location;
    if (watchlistColour != null)
      json['watchlist_colour'] = watchlistColour;
    if (hosts != null)
      json['hosts'] = hosts;
    if (inviteWatchlist != null)
      json['invite_watchlist'] = inviteWatchlist;
    if (endDate != null)
      json['end_date'] = endDate == null ? null : endDate.toUtc().toIso8601String();
    if (email != null)
      json['email'] = email;
    return json;
  }

  static List<Invite> listFromJson(List<dynamic> json) {
    return json == null ? new List<Invite>() : json.map((value) => new Invite.fromJson(value)).toList();
  }

  static Map<String, Invite> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, Invite>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new Invite.fromJson(value));
    }
    return map;
  }
}


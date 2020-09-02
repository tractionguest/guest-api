part of guest_sdk.api;

class Invite {
  
  int id = null;
  
  Registration registration = null;
  /*  */
  String mobileNumber = null;
  /*  */
  String email = null;
  /*  */
  DateTime endDate = null;
  
  InviteWatchlist inviteWatchlist = null;
  
  List<Host> hosts = [];
  
  String watchlistColour = null;
  //enum watchlistColourEnum {  RED,  GREEN,  YELLOW,  ORANGE,  };{
  
  Location location = null;
  
  DateTime startDate = null;
  
  String lastName = null;
  
  String firstName = null;
  
  GroupVisit groupVisit = null;
  Invite();

  @override
  String toString() {
    return 'Invite[id=$id, registration=$registration, mobileNumber=$mobileNumber, email=$email, endDate=$endDate, inviteWatchlist=$inviteWatchlist, hosts=$hosts, watchlistColour=$watchlistColour, location=$location, startDate=$startDate, lastName=$lastName, firstName=$firstName, groupVisit=$groupVisit, ]';
  }

  Invite.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['registration'] == null) {
      registration = null;
    } else {
      registration = new Registration.fromJson(json['registration']);
    }
    if (json['mobile_number'] == null) {
      mobileNumber = null;
    } else {
          mobileNumber = json['mobile_number'];
    }
    if (json['email'] == null) {
      email = null;
    } else {
          email = json['email'];
    }
    if (json['end_date'] == null) {
      endDate = null;
    } else {
      endDate = DateTime.parse(json['end_date']);
    }
    if (json['invite_watchlist'] == null) {
      inviteWatchlist = null;
    } else {
      inviteWatchlist = new InviteWatchlist.fromJson(json['invite_watchlist']);
    }
    if (json['hosts'] == null) {
      hosts = null;
    } else {
      hosts = Host.listFromJson(json['hosts']);
    }
    if (json['watchlist_colour'] == null) {
      watchlistColour = null;
    } else {
          watchlistColour = json['watchlist_colour'];
    }
    if (json['location'] == null) {
      location = null;
    } else {
      location = new Location.fromJson(json['location']);
    }
    if (json['start_date'] == null) {
      startDate = null;
    } else {
      startDate = DateTime.parse(json['start_date']);
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
    if (json['group_visit'] == null) {
      groupVisit = null;
    } else {
      groupVisit = new GroupVisit.fromJson(json['group_visit']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (registration != null)
      json['registration'] = registration;
      json['mobile_number'] = mobileNumber;
      json['email'] = email;
      json['end_date'] = endDate == null ? null : endDate.toUtc().toIso8601String();
    if (inviteWatchlist != null)
      json['invite_watchlist'] = inviteWatchlist;
    if (hosts != null)
      json['hosts'] = hosts;
      json['watchlist_colour'] = watchlistColour;
    if (location != null)
      json['location'] = location;
    if (startDate != null)
      json['start_date'] = startDate == null ? null : startDate.toUtc().toIso8601String();
      json['last_name'] = lastName;
      json['first_name'] = firstName;
    if (groupVisit != null)
      json['group_visit'] = groupVisit;
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


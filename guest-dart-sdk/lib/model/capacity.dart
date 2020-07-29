part of guest_sdk.api;

class Capacity {
  
  int signinsCount = null;
  
  int invitesExpectedNextHour = null;
  Capacity();

  @override
  String toString() {
    return 'Capacity[signinsCount=$signinsCount, invitesExpectedNextHour=$invitesExpectedNextHour, ]';
  }

  Capacity.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['signins_count'] == null) {
      signinsCount = null;
    } else {
          signinsCount = json['signins_count'];
    }
    if (json['invites_expected_next_hour'] == null) {
      invitesExpectedNextHour = null;
    } else {
          invitesExpectedNextHour = json['invites_expected_next_hour'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (signinsCount != null)
      json['signins_count'] = signinsCount;
    if (invitesExpectedNextHour != null)
      json['invites_expected_next_hour'] = invitesExpectedNextHour;
    return json;
  }

  static List<Capacity> listFromJson(List<dynamic> json) {
    return json == null ? new List<Capacity>() : json.map((value) => new Capacity.fromJson(value)).toList();
  }

  static Map<String, Capacity> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, Capacity>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new Capacity.fromJson(value));
    }
    return map;
  }
}


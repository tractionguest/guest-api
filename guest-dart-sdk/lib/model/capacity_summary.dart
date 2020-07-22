part of guest_sdk.api;

class CapacitySummary {
  
  int signinsCount = null;
  
  int invitesExpectedNextHour = null;
  CapacitySummary();

  @override
  String toString() {
    return 'CapacitySummary[signinsCount=$signinsCount, invitesExpectedNextHour=$invitesExpectedNextHour, ]';
  }

  CapacitySummary.fromJson(Map<String, dynamic> json) {
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

  static List<CapacitySummary> listFromJson(List<dynamic> json) {
    return json == null ? new List<CapacitySummary>() : json.map((value) => new CapacitySummary.fromJson(value)).toList();
  }

  static Map<String, CapacitySummary> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, CapacitySummary>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new CapacitySummary.fromJson(value));
    }
    return map;
  }
}


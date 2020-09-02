part of guest_sdk.api;

class CapacityForecast {
  
  List<CapacityByHourResponse> invitesByHour = [];
  CapacityForecast();

  @override
  String toString() {
    return 'CapacityForecast[invitesByHour=$invitesByHour, ]';
  }

  CapacityForecast.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['invites_by_hour'] == null) {
      invitesByHour = null;
    } else {
      invitesByHour = CapacityByHourResponse.listFromJson(json['invites_by_hour']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (invitesByHour != null)
      json['invites_by_hour'] = invitesByHour;
    return json;
  }

  static List<CapacityForecast> listFromJson(List<dynamic> json) {
    return json == null ? new List<CapacityForecast>() : json.map((value) => new CapacityForecast.fromJson(value)).toList();
  }

  static Map<String, CapacityForecast> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, CapacityForecast>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new CapacityForecast.fromJson(value));
    }
    return map;
  }
}


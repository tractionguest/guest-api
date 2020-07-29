part of guest_sdk.api;

class CapacityResponse {
  
  List<CapacityByHourResponse> invitesByHour = [];
  CapacityResponse();

  @override
  String toString() {
    return 'CapacityResponse[invitesByHour=$invitesByHour, ]';
  }

  CapacityResponse.fromJson(Map<String, dynamic> json) {
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

  static List<CapacityResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<CapacityResponse>() : json.map((value) => new CapacityResponse.fromJson(value)).toList();
  }

  static Map<String, CapacityResponse> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, CapacityResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new CapacityResponse.fromJson(value));
    }
    return map;
  }
}


part of guest_sdk.api;

class NotificationsHostFilterParams {
  
  List<int> locationIds = [];
  
  List<int> hostIds = [];
  NotificationsHostFilterParams();

  @override
  String toString() {
    return 'NotificationsHostFilterParams[locationIds=$locationIds, hostIds=$hostIds, ]';
  }

  NotificationsHostFilterParams.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['location_ids'] == null) {
      locationIds = null;
    } else {
      locationIds = (json['location_ids'] as List).cast<int>();
    }
    if (json['host_ids'] == null) {
      hostIds = null;
    } else {
      hostIds = (json['host_ids'] as List).cast<int>();
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (locationIds != null)
      json['location_ids'] = locationIds;
    if (hostIds != null)
      json['host_ids'] = hostIds;
    return json;
  }

  static List<NotificationsHostFilterParams> listFromJson(List<dynamic> json) {
    return json == null ? new List<NotificationsHostFilterParams>() : json.map((value) => new NotificationsHostFilterParams.fromJson(value)).toList();
  }

  static Map<String, NotificationsHostFilterParams> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, NotificationsHostFilterParams>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new NotificationsHostFilterParams.fromJson(value));
    }
    return map;
  }
}


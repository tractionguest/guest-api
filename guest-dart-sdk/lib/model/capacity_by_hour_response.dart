part of guest_sdk.api;

class CapacityByHourResponse {
  
  DateTime rangeStart = null;
  
  DateTime rangeEnd = null;
  
  int expectedVisitors = null;
  CapacityByHourResponse();

  @override
  String toString() {
    return 'CapacityByHourResponse[rangeStart=$rangeStart, rangeEnd=$rangeEnd, expectedVisitors=$expectedVisitors, ]';
  }

  CapacityByHourResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['range_start'] == null) {
      rangeStart = null;
    } else {
      rangeStart = DateTime.parse(json['range_start']);
    }
    if (json['range_end'] == null) {
      rangeEnd = null;
    } else {
      rangeEnd = DateTime.parse(json['range_end']);
    }
    if (json['expected_visitors'] == null) {
      expectedVisitors = null;
    } else {
          expectedVisitors = json['expected_visitors'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (rangeStart != null)
      json['range_start'] = rangeStart == null ? null : rangeStart.toUtc().toIso8601String();
    if (rangeEnd != null)
      json['range_end'] = rangeEnd == null ? null : rangeEnd.toUtc().toIso8601String();
    if (expectedVisitors != null)
      json['expected_visitors'] = expectedVisitors;
    return json;
  }

  static List<CapacityByHourResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<CapacityByHourResponse>() : json.map((value) => new CapacityByHourResponse.fromJson(value)).toList();
  }

  static Map<String, CapacityByHourResponse> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, CapacityByHourResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new CapacityByHourResponse.fromJson(value));
    }
    return map;
  }
}


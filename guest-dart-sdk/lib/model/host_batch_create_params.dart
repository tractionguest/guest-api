part of guest_sdk.api;

class HostBatchCreateParams {
  
  List<HostCreateParams> hosts = [];
  HostBatchCreateParams();

  @override
  String toString() {
    return 'HostBatchCreateParams[hosts=$hosts, ]';
  }

  HostBatchCreateParams.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['hosts'] == null) {
      hosts = null;
    } else {
      hosts = HostCreateParams.listFromJson(json['hosts']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (hosts != null)
      json['hosts'] = hosts;
    return json;
  }

  static List<HostBatchCreateParams> listFromJson(List<dynamic> json) {
    return json == null ? new List<HostBatchCreateParams>() : json.map((value) => new HostBatchCreateParams.fromJson(value)).toList();
  }

  static Map<String, HostBatchCreateParams> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, HostBatchCreateParams>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new HostBatchCreateParams.fromJson(value));
    }
    return map;
  }
}


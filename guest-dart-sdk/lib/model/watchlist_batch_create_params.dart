part of guest_sdk.api;

class WatchlistBatchCreateParams {
  
  List<WatchlistCreateParams> watchlists = [];
  WatchlistBatchCreateParams();

  @override
  String toString() {
    return 'WatchlistBatchCreateParams[watchlists=$watchlists, ]';
  }

  WatchlistBatchCreateParams.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['watchlists'] == null) {
      watchlists = null;
    } else {
      watchlists = WatchlistCreateParams.listFromJson(json['watchlists']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (watchlists != null)
      json['watchlists'] = watchlists;
    return json;
  }

  static List<WatchlistBatchCreateParams> listFromJson(List<dynamic> json) {
    return json == null ? new List<WatchlistBatchCreateParams>() : json.map((value) => new WatchlistBatchCreateParams.fromJson(value)).toList();
  }

  static Map<String, WatchlistBatchCreateParams> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, WatchlistBatchCreateParams>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new WatchlistBatchCreateParams.fromJson(value));
    }
    return map;
  }
}


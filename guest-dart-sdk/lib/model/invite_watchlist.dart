part of guest_sdk.api;

class InviteWatchlist {
  
  int id = null;
  
  List<ExternalWatchlistResult> external_ = [];
  
  List<InternalWatchlistResult> internal = [];
  InviteWatchlist();

  @override
  String toString() {
    return 'InviteWatchlist[id=$id, external_=$external_, internal=$internal, ]';
  }

  InviteWatchlist.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['external'] == null) {
      external_ = null;
    } else {
      external_ = ExternalWatchlistResult.listFromJson(json['external']);
    }
    if (json['internal'] == null) {
      internal = null;
    } else {
      internal = InternalWatchlistResult.listFromJson(json['internal']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (external_ != null)
      json['external'] = external_;
    if (internal != null)
      json['internal'] = internal;
    return json;
  }

  static List<InviteWatchlist> listFromJson(List<dynamic> json) {
    return json == null ? new List<InviteWatchlist>() : json.map((value) => new InviteWatchlist.fromJson(value)).toList();
  }

  static Map<String, InviteWatchlist> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InviteWatchlist>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InviteWatchlist.fromJson(value));
    }
    return map;
  }
}


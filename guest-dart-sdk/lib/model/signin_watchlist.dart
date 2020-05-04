part of guest_sdk.api;

class SigninWatchlist {
  
  int id = null;
  
  List<InternalWatchlistResult> internal = [];
  
  List<ExternalWatchlistResult> external_ = [];
  SigninWatchlist();

  @override
  String toString() {
    return 'SigninWatchlist[id=$id, internal=$internal, external_=$external_, ]';
  }

  SigninWatchlist.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['internal'] == null) {
      internal = null;
    } else {
      internal = InternalWatchlistResult.listFromJson(json['internal']);
    }
    if (json['external'] == null) {
      external_ = null;
    } else {
      external_ = ExternalWatchlistResult.listFromJson(json['external']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (internal != null)
      json['internal'] = internal;
    if (external_ != null)
      json['external'] = external_;
    return json;
  }

  static List<SigninWatchlist> listFromJson(List<dynamic> json) {
    return json == null ? new List<SigninWatchlist>() : json.map((value) => new SigninWatchlist.fromJson(value)).toList();
  }

  static Map<String, SigninWatchlist> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, SigninWatchlist>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new SigninWatchlist.fromJson(value));
    }
    return map;
  }
}


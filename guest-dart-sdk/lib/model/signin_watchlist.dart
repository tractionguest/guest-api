part of guest_sdk.api;

class SigninWatchlist {
  
  int id = null;
  
  List<Watchlist> external_ = [];
  
  List<Watchlist> internal = [];
  SigninWatchlist();

  @override
  String toString() {
    return 'SigninWatchlist[id=$id, external_=$external_, internal=$internal, ]';
  }

  SigninWatchlist.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['external'] == null) {
      external_ = null;
    } else {
      external_ = Watchlist.listFromJson(json['external']);
    }
    if (json['internal'] == null) {
      internal = null;
    } else {
      internal = Watchlist.listFromJson(json['internal']);
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


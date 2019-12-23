part of guest_sdk.api;

class InviteWatchlist {
  
  int id = null;
  
  List<String> externalColours = [];
  
  List<String> internalColours = [];
  InviteWatchlist();

  @override
  String toString() {
    return 'InviteWatchlist[id=$id, externalColours=$externalColours, internalColours=$internalColours, ]';
  }

  InviteWatchlist.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['external_colours'] == null) {
      externalColours = null;
    } else {
      externalColours = (json['external_colours'] as List).cast<String>();
    }
    if (json['internal_colours'] == null) {
      internalColours = null;
    } else {
      internalColours = (json['internal_colours'] as List).cast<String>();
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (externalColours != null)
      json['external_colours'] = externalColours;
    if (internalColours != null)
      json['internal_colours'] = internalColours;
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


part of guest_sdk.api;

class PaginatedWatchlistList {
  
  List<Watchlist> watchlists = [];
  
  Pagination pagination = null;
  PaginatedWatchlistList();

  @override
  String toString() {
    return 'PaginatedWatchlistList[watchlists=$watchlists, pagination=$pagination, ]';
  }

  PaginatedWatchlistList.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['watchlists'] == null) {
      watchlists = null;
    } else {
      watchlists = Watchlist.listFromJson(json['watchlists']);
    }
    if (json['pagination'] == null) {
      pagination = null;
    } else {
      pagination = new Pagination.fromJson(json['pagination']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (watchlists != null)
      json['watchlists'] = watchlists;
    if (pagination != null)
      json['pagination'] = pagination;
    return json;
  }

  static List<PaginatedWatchlistList> listFromJson(List<dynamic> json) {
    return json == null ? new List<PaginatedWatchlistList>() : json.map((value) => new PaginatedWatchlistList.fromJson(value)).toList();
  }

  static Map<String, PaginatedWatchlistList> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, PaginatedWatchlistList>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new PaginatedWatchlistList.fromJson(value));
    }
    return map;
  }
}


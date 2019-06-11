part of guest_sdk.api;

class PaginatedWatchlistList {
  
  Pagination pagination = null;
  
  List<Watchlist> watchlists = [];
  PaginatedWatchlistList();

  @override
  String toString() {
    return 'PaginatedWatchlistList[pagination=$pagination, watchlists=$watchlists, ]';
  }

  PaginatedWatchlistList.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['pagination'] == null) {
      pagination = null;
    } else {
      pagination = new Pagination.fromJson(json['pagination']);
    }
    if (json['watchlists'] == null) {
      watchlists = null;
    } else {
      watchlists = Watchlist.listFromJson(json['watchlists']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (pagination != null)
      json['pagination'] = pagination;
    if (watchlists != null)
      json['watchlists'] = watchlists;
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


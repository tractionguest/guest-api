part of guest_sdk.api;

class ExternalWatchlistResult {
  
  WatchlistSearch searchTerms = null;
  
  String integration = null;
  
  String colour = null;
  //enum colourEnum {  RED,  GREEN,  YELLOW,  ORANGE,  };{
  
  List<WatchlistMatch> matches = [];
  ExternalWatchlistResult();

  @override
  String toString() {
    return 'ExternalWatchlistResult[searchTerms=$searchTerms, integration=$integration, colour=$colour, matches=$matches, ]';
  }

  ExternalWatchlistResult.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['search_terms'] == null) {
      searchTerms = null;
    } else {
      searchTerms = new WatchlistSearch.fromJson(json['search_terms']);
    }
    if (json['integration'] == null) {
      integration = null;
    } else {
          integration = json['integration'];
    }
    if (json['colour'] == null) {
      colour = null;
    } else {
          colour = json['colour'];
    }
    if (json['matches'] == null) {
      matches = null;
    } else {
      matches = WatchlistMatch.listFromJson(json['matches']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (searchTerms != null)
      json['search_terms'] = searchTerms;
    if (integration != null)
      json['integration'] = integration;
    if (colour != null)
      json['colour'] = colour;
    if (matches != null)
      json['matches'] = matches;
    return json;
  }

  static List<ExternalWatchlistResult> listFromJson(List<dynamic> json) {
    return json == null ? new List<ExternalWatchlistResult>() : json.map((value) => new ExternalWatchlistResult.fromJson(value)).toList();
  }

  static Map<String, ExternalWatchlistResult> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ExternalWatchlistResult>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new ExternalWatchlistResult.fromJson(value));
    }
    return map;
  }
}


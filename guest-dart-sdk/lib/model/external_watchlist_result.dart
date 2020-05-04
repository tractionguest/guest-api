part of guest_sdk.api;

class ExternalWatchlistResult {
  
  List<WatchlistMatch> matches = [];
  /*  */
  String colour = null;
  //enum colourEnum {  RED,  GREEN,  YELLOW,  ORANGE,  };{
  /*  */
  String integration = null;
  
  WatchlistSearch searchTerms = null;
  ExternalWatchlistResult();

  @override
  String toString() {
    return 'ExternalWatchlistResult[matches=$matches, colour=$colour, integration=$integration, searchTerms=$searchTerms, ]';
  }

  ExternalWatchlistResult.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['matches'] == null) {
      matches = null;
    } else {
      matches = WatchlistMatch.listFromJson(json['matches']);
    }
    if (json['colour'] == null) {
      colour = null;
    } else {
          colour = json['colour'];
    }
    if (json['integration'] == null) {
      integration = null;
    } else {
          integration = json['integration'];
    }
    if (json['search_terms'] == null) {
      searchTerms = null;
    } else {
      searchTerms = new WatchlistSearch.fromJson(json['search_terms']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (matches != null)
      json['matches'] = matches;
    if (colour != null)
      json['colour'] = colour;
    if (integration != null)
      json['integration'] = integration;
    if (searchTerms != null)
      json['search_terms'] = searchTerms;
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


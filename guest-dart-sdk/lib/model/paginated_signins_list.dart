part of guest_sdk.api;

class PaginatedSigninsList {
  
  Pagination pagination = null;
  
  List<Signin> signins = [];
  PaginatedSigninsList();

  @override
  String toString() {
    return 'PaginatedSigninsList[pagination=$pagination, signins=$signins, ]';
  }

  PaginatedSigninsList.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['pagination'] == null) {
      pagination = null;
    } else {
      pagination = new Pagination.fromJson(json['pagination']);
    }
    if (json['signins'] == null) {
      signins = null;
    } else {
      signins = Signin.listFromJson(json['signins']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (pagination != null)
      json['pagination'] = pagination;
    if (signins != null)
      json['signins'] = signins;
    return json;
  }

  static List<PaginatedSigninsList> listFromJson(List<dynamic> json) {
    return json == null ? new List<PaginatedSigninsList>() : json.map((value) => new PaginatedSigninsList.fromJson(value)).toList();
  }

  static Map<String, PaginatedSigninsList> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, PaginatedSigninsList>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new PaginatedSigninsList.fromJson(value));
    }
    return map;
  }
}


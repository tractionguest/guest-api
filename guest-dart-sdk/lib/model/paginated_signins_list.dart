part of guest_sdk.api;

class PaginatedSigninsList {
  
  List<Signin> signins = [];
  
  Pagination pagination = null;
  PaginatedSigninsList();

  @override
  String toString() {
    return 'PaginatedSigninsList[signins=$signins, pagination=$pagination, ]';
  }

  PaginatedSigninsList.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['signins'] == null) {
      signins = null;
    } else {
      signins = Signin.listFromJson(json['signins']);
    }
    if (json['pagination'] == null) {
      pagination = null;
    } else {
      pagination = new Pagination.fromJson(json['pagination']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (signins != null)
      json['signins'] = signins;
    if (pagination != null)
      json['pagination'] = pagination;
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


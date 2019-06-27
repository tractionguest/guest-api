part of guest_sdk.api;

class ErrorsList {
  
  List<Error> errors = [];
  ErrorsList();

  @override
  String toString() {
    return 'ErrorsList[errors=$errors, ]';
  }

  ErrorsList.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['errors'] == null) {
      errors = null;
    } else {
      errors = Error.listFromJson(json['errors']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (errors != null)
      json['errors'] = errors;
    return json;
  }

  static List<ErrorsList> listFromJson(List<dynamic> json) {
    return json == null ? new List<ErrorsList>() : json.map((value) => new ErrorsList.fromJson(value)).toList();
  }

  static Map<String, ErrorsList> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ErrorsList>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new ErrorsList.fromJson(value));
    }
    return map;
  }
}


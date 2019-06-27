part of guest_sdk.api;

class Error {
  /* The name of the model with the error, or global if it is something outside a model */
  String domain = null;
  /* The model attribute where the error occured */
  String attribute = null;
  /* An error code reference for the specific error that occured */
  String code = null;
  /* A human readable error message that can be discarded for internationalization purposes */
  String message = null;
  Error();

  @override
  String toString() {
    return 'Error[domain=$domain, attribute=$attribute, code=$code, message=$message, ]';
  }

  Error.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['domain'] == null) {
      domain = null;
    } else {
          domain = json['domain'];
    }
    if (json['attribute'] == null) {
      attribute = null;
    } else {
          attribute = json['attribute'];
    }
    if (json['code'] == null) {
      code = null;
    } else {
          code = json['code'];
    }
    if (json['message'] == null) {
      message = null;
    } else {
          message = json['message'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (domain != null)
      json['domain'] = domain;
    if (attribute != null)
      json['attribute'] = attribute;
    if (code != null)
      json['code'] = code;
    if (message != null)
      json['message'] = message;
    return json;
  }

  static List<Error> listFromJson(List<dynamic> json) {
    return json == null ? new List<Error>() : json.map((value) => new Error.fromJson(value)).toList();
  }

  static Map<String, Error> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, Error>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new Error.fromJson(value));
    }
    return map;
  }
}


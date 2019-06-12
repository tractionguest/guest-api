part of guest_sdk.api;

class Credential {
  
  String token = null;
  Credential();

  @override
  String toString() {
    return 'Credential[token=$token, ]';
  }

  Credential.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['token'] == null) {
      token = null;
    } else {
          token = json['token'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (token != null)
      json['token'] = token;
    return json;
  }

  static List<Credential> listFromJson(List<dynamic> json) {
    return json == null ? new List<Credential>() : json.map((value) => new Credential.fromJson(value)).toList();
  }

  static Map<String, Credential> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, Credential>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new Credential.fromJson(value));
    }
    return map;
  }
}


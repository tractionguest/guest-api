part of guest_sdk.api;

class CredentialCreateParams {
  
  String email = null;
  
  String password = null;
  CredentialCreateParams();

  @override
  String toString() {
    return 'CredentialCreateParams[email=$email, password=$password, ]';
  }

  CredentialCreateParams.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['email'] == null) {
      email = null;
    } else {
          email = json['email'];
    }
    if (json['password'] == null) {
      password = null;
    } else {
          password = json['password'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (email != null)
      json['email'] = email;
    if (password != null)
      json['password'] = password;
    return json;
  }

  static List<CredentialCreateParams> listFromJson(List<dynamic> json) {
    return json == null ? new List<CredentialCreateParams>() : json.map((value) => new CredentialCreateParams.fromJson(value)).toList();
  }

  static Map<String, CredentialCreateParams> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, CredentialCreateParams>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new CredentialCreateParams.fromJson(value));
    }
    return map;
  }
}


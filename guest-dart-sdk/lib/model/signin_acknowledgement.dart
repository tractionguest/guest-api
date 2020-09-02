part of guest_sdk.api;

class SigninAcknowledgement {
  
  String code = null;
  
  DateTime acknowledgedAt = null;
  
  int id = null;
  SigninAcknowledgement();

  @override
  String toString() {
    return 'SigninAcknowledgement[code=$code, acknowledgedAt=$acknowledgedAt, id=$id, ]';
  }

  SigninAcknowledgement.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['code'] == null) {
      code = null;
    } else {
          code = json['code'];
    }
    if (json['acknowledged_at'] == null) {
      acknowledgedAt = null;
    } else {
      acknowledgedAt = DateTime.parse(json['acknowledged_at']);
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (code != null)
      json['code'] = code;
    if (acknowledgedAt != null)
      json['acknowledged_at'] = acknowledgedAt == null ? null : acknowledgedAt.toUtc().toIso8601String();
    if (id != null)
      json['id'] = id;
    return json;
  }

  static List<SigninAcknowledgement> listFromJson(List<dynamic> json) {
    return json == null ? new List<SigninAcknowledgement>() : json.map((value) => new SigninAcknowledgement.fromJson(value)).toList();
  }

  static Map<String, SigninAcknowledgement> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, SigninAcknowledgement>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new SigninAcknowledgement.fromJson(value));
    }
    return map;
  }
}


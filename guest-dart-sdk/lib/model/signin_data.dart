part of guest_sdk.api;

class SigninData {
  
  List<CustomField> customFields = [];
  
  String name = null;
  SigninData();

  @override
  String toString() {
    return 'SigninData[customFields=$customFields, name=$name, ]';
  }

  SigninData.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['custom_fields'] == null) {
      customFields = null;
    } else {
      customFields = CustomField.listFromJson(json['custom_fields']);
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (customFields != null)
      json['custom_fields'] = customFields;
    if (name != null)
      json['name'] = name;
    return json;
  }

  static List<SigninData> listFromJson(List<dynamic> json) {
    return json == null ? new List<SigninData>() : json.map((value) => new SigninData.fromJson(value)).toList();
  }

  static Map<String, SigninData> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, SigninData>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new SigninData.fromJson(value));
    }
    return map;
  }
}


part of guest_sdk.api;

class SigninData {
  
  String name = null;
  
  List<CustomField> customFields = [];
  SigninData();

  @override
  String toString() {
    return 'SigninData[name=$name, customFields=$customFields, ]';
  }

  SigninData.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['custom_fields'] == null) {
      customFields = null;
    } else {
      customFields = CustomField.listFromJson(json['custom_fields']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (name != null)
      json['name'] = name;
    if (customFields != null)
      json['custom_fields'] = customFields;
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


part of guest_sdk.api;

class InputPage {
  /* Eg: \"form page\", \"about you\", \"etc\" */
  String name = null;
  
  List<CustomField> customFields = [];
  InputPage();

  @override
  String toString() {
    return 'InputPage[name=$name, customFields=$customFields, ]';
  }

  InputPage.fromJson(Map<String, dynamic> json) {
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

  static List<InputPage> listFromJson(List<dynamic> json) {
    return json == null ? new List<InputPage>() : json.map((value) => new InputPage.fromJson(value)).toList();
  }

  static Map<String, InputPage> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InputPage>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InputPage.fromJson(value));
    }
    return map;
  }
}


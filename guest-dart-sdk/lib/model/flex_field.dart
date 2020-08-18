part of guest_sdk.api;

class FlexField {
  /* Flex field key */
  String fieldName = null;
  /* Flex field value */
  String fieldValue = null;
  FlexField();

  @override
  String toString() {
    return 'FlexField[fieldName=$fieldName, fieldValue=$fieldValue, ]';
  }

  FlexField.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['field_name'] == null) {
      fieldName = null;
    } else {
          fieldName = json['field_name'];
    }
    if (json['field_value'] == null) {
      fieldValue = null;
    } else {
          fieldValue = json['field_value'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (fieldName != null)
      json['field_name'] = fieldName;
    if (fieldValue != null)
      json['field_value'] = fieldValue;
    return json;
  }

  static List<FlexField> listFromJson(List<dynamic> json) {
    return json == null ? new List<FlexField>() : json.map((value) => new FlexField.fromJson(value)).toList();
  }

  static Map<String, FlexField> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, FlexField>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new FlexField.fromJson(value));
    }
    return map;
  }
}


part of guest_sdk.api;

class CustomField {
  /* The format type of the field */
  String format = null;
  //enum formatEnum {  string,  };{
  /* What the field should be displayed/labeled as */
  String fieldName = null;
  /* The value to be displayed for the field */
  String fieldValue = null;
  
  int id = null;
  CustomField();

  @override
  String toString() {
    return 'CustomField[format=$format, fieldName=$fieldName, fieldValue=$fieldValue, id=$id, ]';
  }

  CustomField.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['format'] == null) {
      format = null;
    } else {
          format = json['format'];
    }
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
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (format != null)
      json['format'] = format;
    if (fieldName != null)
      json['field_name'] = fieldName;
      json['field_value'] = fieldValue;
    if (id != null)
      json['id'] = id;
    return json;
  }

  static List<CustomField> listFromJson(List<dynamic> json) {
    return json == null ? new List<CustomField>() : json.map((value) => new CustomField.fromJson(value)).toList();
  }

  static Map<String, CustomField> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, CustomField>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new CustomField.fromJson(value));
    }
    return map;
  }
}


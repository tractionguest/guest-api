part of guest_sdk.api;

class AuditLogChange {
  /* What the field should be displayed/labeled as */
  String fieldName = null;
  /* The value to be displayed for the field before changes */
  String fieldValueBefore = null;
  /* The value to be displayed for the field after changes */
  String fieldValueAfter = null;
  /* The format type of the field */
  String format = null;
  //enum formatEnum {  string,  boolean,  integer,  json,  no_value,  };{
  AuditLogChange();

  @override
  String toString() {
    return 'AuditLogChange[fieldName=$fieldName, fieldValueBefore=$fieldValueBefore, fieldValueAfter=$fieldValueAfter, format=$format, ]';
  }

  AuditLogChange.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['field_name'] == null) {
      fieldName = null;
    } else {
          fieldName = json['field_name'];
    }
    if (json['field_value_before'] == null) {
      fieldValueBefore = null;
    } else {
          fieldValueBefore = json['field_value_before'];
    }
    if (json['field_value_after'] == null) {
      fieldValueAfter = null;
    } else {
          fieldValueAfter = json['field_value_after'];
    }
    if (json['format'] == null) {
      format = null;
    } else {
          format = json['format'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (fieldName != null)
      json['field_name'] = fieldName;
    if (fieldValueBefore != null)
      json['field_value_before'] = fieldValueBefore;
    if (fieldValueAfter != null)
      json['field_value_after'] = fieldValueAfter;
    if (format != null)
      json['format'] = format;
    return json;
  }

  static List<AuditLogChange> listFromJson(List<dynamic> json) {
    return json == null ? new List<AuditLogChange>() : json.map((value) => new AuditLogChange.fromJson(value)).toList();
  }

  static Map<String, AuditLogChange> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, AuditLogChange>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new AuditLogChange.fromJson(value));
    }
    return map;
  }
}


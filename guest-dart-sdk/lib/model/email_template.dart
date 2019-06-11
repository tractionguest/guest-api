part of guest_sdk.api;

class EmailTemplate {
  
  int id = null;
  
  String name = null;
  
  String templateType = null;
  EmailTemplate();

  @override
  String toString() {
    return 'EmailTemplate[id=$id, name=$name, templateType=$templateType, ]';
  }

  EmailTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['template_type'] == null) {
      templateType = null;
    } else {
          templateType = json['template_type'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (name != null)
      json['name'] = name;
    if (templateType != null)
      json['template_type'] = templateType;
    return json;
  }

  static List<EmailTemplate> listFromJson(List<dynamic> json) {
    return json == null ? new List<EmailTemplate>() : json.map((value) => new EmailTemplate.fromJson(value)).toList();
  }

  static Map<String, EmailTemplate> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, EmailTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new EmailTemplate.fromJson(value));
    }
    return map;
  }
}


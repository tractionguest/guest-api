part of guest_sdk.api;

class SimpleSignature {
  
  String status = null;
  
  String templateName = null;
  
  String id = null;
  
  String title = null;
  SimpleSignature();

  @override
  String toString() {
    return 'SimpleSignature[status=$status, templateName=$templateName, id=$id, title=$title, ]';
  }

  SimpleSignature.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['status'] == null) {
      status = null;
    } else {
          status = json['status'];
    }
    if (json['template_name'] == null) {
      templateName = null;
    } else {
          templateName = json['template_name'];
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['title'] == null) {
      title = null;
    } else {
          title = json['title'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (status != null)
      json['status'] = status;
    if (templateName != null)
      json['template_name'] = templateName;
    if (id != null)
      json['id'] = id;
    if (title != null)
      json['title'] = title;
    return json;
  }

  static List<SimpleSignature> listFromJson(List<dynamic> json) {
    return json == null ? new List<SimpleSignature>() : json.map((value) => new SimpleSignature.fromJson(value)).toList();
  }

  static Map<String, SimpleSignature> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, SimpleSignature>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new SimpleSignature.fromJson(value));
    }
    return map;
  }
}


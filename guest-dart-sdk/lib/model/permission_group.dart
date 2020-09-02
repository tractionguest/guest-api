part of guest_sdk.api;

class PermissionGroup {
  
  String name = null;
  
  String visibility = null;
  
  List<String> permissions = [];
  PermissionGroup();

  @override
  String toString() {
    return 'PermissionGroup[name=$name, visibility=$visibility, permissions=$permissions, ]';
  }

  PermissionGroup.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['visibility'] == null) {
      visibility = null;
    } else {
          visibility = json['visibility'];
    }
    if (json['permissions'] == null) {
      permissions = null;
    } else {
      permissions = (json['permissions'] as List).cast<String>();
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (name != null)
      json['name'] = name;
    if (visibility != null)
      json['visibility'] = visibility;
    if (permissions != null)
      json['permissions'] = permissions;
    return json;
  }

  static List<PermissionGroup> listFromJson(List<dynamic> json) {
    return json == null ? new List<PermissionGroup>() : json.map((value) => new PermissionGroup.fromJson(value)).toList();
  }

  static Map<String, PermissionGroup> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, PermissionGroup>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new PermissionGroup.fromJson(value));
    }
    return map;
  }
}


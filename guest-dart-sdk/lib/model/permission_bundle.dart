part of guest_sdk.api;

class PermissionBundle {
  
  int id = null;
  
  String bundleName = null;
  
  bool locked = null;
  
  String source = null;
  
  DateTime updatedAt = null;
  
  List<Permission> permissions = [];
  PermissionBundle();

  @override
  String toString() {
    return 'PermissionBundle[id=$id, bundleName=$bundleName, locked=$locked, source=$source, updatedAt=$updatedAt, permissions=$permissions, ]';
  }

  PermissionBundle.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['bundle_name'] == null) {
      bundleName = null;
    } else {
          bundleName = json['bundle_name'];
    }
    if (json['locked'] == null) {
      locked = null;
    } else {
          locked = json['locked'];
    }
    if (json['source'] == null) {
      source = null;
    } else {
          source = json['source'];
    }
    if (json['updated_at'] == null) {
      updatedAt = null;
    } else {
      updatedAt = DateTime.parse(json['updated_at']);
    }
    if (json['permissions'] == null) {
      permissions = null;
    } else {
      permissions = Permission.listFromJson(json['permissions']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (bundleName != null)
      json['bundle_name'] = bundleName;
    if (locked != null)
      json['locked'] = locked;
    if (source != null)
      json['source'] = source;
    if (updatedAt != null)
      json['updated_at'] = updatedAt == null ? null : updatedAt.toUtc().toIso8601String();
    if (permissions != null)
      json['permissions'] = permissions;
    return json;
  }

  static List<PermissionBundle> listFromJson(List<dynamic> json) {
    return json == null ? new List<PermissionBundle>() : json.map((value) => new PermissionBundle.fromJson(value)).toList();
  }

  static Map<String, PermissionBundle> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, PermissionBundle>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new PermissionBundle.fromJson(value));
    }
    return map;
  }
}


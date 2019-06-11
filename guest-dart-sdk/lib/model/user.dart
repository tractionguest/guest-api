part of guest_sdk.api;

class User {
  
  int id = null;
  
  List<PermissionBundle> permissionBundles = [];
  User();

  @override
  String toString() {
    return 'User[id=$id, permissionBundles=$permissionBundles, ]';
  }

  User.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['permission_bundles'] == null) {
      permissionBundles = null;
    } else {
      permissionBundles = PermissionBundle.listFromJson(json['permission_bundles']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (permissionBundles != null)
      json['permission_bundles'] = permissionBundles;
    return json;
  }

  static List<User> listFromJson(List<dynamic> json) {
    return json == null ? new List<User>() : json.map((value) => new User.fromJson(value)).toList();
  }

  static Map<String, User> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, User>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new User.fromJson(value));
    }
    return map;
  }
}


part of guest_sdk.api;

class User {
  
  int id = null;
  
  List<PermissionBundle> permissionBundles = [];
  
  String firstName = null;
  
  String lastName = null;
  
  String email = null;
  User();

  @override
  String toString() {
    return 'User[id=$id, permissionBundles=$permissionBundles, firstName=$firstName, lastName=$lastName, email=$email, ]';
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
    if (json['first_name'] == null) {
      firstName = null;
    } else {
          firstName = json['first_name'];
    }
    if (json['last_name'] == null) {
      lastName = null;
    } else {
          lastName = json['last_name'];
    }
    if (json['email'] == null) {
      email = null;
    } else {
          email = json['email'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (permissionBundles != null)
      json['permission_bundles'] = permissionBundles;
    if (firstName != null)
      json['first_name'] = firstName;
    if (lastName != null)
      json['last_name'] = lastName;
    if (email != null)
      json['email'] = email;
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


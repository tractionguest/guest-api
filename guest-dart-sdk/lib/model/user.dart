part of guest_sdk.api;

class User {
  
  int id = null;
  
  String firstName = null;
  
  String lastName = null;
  
  String email = null;
  
  List<PermissionGroup> permissionGroups = [];
  /* Identifies if user has access to mobile app features. */
  bool mobileAccessEnabled = null;
  User();

  @override
  String toString() {
    return 'User[id=$id, firstName=$firstName, lastName=$lastName, email=$email, permissionGroups=$permissionGroups, mobileAccessEnabled=$mobileAccessEnabled, ]';
  }

  User.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
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
    if (json['permission_groups'] == null) {
      permissionGroups = null;
    } else {
      permissionGroups = PermissionGroup.listFromJson(json['permission_groups']);
    }
    if (json['mobile_access_enabled'] == null) {
      mobileAccessEnabled = null;
    } else {
          mobileAccessEnabled = json['mobile_access_enabled'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (firstName != null)
      json['first_name'] = firstName;
    if (lastName != null)
      json['last_name'] = lastName;
    if (email != null)
      json['email'] = email;
    if (permissionGroups != null)
      json['permission_groups'] = permissionGroups;
    if (mobileAccessEnabled != null)
      json['mobile_access_enabled'] = mobileAccessEnabled;
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


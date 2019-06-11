part of guest_sdk.api;

class Host {
  
  int id = null;
  
  String email = null;
  
  String firstName = null;
  
  String lastName = null;
  
  String mobile = null;
  
  String profilePicUrl = null;
  Host();

  @override
  String toString() {
    return 'Host[id=$id, email=$email, firstName=$firstName, lastName=$lastName, mobile=$mobile, profilePicUrl=$profilePicUrl, ]';
  }

  Host.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['email'] == null) {
      email = null;
    } else {
          email = json['email'];
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
    if (json['mobile'] == null) {
      mobile = null;
    } else {
          mobile = json['mobile'];
    }
    if (json['profile_pic_url'] == null) {
      profilePicUrl = null;
    } else {
          profilePicUrl = json['profile_pic_url'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (email != null)
      json['email'] = email;
    if (firstName != null)
      json['first_name'] = firstName;
    if (lastName != null)
      json['last_name'] = lastName;
    if (mobile != null)
      json['mobile'] = mobile;
    if (profilePicUrl != null)
      json['profile_pic_url'] = profilePicUrl;
    return json;
  }

  static List<Host> listFromJson(List<dynamic> json) {
    return json == null ? new List<Host>() : json.map((value) => new Host.fromJson(value)).toList();
  }

  static Map<String, Host> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, Host>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new Host.fromJson(value));
    }
    return map;
  }
}


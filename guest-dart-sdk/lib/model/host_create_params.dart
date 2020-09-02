part of guest_sdk.api;

class HostCreateParams {
  
  String email = null;
  
  String firstName = null;
  
  String lastName = null;
  
  String profilePicUrl = null;
  /*  */
  String department = null;
  
  String mobileNumber = null;
  HostCreateParams();

  @override
  String toString() {
    return 'HostCreateParams[email=$email, firstName=$firstName, lastName=$lastName, profilePicUrl=$profilePicUrl, department=$department, mobileNumber=$mobileNumber, ]';
  }

  HostCreateParams.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
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
    if (json['profile_pic_url'] == null) {
      profilePicUrl = null;
    } else {
          profilePicUrl = json['profile_pic_url'];
    }
    if (json['department'] == null) {
      department = null;
    } else {
          department = json['department'];
    }
    if (json['mobile_number'] == null) {
      mobileNumber = null;
    } else {
          mobileNumber = json['mobile_number'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (email != null)
      json['email'] = email;
    if (firstName != null)
      json['first_name'] = firstName;
    if (lastName != null)
      json['last_name'] = lastName;
    if (profilePicUrl != null)
      json['profile_pic_url'] = profilePicUrl;
    if (department != null)
      json['department'] = department;
    if (mobileNumber != null)
      json['mobile_number'] = mobileNumber;
    return json;
  }

  static List<HostCreateParams> listFromJson(List<dynamic> json) {
    return json == null ? new List<HostCreateParams>() : json.map((value) => new HostCreateParams.fromJson(value)).toList();
  }

  static Map<String, HostCreateParams> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, HostCreateParams>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new HostCreateParams.fromJson(value));
    }
    return map;
  }
}


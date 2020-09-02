part of guest_sdk.api;

class Signin {
  
  int id = null;
  
  String mobileNumber = null;
  
  SigninWatchlist signinWatchlist = null;
  
  List<Host> hosts = [];
  
  DateTime signinTimestamp = null;
  
  String signinPhotoUrl = null;
  
  DateTime signedOutTimestamp = null;
  
  String locationName = null;
  
  String lastName = null;
  
  bool isAcknowledged = null;
  
  bool isAccountedFor = null;
  
  String firstName = null;
  
  String email = null;
  
  String company = null;
  
  Registration registration = null;
  Signin();

  @override
  String toString() {
    return 'Signin[id=$id, mobileNumber=$mobileNumber, signinWatchlist=$signinWatchlist, hosts=$hosts, signinTimestamp=$signinTimestamp, signinPhotoUrl=$signinPhotoUrl, signedOutTimestamp=$signedOutTimestamp, locationName=$locationName, lastName=$lastName, isAcknowledged=$isAcknowledged, isAccountedFor=$isAccountedFor, firstName=$firstName, email=$email, company=$company, registration=$registration, ]';
  }

  Signin.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['mobile_number'] == null) {
      mobileNumber = null;
    } else {
          mobileNumber = json['mobile_number'];
    }
    if (json['signin_watchlist'] == null) {
      signinWatchlist = null;
    } else {
      signinWatchlist = new SigninWatchlist.fromJson(json['signin_watchlist']);
    }
    if (json['hosts'] == null) {
      hosts = null;
    } else {
      hosts = Host.listFromJson(json['hosts']);
    }
    if (json['signin_timestamp'] == null) {
      signinTimestamp = null;
    } else {
      signinTimestamp = DateTime.parse(json['signin_timestamp']);
    }
    if (json['signin_photo_url'] == null) {
      signinPhotoUrl = null;
    } else {
          signinPhotoUrl = json['signin_photo_url'];
    }
    if (json['signed_out_timestamp'] == null) {
      signedOutTimestamp = null;
    } else {
      signedOutTimestamp = DateTime.parse(json['signed_out_timestamp']);
    }
    if (json['location_name'] == null) {
      locationName = null;
    } else {
          locationName = json['location_name'];
    }
    if (json['last_name'] == null) {
      lastName = null;
    } else {
          lastName = json['last_name'];
    }
    if (json['is_acknowledged'] == null) {
      isAcknowledged = null;
    } else {
          isAcknowledged = json['is_acknowledged'];
    }
    if (json['is_accounted_for'] == null) {
      isAccountedFor = null;
    } else {
          isAccountedFor = json['is_accounted_for'];
    }
    if (json['first_name'] == null) {
      firstName = null;
    } else {
          firstName = json['first_name'];
    }
    if (json['email'] == null) {
      email = null;
    } else {
          email = json['email'];
    }
    if (json['company'] == null) {
      company = null;
    } else {
          company = json['company'];
    }
    if (json['registration'] == null) {
      registration = null;
    } else {
      registration = new Registration.fromJson(json['registration']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (mobileNumber != null)
      json['mobile_number'] = mobileNumber;
    if (signinWatchlist != null)
      json['signin_watchlist'] = signinWatchlist;
    if (hosts != null)
      json['hosts'] = hosts;
    if (signinTimestamp != null)
      json['signin_timestamp'] = signinTimestamp == null ? null : signinTimestamp.toUtc().toIso8601String();
    if (signinPhotoUrl != null)
      json['signin_photo_url'] = signinPhotoUrl;
    if (signedOutTimestamp != null)
      json['signed_out_timestamp'] = signedOutTimestamp == null ? null : signedOutTimestamp.toUtc().toIso8601String();
    if (locationName != null)
      json['location_name'] = locationName;
    if (lastName != null)
      json['last_name'] = lastName;
    if (isAcknowledged != null)
      json['is_acknowledged'] = isAcknowledged;
    if (isAccountedFor != null)
      json['is_accounted_for'] = isAccountedFor;
    if (firstName != null)
      json['first_name'] = firstName;
    if (email != null)
      json['email'] = email;
    if (company != null)
      json['company'] = company;
    if (registration != null)
      json['registration'] = registration;
    return json;
  }

  static List<Signin> listFromJson(List<dynamic> json) {
    return json == null ? new List<Signin>() : json.map((value) => new Signin.fromJson(value)).toList();
  }

  static Map<String, Signin> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, Signin>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new Signin.fromJson(value));
    }
    return map;
  }
}


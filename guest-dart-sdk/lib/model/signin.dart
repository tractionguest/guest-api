part of guest_sdk.api;

class Signin {
  
  int id = null;
  
  String company = null;
  
  String email = null;
  
  String firstName = null;
  
  bool isAccountedFor = null;
  
  bool isAcknowledged = null;
  
  String lastName = null;
  
  String locationName = null;
  
  DateTime signedOutTimestamp = null;
  
  String signinPhotoUrl = null;
  
  DateTime signinTimestamp = null;
  
  bool isSignedOut = null;
  
  List<Host> hosts = [];
  
  List<SigninData> signinData = [];
  
  SigninWatchlist signinWatchlist = null;
  Signin();

  @override
  String toString() {
    return 'Signin[id=$id, company=$company, email=$email, firstName=$firstName, isAccountedFor=$isAccountedFor, isAcknowledged=$isAcknowledged, lastName=$lastName, locationName=$locationName, signedOutTimestamp=$signedOutTimestamp, signinPhotoUrl=$signinPhotoUrl, signinTimestamp=$signinTimestamp, isSignedOut=$isSignedOut, hosts=$hosts, signinData=$signinData, signinWatchlist=$signinWatchlist, ]';
  }

  Signin.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['company'] == null) {
      company = null;
    } else {
          company = json['company'];
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
    if (json['is_accounted_for'] == null) {
      isAccountedFor = null;
    } else {
          isAccountedFor = json['is_accounted_for'];
    }
    if (json['is_acknowledged'] == null) {
      isAcknowledged = null;
    } else {
          isAcknowledged = json['is_acknowledged'];
    }
    if (json['last_name'] == null) {
      lastName = null;
    } else {
          lastName = json['last_name'];
    }
    if (json['location_name'] == null) {
      locationName = null;
    } else {
          locationName = json['location_name'];
    }
    if (json['signed_out_timestamp'] == null) {
      signedOutTimestamp = null;
    } else {
      signedOutTimestamp = DateTime.parse(json['signed_out_timestamp']);
    }
    if (json['signin_photo_url'] == null) {
      signinPhotoUrl = null;
    } else {
          signinPhotoUrl = json['signin_photo_url'];
    }
    if (json['signin_timestamp'] == null) {
      signinTimestamp = null;
    } else {
      signinTimestamp = DateTime.parse(json['signin_timestamp']);
    }
    if (json['is_signed_out'] == null) {
      isSignedOut = null;
    } else {
          isSignedOut = json['is_signed_out'];
    }
    if (json['hosts'] == null) {
      hosts = null;
    } else {
      hosts = Host.listFromJson(json['hosts']);
    }
    if (json['signin_data'] == null) {
      signinData = null;
    } else {
      signinData = SigninData.listFromJson(json['signin_data']);
    }
    if (json['signin_watchlist'] == null) {
      signinWatchlist = null;
    } else {
      signinWatchlist = new SigninWatchlist.fromJson(json['signin_watchlist']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (company != null)
      json['company'] = company;
    if (email != null)
      json['email'] = email;
    if (firstName != null)
      json['first_name'] = firstName;
    if (isAccountedFor != null)
      json['is_accounted_for'] = isAccountedFor;
    if (isAcknowledged != null)
      json['is_acknowledged'] = isAcknowledged;
    if (lastName != null)
      json['last_name'] = lastName;
    if (locationName != null)
      json['location_name'] = locationName;
    if (signedOutTimestamp != null)
      json['signed_out_timestamp'] = signedOutTimestamp == null ? null : signedOutTimestamp.toUtc().toIso8601String();
    if (signinPhotoUrl != null)
      json['signin_photo_url'] = signinPhotoUrl;
    if (signinTimestamp != null)
      json['signin_timestamp'] = signinTimestamp == null ? null : signinTimestamp.toUtc().toIso8601String();
    if (isSignedOut != null)
      json['is_signed_out'] = isSignedOut;
    if (hosts != null)
      json['hosts'] = hosts;
    if (signinData != null)
      json['signin_data'] = signinData;
    if (signinWatchlist != null)
      json['signin_watchlist'] = signinWatchlist;
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


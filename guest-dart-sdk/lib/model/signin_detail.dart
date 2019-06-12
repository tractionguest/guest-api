part of guest_sdk.api;

class SigninDetail {
  
  int id = null;
  
  String company = null;
  
  String email = null;
  
  String firstName = null;
  
  bool isAccountedFor = null;
  /* Whether this Signin has been acknowledged yet. Can also be used as a one-way method of setting the Signin as acknowledged. */
  bool isAcknowledged = null;
  
  String lastName = null;
  
  String locationName = null;
  
  String mobileNumber = null;
  
  DateTime signedOutTimestamp = null;
  
  String signinPhotoUrl = null;
  
  DateTime signinTimestamp = null;
  
  SigninWatchlist watchlist = null;
  /* A one-way method of Signing out a Signin */
  bool isSignedOut = null;
  
  String note = null;
  
  SigninAcknowledgement signinAcknowledgement = null;
  
  List<SigninData> signinData = [];
  SigninDetail();

  @override
  String toString() {
    return 'SigninDetail[id=$id, company=$company, email=$email, firstName=$firstName, isAccountedFor=$isAccountedFor, isAcknowledged=$isAcknowledged, lastName=$lastName, locationName=$locationName, mobileNumber=$mobileNumber, signedOutTimestamp=$signedOutTimestamp, signinPhotoUrl=$signinPhotoUrl, signinTimestamp=$signinTimestamp, watchlist=$watchlist, isSignedOut=$isSignedOut, note=$note, signinAcknowledgement=$signinAcknowledgement, signinData=$signinData, ]';
  }

  SigninDetail.fromJson(Map<String, dynamic> json) {
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
    if (json['mobile_number'] == null) {
      mobileNumber = null;
    } else {
          mobileNumber = json['mobile_number'];
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
    if (json['watchlist'] == null) {
      watchlist = null;
    } else {
      watchlist = new SigninWatchlist.fromJson(json['watchlist']);
    }
    if (json['is_signed_out'] == null) {
      isSignedOut = null;
    } else {
          isSignedOut = json['is_signed_out'];
    }
    if (json['note'] == null) {
      note = null;
    } else {
          note = json['note'];
    }
    if (json['signin_acknowledgement'] == null) {
      signinAcknowledgement = null;
    } else {
      signinAcknowledgement = new SigninAcknowledgement.fromJson(json['signin_acknowledgement']);
    }
    if (json['signin_data'] == null) {
      signinData = null;
    } else {
      signinData = SigninData.listFromJson(json['signin_data']);
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
    if (mobileNumber != null)
      json['mobile_number'] = mobileNumber;
    if (signedOutTimestamp != null)
      json['signed_out_timestamp'] = signedOutTimestamp == null ? null : signedOutTimestamp.toUtc().toIso8601String();
    if (signinPhotoUrl != null)
      json['signin_photo_url'] = signinPhotoUrl;
    if (signinTimestamp != null)
      json['signin_timestamp'] = signinTimestamp == null ? null : signinTimestamp.toUtc().toIso8601String();
    if (watchlist != null)
      json['watchlist'] = watchlist;
    if (isSignedOut != null)
      json['is_signed_out'] = isSignedOut;
    if (note != null)
      json['note'] = note;
    if (signinAcknowledgement != null)
      json['signin_acknowledgement'] = signinAcknowledgement;
    if (signinData != null)
      json['signin_data'] = signinData;
    return json;
  }

  static List<SigninDetail> listFromJson(List<dynamic> json) {
    return json == null ? new List<SigninDetail>() : json.map((value) => new SigninDetail.fromJson(value)).toList();
  }

  static Map<String, SigninDetail> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, SigninDetail>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new SigninDetail.fromJson(value));
    }
    return map;
  }
}


part of guest_sdk.api;

class SigninDetail {
  
  int id = null;
  
  List<SignableDocument> documents = [];
  
  SigninWatchlist signinWatchlist = null;
  
  List<Host> hosts = [];
  
  List<SigninData> signinData = [];
  
  SigninAcknowledgement signinAcknowledgement = null;
  
  String note = null;
  /* A one-way method of Signing out a Signin */
  bool isSignedOut = null;
  
  DateTime signinTimestamp = null;
  
  String signinPhotoUrl = null;
  
  DateTime signedOutTimestamp = null;
  
  String mobileNumber = null;
  
  String locationName = null;
  
  String lastName = null;
  /* Whether this Signin has been acknowledged yet. Can also be used as a one-way method of setting the Signin as acknowledged. */
  bool isAcknowledged = null;
  
  bool isAccountedFor = null;
  
  String firstName = null;
  
  String email = null;
  
  String company = null;
  
  Registration registration = null;
  SigninDetail();

  @override
  String toString() {
    return 'SigninDetail[id=$id, documents=$documents, signinWatchlist=$signinWatchlist, hosts=$hosts, signinData=$signinData, signinAcknowledgement=$signinAcknowledgement, note=$note, isSignedOut=$isSignedOut, signinTimestamp=$signinTimestamp, signinPhotoUrl=$signinPhotoUrl, signedOutTimestamp=$signedOutTimestamp, mobileNumber=$mobileNumber, locationName=$locationName, lastName=$lastName, isAcknowledged=$isAcknowledged, isAccountedFor=$isAccountedFor, firstName=$firstName, email=$email, company=$company, registration=$registration, ]';
  }

  SigninDetail.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['documents'] == null) {
      documents = null;
    } else {
      documents = SignableDocument.listFromJson(json['documents']);
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
    if (json['signin_data'] == null) {
      signinData = null;
    } else {
      signinData = SigninData.listFromJson(json['signin_data']);
    }
    if (json['signin_acknowledgement'] == null) {
      signinAcknowledgement = null;
    } else {
      signinAcknowledgement = new SigninAcknowledgement.fromJson(json['signin_acknowledgement']);
    }
    if (json['note'] == null) {
      note = null;
    } else {
          note = json['note'];
    }
    if (json['is_signed_out'] == null) {
      isSignedOut = null;
    } else {
          isSignedOut = json['is_signed_out'];
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
    if (json['mobile_number'] == null) {
      mobileNumber = null;
    } else {
          mobileNumber = json['mobile_number'];
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
    if (documents != null)
      json['documents'] = documents;
    if (signinWatchlist != null)
      json['signin_watchlist'] = signinWatchlist;
    if (hosts != null)
      json['hosts'] = hosts;
    if (signinData != null)
      json['signin_data'] = signinData;
    if (signinAcknowledgement != null)
      json['signin_acknowledgement'] = signinAcknowledgement;
    if (note != null)
      json['note'] = note;
    if (isSignedOut != null)
      json['is_signed_out'] = isSignedOut;
    if (signinTimestamp != null)
      json['signin_timestamp'] = signinTimestamp == null ? null : signinTimestamp.toUtc().toIso8601String();
    if (signinPhotoUrl != null)
      json['signin_photo_url'] = signinPhotoUrl;
    if (signedOutTimestamp != null)
      json['signed_out_timestamp'] = signedOutTimestamp == null ? null : signedOutTimestamp.toUtc().toIso8601String();
    if (mobileNumber != null)
      json['mobile_number'] = mobileNumber;
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


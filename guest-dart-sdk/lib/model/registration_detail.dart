part of guest_sdk.api;

class RegistrationDetail {
  /* Registration unique identifier */
  String id = null;
  
  Visitor visitor = null;
  
  Invite invite = null;
  /* Response given by the guest */
  List<GuestResponse> guestResponses = [];
  /* URL of the uploaded photo */
  String photoUrl = null;
  /* Company's name */
  String company = null;
  /* E-mail */
  String email = null;
  /* Guest's name */
  String name = null;
  /* Datetime when registration was created */
  DateTime createdAt = null;
  
  Signin signin = null;
  RegistrationDetail();

  @override
  String toString() {
    return 'RegistrationDetail[id=$id, visitor=$visitor, invite=$invite, guestResponses=$guestResponses, photoUrl=$photoUrl, company=$company, email=$email, name=$name, createdAt=$createdAt, signin=$signin, ]';
  }

  RegistrationDetail.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['visitor'] == null) {
      visitor = null;
    } else {
      visitor = new Visitor.fromJson(json['visitor']);
    }
    if (json['invite'] == null) {
      invite = null;
    } else {
      invite = new Invite.fromJson(json['invite']);
    }
    if (json['guest_responses'] == null) {
      guestResponses = null;
    } else {
      guestResponses = GuestResponse.listFromJson(json['guest_responses']);
    }
    if (json['photo_url'] == null) {
      photoUrl = null;
    } else {
          photoUrl = json['photo_url'];
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
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['created_at'] == null) {
      createdAt = null;
    } else {
      createdAt = DateTime.parse(json['created_at']);
    }
    if (json['signin'] == null) {
      signin = null;
    } else {
      signin = new Signin.fromJson(json['signin']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (visitor != null)
      json['visitor'] = visitor;
    if (invite != null)
      json['invite'] = invite;
    if (guestResponses != null)
      json['guest_responses'] = guestResponses;
      json['photo_url'] = photoUrl;
      json['company'] = company;
      json['email'] = email;
      json['name'] = name;
    if (createdAt != null)
      json['created_at'] = createdAt == null ? null : createdAt.toUtc().toIso8601String();
    if (signin != null)
      json['signin'] = signin;
    return json;
  }

  static List<RegistrationDetail> listFromJson(List<dynamic> json) {
    return json == null ? new List<RegistrationDetail>() : json.map((value) => new RegistrationDetail.fromJson(value)).toList();
  }

  static Map<String, RegistrationDetail> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, RegistrationDetail>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new RegistrationDetail.fromJson(value));
    }
    return map;
  }
}


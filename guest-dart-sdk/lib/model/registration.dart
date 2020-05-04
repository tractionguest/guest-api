part of guest_sdk.api;

class Registration {
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
  Registration();

  @override
  String toString() {
    return 'Registration[id=$id, visitor=$visitor, invite=$invite, guestResponses=$guestResponses, photoUrl=$photoUrl, company=$company, email=$email, name=$name, createdAt=$createdAt, ]';
  }

  Registration.fromJson(Map<String, dynamic> json) {
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
    if (photoUrl != null)
      json['photo_url'] = photoUrl;
    if (company != null)
      json['company'] = company;
    if (email != null)
      json['email'] = email;
    if (name != null)
      json['name'] = name;
    if (createdAt != null)
      json['created_at'] = createdAt == null ? null : createdAt.toUtc().toIso8601String();
    return json;
  }

  static List<Registration> listFromJson(List<dynamic> json) {
    return json == null ? new List<Registration>() : json.map((value) => new Registration.fromJson(value)).toList();
  }

  static Map<String, Registration> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, Registration>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new Registration.fromJson(value));
    }
    return map;
  }
}


part of guest_sdk.api;

class Registration {
  /* Registration unique identifier */
  String id = null;
  /* Datetime when registration was created */
  DateTime createdAt = null;
  /* Guest's name */
  String name = null;
  /* E-mail */
  String email = null;
  /* Company's name */
  String company = null;
  /* URL of the uploaded photo */
  String photoUrl = null;
  /* Response given by the guest */
  List<GuestResponse> guestReponses = [];
  
  Invite invite = null;
  
  Visitor visitor = null;
  Registration();

  @override
  String toString() {
    return 'Registration[id=$id, createdAt=$createdAt, name=$name, email=$email, company=$company, photoUrl=$photoUrl, guestReponses=$guestReponses, invite=$invite, visitor=$visitor, ]';
  }

  Registration.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['created_at'] == null) {
      createdAt = null;
    } else {
      createdAt = DateTime.parse(json['created_at']);
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
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
    if (json['photo_url'] == null) {
      photoUrl = null;
    } else {
          photoUrl = json['photo_url'];
    }
    if (json['guest_reponses'] == null) {
      guestReponses = null;
    } else {
      guestReponses = GuestResponse.listFromJson(json['guest_reponses']);
    }
    if (json['invite'] == null) {
      invite = null;
    } else {
      invite = new Invite.fromJson(json['invite']);
    }
    if (json['visitor'] == null) {
      visitor = null;
    } else {
      visitor = new Visitor.fromJson(json['visitor']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (createdAt != null)
      json['created_at'] = createdAt == null ? null : createdAt.toUtc().toIso8601String();
    if (name != null)
      json['name'] = name;
    if (email != null)
      json['email'] = email;
    if (company != null)
      json['company'] = company;
    if (photoUrl != null)
      json['photo_url'] = photoUrl;
    if (guestReponses != null)
      json['guest_reponses'] = guestReponses;
    if (invite != null)
      json['invite'] = invite;
    if (visitor != null)
      json['visitor'] = visitor;
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


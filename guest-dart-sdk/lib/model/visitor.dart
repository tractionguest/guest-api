part of guest_sdk.api;

class Visitor {
  /* UUID */
  String id = null;
  
  bool active = null;
  
  String company = null;
  
  String createdVia = null;
  
  String email = null;
  
  String firstName = null;
  
  String lastName = null;
  
  String mobile = null;
  
  String note = null;
  
  String profilePicContentType = null;
  
  String profilePicFileName = null;
  
  String profilePicFileSize = null;
  
  String profilePicUpdatedAt = null;
  
  String watchlistLevel = null;
  
  DateTime createdAt = null;
  
  DateTime updatedAt = null;
  Visitor();

  @override
  String toString() {
    return 'Visitor[id=$id, active=$active, company=$company, createdVia=$createdVia, email=$email, firstName=$firstName, lastName=$lastName, mobile=$mobile, note=$note, profilePicContentType=$profilePicContentType, profilePicFileName=$profilePicFileName, profilePicFileSize=$profilePicFileSize, profilePicUpdatedAt=$profilePicUpdatedAt, watchlistLevel=$watchlistLevel, createdAt=$createdAt, updatedAt=$updatedAt, ]';
  }

  Visitor.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['active'] == null) {
      active = null;
    } else {
          active = json['active'];
    }
    if (json['company'] == null) {
      company = null;
    } else {
          company = json['company'];
    }
    if (json['created_via'] == null) {
      createdVia = null;
    } else {
          createdVia = json['created_via'];
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
    if (json['note'] == null) {
      note = null;
    } else {
          note = json['note'];
    }
    if (json['profile_pic_content_type'] == null) {
      profilePicContentType = null;
    } else {
          profilePicContentType = json['profile_pic_content_type'];
    }
    if (json['profile_pic_file_name'] == null) {
      profilePicFileName = null;
    } else {
          profilePicFileName = json['profile_pic_file_name'];
    }
    if (json['profile_pic_file_size'] == null) {
      profilePicFileSize = null;
    } else {
          profilePicFileSize = json['profile_pic_file_size'];
    }
    if (json['profile_pic_updated_at'] == null) {
      profilePicUpdatedAt = null;
    } else {
          profilePicUpdatedAt = json['profile_pic_updated_at'];
    }
    if (json['watchlist_level'] == null) {
      watchlistLevel = null;
    } else {
          watchlistLevel = json['watchlist_level'];
    }
    if (json['created_at'] == null) {
      createdAt = null;
    } else {
      createdAt = DateTime.parse(json['created_at']);
    }
    if (json['updated_at'] == null) {
      updatedAt = null;
    } else {
      updatedAt = DateTime.parse(json['updated_at']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (active != null)
      json['active'] = active;
    if (company != null)
      json['company'] = company;
    if (createdVia != null)
      json['created_via'] = createdVia;
    if (email != null)
      json['email'] = email;
    if (firstName != null)
      json['first_name'] = firstName;
    if (lastName != null)
      json['last_name'] = lastName;
    if (mobile != null)
      json['mobile'] = mobile;
    if (note != null)
      json['note'] = note;
    if (profilePicContentType != null)
      json['profile_pic_content_type'] = profilePicContentType;
    if (profilePicFileName != null)
      json['profile_pic_file_name'] = profilePicFileName;
    if (profilePicFileSize != null)
      json['profile_pic_file_size'] = profilePicFileSize;
    if (profilePicUpdatedAt != null)
      json['profile_pic_updated_at'] = profilePicUpdatedAt;
    if (watchlistLevel != null)
      json['watchlist_level'] = watchlistLevel;
    if (createdAt != null)
      json['created_at'] = createdAt == null ? null : createdAt.toUtc().toIso8601String();
    if (updatedAt != null)
      json['updated_at'] = updatedAt == null ? null : updatedAt.toUtc().toIso8601String();
    return json;
  }

  static List<Visitor> listFromJson(List<dynamic> json) {
    return json == null ? new List<Visitor>() : json.map((value) => new Visitor.fromJson(value)).toList();
  }

  static Map<String, Visitor> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, Visitor>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new Visitor.fromJson(value));
    }
    return map;
  }
}


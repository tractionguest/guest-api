part of guest_sdk.api;

class SigninCreateParams {
  
  int guestEmailTemplateId = null;
  
  int hostEmailTemplateId = null;
  
  List<int> hostIds = [];
  
  int locationId = null;
  
  bool sendNotifications = null;
  
  List<Object> photos = [];
  
  String smsMessage = null;
  
  String firstName = null;
  
  String lastName = null;
  
  String company = null;
  
  String email = null;
  SigninCreateParams();

  @override
  String toString() {
    return 'SigninCreateParams[guestEmailTemplateId=$guestEmailTemplateId, hostEmailTemplateId=$hostEmailTemplateId, hostIds=$hostIds, locationId=$locationId, sendNotifications=$sendNotifications, photos=$photos, smsMessage=$smsMessage, firstName=$firstName, lastName=$lastName, company=$company, email=$email, ]';
  }

  SigninCreateParams.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['guest_email_template_id'] == null) {
      guestEmailTemplateId = null;
    } else {
          guestEmailTemplateId = json['guest_email_template_id'];
    }
    if (json['host_email_template_id'] == null) {
      hostEmailTemplateId = null;
    } else {
          hostEmailTemplateId = json['host_email_template_id'];
    }
    if (json['host_ids'] == null) {
      hostIds = null;
    } else {
      hostIds = (json['host_ids'] as List).cast<int>();
    }
    if (json['location_id'] == null) {
      locationId = null;
    } else {
          locationId = json['location_id'];
    }
    if (json['send_notifications'] == null) {
      sendNotifications = null;
    } else {
          sendNotifications = json['send_notifications'];
    }
    if (json['photos'] == null) {
      photos = null;
    } else {
      photos = Object.listFromJson(json['photos']);
    }
    if (json['sms_message'] == null) {
      smsMessage = null;
    } else {
          smsMessage = json['sms_message'];
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
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (guestEmailTemplateId != null)
      json['guest_email_template_id'] = guestEmailTemplateId;
    if (hostEmailTemplateId != null)
      json['host_email_template_id'] = hostEmailTemplateId;
    if (hostIds != null)
      json['host_ids'] = hostIds;
    if (locationId != null)
      json['location_id'] = locationId;
    if (sendNotifications != null)
      json['send_notifications'] = sendNotifications;
    if (photos != null)
      json['photos'] = photos;
    if (smsMessage != null)
      json['sms_message'] = smsMessage;
    if (firstName != null)
      json['first_name'] = firstName;
    if (lastName != null)
      json['last_name'] = lastName;
    if (company != null)
      json['company'] = company;
    if (email != null)
      json['email'] = email;
    return json;
  }

  static List<SigninCreateParams> listFromJson(List<dynamic> json) {
    return json == null ? new List<SigninCreateParams>() : json.map((value) => new SigninCreateParams.fromJson(value)).toList();
  }

  static Map<String, SigninCreateParams> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, SigninCreateParams>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new SigninCreateParams.fromJson(value));
    }
    return map;
  }
}


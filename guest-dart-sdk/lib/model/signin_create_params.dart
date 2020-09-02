part of guest_sdk.api;

class SigninCreateParams {
  /* UUID of a Registration */
  String registrationId = null;
  /* E-mail, ignored if `registration_id` is included */
  String email = null;
  /* Company name, ignored if `registration_id` is included */
  String company = null;
  /* Last name, ignored if `registration_id` is included */
  String lastName = null;
  /* First name, ignored if `registration_id` is included */
  String firstName = null;
  
  String smsMessage = null;
  
  bool sendNotifications = null;
  /* ID of the Location where the Signin happened, ignored if `registration_id` is included */
  int locationId = null;
  /* Array of Host ids, ignored if `registration_id` is included */
  List<int> hostIds = [];
  
  int hostEmailTemplateId = null;
  
  int guestEmailTemplateId = null;
  SigninCreateParams();

  @override
  String toString() {
    return 'SigninCreateParams[registrationId=$registrationId, email=$email, company=$company, lastName=$lastName, firstName=$firstName, smsMessage=$smsMessage, sendNotifications=$sendNotifications, locationId=$locationId, hostIds=$hostIds, hostEmailTemplateId=$hostEmailTemplateId, guestEmailTemplateId=$guestEmailTemplateId, ]';
  }

  SigninCreateParams.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['registration_id'] == null) {
      registrationId = null;
    } else {
          registrationId = json['registration_id'];
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
    if (json['last_name'] == null) {
      lastName = null;
    } else {
          lastName = json['last_name'];
    }
    if (json['first_name'] == null) {
      firstName = null;
    } else {
          firstName = json['first_name'];
    }
    if (json['sms_message'] == null) {
      smsMessage = null;
    } else {
          smsMessage = json['sms_message'];
    }
    if (json['send_notifications'] == null) {
      sendNotifications = null;
    } else {
          sendNotifications = json['send_notifications'];
    }
    if (json['location_id'] == null) {
      locationId = null;
    } else {
          locationId = json['location_id'];
    }
    if (json['host_ids'] == null) {
      hostIds = null;
    } else {
      hostIds = (json['host_ids'] as List).cast<int>();
    }
    if (json['host_email_template_id'] == null) {
      hostEmailTemplateId = null;
    } else {
          hostEmailTemplateId = json['host_email_template_id'];
    }
    if (json['guest_email_template_id'] == null) {
      guestEmailTemplateId = null;
    } else {
          guestEmailTemplateId = json['guest_email_template_id'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (registrationId != null)
      json['registration_id'] = registrationId;
    if (email != null)
      json['email'] = email;
    if (company != null)
      json['company'] = company;
    if (lastName != null)
      json['last_name'] = lastName;
    if (firstName != null)
      json['first_name'] = firstName;
    if (smsMessage != null)
      json['sms_message'] = smsMessage;
    if (sendNotifications != null)
      json['send_notifications'] = sendNotifications;
    if (locationId != null)
      json['location_id'] = locationId;
    if (hostIds != null)
      json['host_ids'] = hostIds;
    if (hostEmailTemplateId != null)
      json['host_email_template_id'] = hostEmailTemplateId;
    if (guestEmailTemplateId != null)
      json['guest_email_template_id'] = guestEmailTemplateId;
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


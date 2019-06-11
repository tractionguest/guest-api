part of guest_sdk.api;

class InviteUpdateParams {
  
  bool checkedIn = null;
  
  bool onPremise = null;
  
  String sentEmail = null;
  
  int userId = null;
  
  int deviceConfigurationId = null;
  InviteUpdateParams();

  @override
  String toString() {
    return 'InviteUpdateParams[checkedIn=$checkedIn, onPremise=$onPremise, sentEmail=$sentEmail, userId=$userId, deviceConfigurationId=$deviceConfigurationId, ]';
  }

  InviteUpdateParams.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['checked_in'] == null) {
      checkedIn = null;
    } else {
          checkedIn = json['checked_in'];
    }
    if (json['on_premise'] == null) {
      onPremise = null;
    } else {
          onPremise = json['on_premise'];
    }
    if (json['sent_email'] == null) {
      sentEmail = null;
    } else {
          sentEmail = json['sent_email'];
    }
    if (json['user_id'] == null) {
      userId = null;
    } else {
          userId = json['user_id'];
    }
    if (json['device_configuration_id'] == null) {
      deviceConfigurationId = null;
    } else {
          deviceConfigurationId = json['device_configuration_id'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (checkedIn != null)
      json['checked_in'] = checkedIn;
    if (onPremise != null)
      json['on_premise'] = onPremise;
    if (sentEmail != null)
      json['sent_email'] = sentEmail;
    if (userId != null)
      json['user_id'] = userId;
    if (deviceConfigurationId != null)
      json['device_configuration_id'] = deviceConfigurationId;
    return json;
  }

  static List<InviteUpdateParams> listFromJson(List<dynamic> json) {
    return json == null ? new List<InviteUpdateParams>() : json.map((value) => new InviteUpdateParams.fromJson(value)).toList();
  }

  static Map<String, InviteUpdateParams> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InviteUpdateParams>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InviteUpdateParams.fromJson(value));
    }
    return map;
  }
}


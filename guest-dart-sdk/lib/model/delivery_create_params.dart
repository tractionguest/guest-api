part of guest_sdk.api;

class DeliveryCreateParams {
  
  int locationId = null;
  
  int hostId = null;
  
  String photoUrl = null;
  
  DateTime signinTimestamp = null;
  
  DateTime signoutTimestamp = null;
  
  String recipientName = null;
  DeliveryCreateParams();

  @override
  String toString() {
    return 'DeliveryCreateParams[locationId=$locationId, hostId=$hostId, photoUrl=$photoUrl, signinTimestamp=$signinTimestamp, signoutTimestamp=$signoutTimestamp, recipientName=$recipientName, ]';
  }

  DeliveryCreateParams.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['location_id'] == null) {
      locationId = null;
    } else {
          locationId = json['location_id'];
    }
    if (json['host_id'] == null) {
      hostId = null;
    } else {
          hostId = json['host_id'];
    }
    if (json['photo_url'] == null) {
      photoUrl = null;
    } else {
          photoUrl = json['photo_url'];
    }
    if (json['signin_timestamp'] == null) {
      signinTimestamp = null;
    } else {
      signinTimestamp = DateTime.parse(json['signin_timestamp']);
    }
    if (json['signout_timestamp'] == null) {
      signoutTimestamp = null;
    } else {
      signoutTimestamp = DateTime.parse(json['signout_timestamp']);
    }
    if (json['recipient_name'] == null) {
      recipientName = null;
    } else {
          recipientName = json['recipient_name'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (locationId != null)
      json['location_id'] = locationId;
    if (hostId != null)
      json['host_id'] = hostId;
    if (photoUrl != null)
      json['photo_url'] = photoUrl;
    if (signinTimestamp != null)
      json['signin_timestamp'] = signinTimestamp == null ? null : signinTimestamp.toUtc().toIso8601String();
    if (signoutTimestamp != null)
      json['signout_timestamp'] = signoutTimestamp == null ? null : signoutTimestamp.toUtc().toIso8601String();
    if (recipientName != null)
      json['recipient_name'] = recipientName;
    return json;
  }

  static List<DeliveryCreateParams> listFromJson(List<dynamic> json) {
    return json == null ? new List<DeliveryCreateParams>() : json.map((value) => new DeliveryCreateParams.fromJson(value)).toList();
  }

  static Map<String, DeliveryCreateParams> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, DeliveryCreateParams>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new DeliveryCreateParams.fromJson(value));
    }
    return map;
  }
}


part of guest_sdk.api;

class DeliveryUpdateParams {
  
  int hostId = null;
  
  String photoUrl = null;
  
  DateTime signinTimestamp = null;
  
  DateTime signoutTimestamp = null;
  
  String recipientName = null;
  DeliveryUpdateParams();

  @override
  String toString() {
    return 'DeliveryUpdateParams[hostId=$hostId, photoUrl=$photoUrl, signinTimestamp=$signinTimestamp, signoutTimestamp=$signoutTimestamp, recipientName=$recipientName, ]';
  }

  DeliveryUpdateParams.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
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

  static List<DeliveryUpdateParams> listFromJson(List<dynamic> json) {
    return json == null ? new List<DeliveryUpdateParams>() : json.map((value) => new DeliveryUpdateParams.fromJson(value)).toList();
  }

  static Map<String, DeliveryUpdateParams> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, DeliveryUpdateParams>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new DeliveryUpdateParams.fromJson(value));
    }
    return map;
  }
}


part of guest_sdk.api;

class DeliveryUpdateParams {
  
  int hostId = null;
  
  String photoUrl = null;
  
  String recipientName = null;
  
  DateTime pickupTimestamp = null;
  DeliveryUpdateParams();

  @override
  String toString() {
    return 'DeliveryUpdateParams[hostId=$hostId, photoUrl=$photoUrl, recipientName=$recipientName, pickupTimestamp=$pickupTimestamp, ]';
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
    if (json['recipient_name'] == null) {
      recipientName = null;
    } else {
          recipientName = json['recipient_name'];
    }
    if (json['pickup_timestamp'] == null) {
      pickupTimestamp = null;
    } else {
      pickupTimestamp = DateTime.parse(json['pickup_timestamp']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (hostId != null)
      json['host_id'] = hostId;
    if (photoUrl != null)
      json['photo_url'] = photoUrl;
    if (recipientName != null)
      json['recipient_name'] = recipientName;
    if (pickupTimestamp != null)
      json['pickup_timestamp'] = pickupTimestamp == null ? null : pickupTimestamp.toUtc().toIso8601String();
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


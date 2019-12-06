part of guest_sdk.api;

class DeliveryCreateParams {
  
  String locationId = null;
  
  String hostId = null;
  
  String photoUrl = null;
  
  String recipientName = null;
  
  DateTime pickupTimestamp = null;
  DeliveryCreateParams();

  @override
  String toString() {
    return 'DeliveryCreateParams[locationId=$locationId, hostId=$hostId, photoUrl=$photoUrl, recipientName=$recipientName, pickupTimestamp=$pickupTimestamp, ]';
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
    if (locationId != null)
      json['location_id'] = locationId;
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


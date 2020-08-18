part of guest_sdk.api;

class Delivery {
  
  String photoUrl = null;
  
  String recipientName = null;
  
  Host host = null;
  
  Location location = null;
  
  DateTime createdAt = null;
  
  DateTime pickupTimestamp = null;
  Delivery();

  @override
  String toString() {
    return 'Delivery[photoUrl=$photoUrl, recipientName=$recipientName, host=$host, location=$location, createdAt=$createdAt, pickupTimestamp=$pickupTimestamp, ]';
  }

  Delivery.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
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
    if (json['host'] == null) {
      host = null;
    } else {
      host = new Host.fromJson(json['host']);
    }
    if (json['location'] == null) {
      location = null;
    } else {
      location = new Location.fromJson(json['location']);
    }
    if (json['created_at'] == null) {
      createdAt = null;
    } else {
      createdAt = DateTime.parse(json['created_at']);
    }
    if (json['pickup_timestamp'] == null) {
      pickupTimestamp = null;
    } else {
      pickupTimestamp = DateTime.parse(json['pickup_timestamp']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (photoUrl != null)
      json['photo_url'] = photoUrl;
    if (recipientName != null)
      json['recipient_name'] = recipientName;
    if (host != null)
      json['host'] = host;
    if (location != null)
      json['location'] = location;
    if (createdAt != null)
      json['created_at'] = createdAt == null ? null : createdAt.toUtc().toIso8601String();
    if (pickupTimestamp != null)
      json['pickup_timestamp'] = pickupTimestamp == null ? null : pickupTimestamp.toUtc().toIso8601String();
    return json;
  }

  static List<Delivery> listFromJson(List<dynamic> json) {
    return json == null ? new List<Delivery>() : json.map((value) => new Delivery.fromJson(value)).toList();
  }

  static Map<String, Delivery> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, Delivery>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new Delivery.fromJson(value));
    }
    return map;
  }
}


part of guest_sdk.api;

class Package {
  
  int id = null;
  
  Host recipient = null;
  
  Location location = null;
  /* this can be one of the following states: 'processing', 'recipient_matched', 'needs_attention' or 'picked_up' */
  String packageState = null;
  //enum packageStateEnum {  processing,  recipient_matched,  needs_attention,  picked_up,  };{
  /* A carrier name that gets detected on the shipping label. i.e. USPS, Purolator, DHL, Canada Post, Royal Mail, etc...  */
  String carrierName = null;
  
  DateTime pickedUpAt = null;
  
  DateTime createdAt = null;
  
  Image image = null;
  Package();

  @override
  String toString() {
    return 'Package[id=$id, recipient=$recipient, location=$location, packageState=$packageState, carrierName=$carrierName, pickedUpAt=$pickedUpAt, createdAt=$createdAt, image=$image, ]';
  }

  Package.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['recipient'] == null) {
      recipient = null;
    } else {
      recipient = new Host.fromJson(json['recipient']);
    }
    if (json['location'] == null) {
      location = null;
    } else {
      location = new Location.fromJson(json['location']);
    }
    if (json['package_state'] == null) {
      packageState = null;
    } else {
          packageState = json['package_state'];
    }
    if (json['carrier_name'] == null) {
      carrierName = null;
    } else {
          carrierName = json['carrier_name'];
    }
    if (json['picked_up_at'] == null) {
      pickedUpAt = null;
    } else {
      pickedUpAt = DateTime.parse(json['picked_up_at']);
    }
    if (json['created_at'] == null) {
      createdAt = null;
    } else {
      createdAt = DateTime.parse(json['created_at']);
    }
    if (json['image'] == null) {
      image = null;
    } else {
      image = new Image.fromJson(json['image']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (recipient != null)
      json['recipient'] = recipient;
    if (location != null)
      json['location'] = location;
    if (packageState != null)
      json['package_state'] = packageState;
    if (carrierName != null)
      json['carrier_name'] = carrierName;
      json['picked_up_at'] = pickedUpAt == null ? null : pickedUpAt.toUtc().toIso8601String();
    if (createdAt != null)
      json['created_at'] = createdAt == null ? null : createdAt.toUtc().toIso8601String();
    if (image != null)
      json['image'] = image;
    return json;
  }

  static List<Package> listFromJson(List<dynamic> json) {
    return json == null ? new List<Package>() : json.map((value) => new Package.fromJson(value)).toList();
  }

  static Map<String, Package> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, Package>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new Package.fromJson(value));
    }
    return map;
  }
}


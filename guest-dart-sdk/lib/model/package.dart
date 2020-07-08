part of guest_sdk.api;

class Package {
  
  int id = null;
  
  Host recipient = null;
  
  Location location = null;
  
  String packageState = null;
  
  String carrierName = null;
  
  String pickedUpAt = null;
  
  String createdAt = null;
  
  String imageUrl = null;
  
  String nlpResults = null;
  
  String ocrResult = null;
  Package();

  @override
  String toString() {
    return 'Package[id=$id, recipient=$recipient, location=$location, packageState=$packageState, carrierName=$carrierName, pickedUpAt=$pickedUpAt, createdAt=$createdAt, imageUrl=$imageUrl, nlpResults=$nlpResults, ocrResult=$ocrResult, ]';
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
          pickedUpAt = json['picked_up_at'];
    }
    if (json['created_at'] == null) {
      createdAt = null;
    } else {
          createdAt = json['created_at'];
    }
    if (json['image_url'] == null) {
      imageUrl = null;
    } else {
          imageUrl = json['image_url'];
    }
    if (json['nlp_results'] == null) {
      nlpResults = null;
    } else {
          nlpResults = json['nlp_results'];
    }
    if (json['ocr_result'] == null) {
      ocrResult = null;
    } else {
          ocrResult = json['ocr_result'];
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
    if (pickedUpAt != null)
      json['picked_up_at'] = pickedUpAt;
    if (createdAt != null)
      json['created_at'] = createdAt;
    if (imageUrl != null)
      json['image_url'] = imageUrl;
    if (nlpResults != null)
      json['nlp_results'] = nlpResults;
    if (ocrResult != null)
      json['ocr_result'] = ocrResult;
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


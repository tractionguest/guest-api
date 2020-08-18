part of guest_sdk.api;

class PackageUpdateParams {
  /* changes the package_state to picked up and assigns non null value to picked_up_at */
  bool pickedUp = null;
  /* change/update the package's carrier/courier information */
  String carrierName = null;
  /* id of the Host for which you want to send notifications to regarding their package */
  int recipientId = null;
  PackageUpdateParams();

  @override
  String toString() {
    return 'PackageUpdateParams[pickedUp=$pickedUp, carrierName=$carrierName, recipientId=$recipientId, ]';
  }

  PackageUpdateParams.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['picked_up'] == null) {
      pickedUp = null;
    } else {
          pickedUp = json['picked_up'];
    }
    if (json['carrier_name'] == null) {
      carrierName = null;
    } else {
          carrierName = json['carrier_name'];
    }
    if (json['recipient_id'] == null) {
      recipientId = null;
    } else {
          recipientId = json['recipient_id'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (pickedUp != null)
      json['picked_up'] = pickedUp;
    if (carrierName != null)
      json['carrier_name'] = carrierName;
    if (recipientId != null)
      json['recipient_id'] = recipientId;
    return json;
  }

  static List<PackageUpdateParams> listFromJson(List<dynamic> json) {
    return json == null ? new List<PackageUpdateParams>() : json.map((value) => new PackageUpdateParams.fromJson(value)).toList();
  }

  static Map<String, PackageUpdateParams> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, PackageUpdateParams>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new PackageUpdateParams.fromJson(value));
    }
    return map;
  }
}


part of guest_sdk.api;

class ParkingLot {
  
  int id = null;
  
  String name = null;
  ParkingLot();

  @override
  String toString() {
    return 'ParkingLot[id=$id, name=$name, ]';
  }

  ParkingLot.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (name != null)
      json['name'] = name;
    return json;
  }

  static List<ParkingLot> listFromJson(List<dynamic> json) {
    return json == null ? new List<ParkingLot>() : json.map((value) => new ParkingLot.fromJson(value)).toList();
  }

  static Map<String, ParkingLot> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ParkingLot>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new ParkingLot.fromJson(value));
    }
    return map;
  }
}


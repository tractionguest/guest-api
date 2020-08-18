part of guest_sdk.api;

class PaginatedParkingLotList {
  
  List<ParkingLot> parkingLots = [];
  
  Pagination pagination = null;
  PaginatedParkingLotList();

  @override
  String toString() {
    return 'PaginatedParkingLotList[parkingLots=$parkingLots, pagination=$pagination, ]';
  }

  PaginatedParkingLotList.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['parking_lots'] == null) {
      parkingLots = null;
    } else {
      parkingLots = ParkingLot.listFromJson(json['parking_lots']);
    }
    if (json['pagination'] == null) {
      pagination = null;
    } else {
      pagination = new Pagination.fromJson(json['pagination']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (parkingLots != null)
      json['parking_lots'] = parkingLots;
    if (pagination != null)
      json['pagination'] = pagination;
    return json;
  }

  static List<PaginatedParkingLotList> listFromJson(List<dynamic> json) {
    return json == null ? new List<PaginatedParkingLotList>() : json.map((value) => new PaginatedParkingLotList.fromJson(value)).toList();
  }

  static Map<String, PaginatedParkingLotList> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, PaginatedParkingLotList>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new PaginatedParkingLotList.fromJson(value));
    }
    return map;
  }
}


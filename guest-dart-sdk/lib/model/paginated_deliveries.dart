part of guest_sdk.api;

class PaginatedDeliveries {
  
  List<Delivery> deliveries = [];
  
  Pagination pagination = null;
  PaginatedDeliveries();

  @override
  String toString() {
    return 'PaginatedDeliveries[deliveries=$deliveries, pagination=$pagination, ]';
  }

  PaginatedDeliveries.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['deliveries'] == null) {
      deliveries = null;
    } else {
      deliveries = Delivery.listFromJson(json['deliveries']);
    }
    if (json['pagination'] == null) {
      pagination = null;
    } else {
      pagination = new Pagination.fromJson(json['pagination']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (deliveries != null)
      json['deliveries'] = deliveries;
    if (pagination != null)
      json['pagination'] = pagination;
    return json;
  }

  static List<PaginatedDeliveries> listFromJson(List<dynamic> json) {
    return json == null ? new List<PaginatedDeliveries>() : json.map((value) => new PaginatedDeliveries.fromJson(value)).toList();
  }

  static Map<String, PaginatedDeliveries> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, PaginatedDeliveries>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new PaginatedDeliveries.fromJson(value));
    }
    return map;
  }
}


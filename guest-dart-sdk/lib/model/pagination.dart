part of guest_sdk.api;

class Pagination {
  
  int totalRecords = null;
  
  int currentOffset = null;
  
  int nextOffset = null;
  Pagination();

  @override
  String toString() {
    return 'Pagination[totalRecords=$totalRecords, currentOffset=$currentOffset, nextOffset=$nextOffset, ]';
  }

  Pagination.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['total_records'] == null) {
      totalRecords = null;
    } else {
          totalRecords = json['total_records'];
    }
    if (json['current_offset'] == null) {
      currentOffset = null;
    } else {
          currentOffset = json['current_offset'];
    }
    if (json['next_offset'] == null) {
      nextOffset = null;
    } else {
          nextOffset = json['next_offset'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (totalRecords != null)
      json['total_records'] = totalRecords;
    if (currentOffset != null)
      json['current_offset'] = currentOffset;
    if (nextOffset != null)
      json['next_offset'] = nextOffset;
    return json;
  }

  static List<Pagination> listFromJson(List<dynamic> json) {
    return json == null ? new List<Pagination>() : json.map((value) => new Pagination.fromJson(value)).toList();
  }

  static Map<String, Pagination> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, Pagination>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new Pagination.fromJson(value));
    }
    return map;
  }
}


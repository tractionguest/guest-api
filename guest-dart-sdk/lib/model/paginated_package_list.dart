part of guest_sdk.api;

class PaginatedPackageList {
  
  List<Package> packages = [];
  
  Pagination pagination = null;
  PaginatedPackageList();

  @override
  String toString() {
    return 'PaginatedPackageList[packages=$packages, pagination=$pagination, ]';
  }

  PaginatedPackageList.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['packages'] == null) {
      packages = null;
    } else {
      packages = Package.listFromJson(json['packages']);
    }
    if (json['pagination'] == null) {
      pagination = null;
    } else {
      pagination = new Pagination.fromJson(json['pagination']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (packages != null)
      json['packages'] = packages;
    if (pagination != null)
      json['pagination'] = pagination;
    return json;
  }

  static List<PaginatedPackageList> listFromJson(List<dynamic> json) {
    return json == null ? new List<PaginatedPackageList>() : json.map((value) => new PaginatedPackageList.fromJson(value)).toList();
  }

  static Map<String, PaginatedPackageList> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, PaginatedPackageList>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new PaginatedPackageList.fromJson(value));
    }
    return map;
  }
}


part of guest_sdk.api;

class PaginatedPackagesList {
  
  List<Package> packages = [];
  
  Pagination pagination = null;
  PaginatedPackagesList();

  @override
  String toString() {
    return 'PaginatedPackagesList[packages=$packages, pagination=$pagination, ]';
  }

  PaginatedPackagesList.fromJson(Map<String, dynamic> json) {
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

  static List<PaginatedPackagesList> listFromJson(List<dynamic> json) {
    return json == null ? new List<PaginatedPackagesList>() : json.map((value) => new PaginatedPackagesList.fromJson(value)).toList();
  }

  static Map<String, PaginatedPackagesList> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, PaginatedPackagesList>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new PaginatedPackagesList.fromJson(value));
    }
    return map;
  }
}


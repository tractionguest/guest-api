part of guest_sdk.api;

class PackageList {
  
  List<Package> packages = [];
  PackageList();

  @override
  String toString() {
    return 'PackageList[packages=$packages, ]';
  }

  PackageList.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['packages'] == null) {
      packages = null;
    } else {
      packages = Package.listFromJson(json['packages']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (packages != null)
      json['packages'] = packages;
    return json;
  }

  static List<PackageList> listFromJson(List<dynamic> json) {
    return json == null ? new List<PackageList>() : json.map((value) => new PackageList.fromJson(value)).toList();
  }

  static Map<String, PackageList> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, PackageList>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new PackageList.fromJson(value));
    }
    return map;
  }
}


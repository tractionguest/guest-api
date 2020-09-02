part of guest_sdk.api;

class Image {
  
  String fullSizeUrl = null;
  Image();

  @override
  String toString() {
    return 'Image[fullSizeUrl=$fullSizeUrl, ]';
  }

  Image.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['full_size_url'] == null) {
      fullSizeUrl = null;
    } else {
          fullSizeUrl = json['full_size_url'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (fullSizeUrl != null)
      json['full_size_url'] = fullSizeUrl;
    return json;
  }

  static List<Image> listFromJson(List<dynamic> json) {
    return json == null ? new List<Image>() : json.map((value) => new Image.fromJson(value)).toList();
  }

  static Map<String, Image> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, Image>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new Image.fromJson(value));
    }
    return map;
  }
}


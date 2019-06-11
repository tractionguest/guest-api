part of guest_sdk.api;

class SigninParsedInfo {
  
  int id = null;
  
  List<Object> aboutyou = [];
  
  List<Object> choices = [];
  
  List<Object> documents = [];
  
  List<Object> forms = [];
  
  List<Object> hosts = [];
  
  List<Object> videos = [];
  SigninParsedInfo();

  @override
  String toString() {
    return 'SigninParsedInfo[id=$id, aboutyou=$aboutyou, choices=$choices, documents=$documents, forms=$forms, hosts=$hosts, videos=$videos, ]';
  }

  SigninParsedInfo.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['aboutyou'] == null) {
      aboutyou = null;
    } else {
      aboutyou = Object.listFromJson(json['aboutyou']);
    }
    if (json['choices'] == null) {
      choices = null;
    } else {
      choices = Object.listFromJson(json['choices']);
    }
    if (json['documents'] == null) {
      documents = null;
    } else {
      documents = Object.listFromJson(json['documents']);
    }
    if (json['forms'] == null) {
      forms = null;
    } else {
      forms = Object.listFromJson(json['forms']);
    }
    if (json['hosts'] == null) {
      hosts = null;
    } else {
      hosts = Object.listFromJson(json['hosts']);
    }
    if (json['videos'] == null) {
      videos = null;
    } else {
      videos = Object.listFromJson(json['videos']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (aboutyou != null)
      json['aboutyou'] = aboutyou;
    if (choices != null)
      json['choices'] = choices;
    if (documents != null)
      json['documents'] = documents;
    if (forms != null)
      json['forms'] = forms;
    if (hosts != null)
      json['hosts'] = hosts;
    if (videos != null)
      json['videos'] = videos;
    return json;
  }

  static List<SigninParsedInfo> listFromJson(List<dynamic> json) {
    return json == null ? new List<SigninParsedInfo>() : json.map((value) => new SigninParsedInfo.fromJson(value)).toList();
  }

  static Map<String, SigninParsedInfo> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, SigninParsedInfo>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new SigninParsedInfo.fromJson(value));
    }
    return map;
  }
}


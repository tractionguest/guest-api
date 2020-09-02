part of guest_sdk.api;

class SignableDocument {
  
  List<SimpleSignature> simpleSignatures = [];
  
  List<Docusign> docusigns = [];
  SignableDocument();

  @override
  String toString() {
    return 'SignableDocument[simpleSignatures=$simpleSignatures, docusigns=$docusigns, ]';
  }

  SignableDocument.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['simple_signatures'] == null) {
      simpleSignatures = null;
    } else {
      simpleSignatures = SimpleSignature.listFromJson(json['simple_signatures']);
    }
    if (json['docusigns'] == null) {
      docusigns = null;
    } else {
      docusigns = Docusign.listFromJson(json['docusigns']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (simpleSignatures != null)
      json['simple_signatures'] = simpleSignatures;
    if (docusigns != null)
      json['docusigns'] = docusigns;
    return json;
  }

  static List<SignableDocument> listFromJson(List<dynamic> json) {
    return json == null ? new List<SignableDocument>() : json.map((value) => new SignableDocument.fromJson(value)).toList();
  }

  static Map<String, SignableDocument> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, SignableDocument>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new SignableDocument.fromJson(value));
    }
    return map;
  }
}


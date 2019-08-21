part of guest_sdk.api;

class SignableDocument {
  
  List<Docusign> docusigns = [];
  
  List<SimpleSignature> simpleSignatures = [];
  SignableDocument();

  @override
  String toString() {
    return 'SignableDocument[docusigns=$docusigns, simpleSignatures=$simpleSignatures, ]';
  }

  SignableDocument.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['docusigns'] == null) {
      docusigns = null;
    } else {
      docusigns = Docusign.listFromJson(json['docusigns']);
    }
    if (json['simple_signatures'] == null) {
      simpleSignatures = null;
    } else {
      simpleSignatures = SimpleSignature.listFromJson(json['simple_signatures']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (docusigns != null)
      json['docusigns'] = docusigns;
    if (simpleSignatures != null)
      json['simple_signatures'] = simpleSignatures;
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


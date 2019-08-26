part of guest_sdk.api;

class Docusign {
  
  String templateId = null;
  
  String integration = null;
  
  String ndaStatus = null;
  
  DateTime ndaSignedDate = null;
  
  String envelopeId = null;
  
  String sequence = null;
  
  String docusignId = null;
  
  String docusignName = null;
  
  String title = null;
  Docusign();

  @override
  String toString() {
    return 'Docusign[templateId=$templateId, integration=$integration, ndaStatus=$ndaStatus, ndaSignedDate=$ndaSignedDate, envelopeId=$envelopeId, sequence=$sequence, docusignId=$docusignId, docusignName=$docusignName, title=$title, ]';
  }

  Docusign.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['template_id'] == null) {
      templateId = null;
    } else {
          templateId = json['template_id'];
    }
    if (json['integration'] == null) {
      integration = null;
    } else {
          integration = json['integration'];
    }
    if (json['nda_status'] == null) {
      ndaStatus = null;
    } else {
          ndaStatus = json['nda_status'];
    }
    if (json['nda_signed_date'] == null) {
      ndaSignedDate = null;
    } else {
      ndaSignedDate = DateTime.parse(json['nda_signed_date']);
    }
    if (json['envelope_id'] == null) {
      envelopeId = null;
    } else {
          envelopeId = json['envelope_id'];
    }
    if (json['sequence'] == null) {
      sequence = null;
    } else {
          sequence = json['sequence'];
    }
    if (json['docusign_id'] == null) {
      docusignId = null;
    } else {
          docusignId = json['docusign_id'];
    }
    if (json['docusign_name'] == null) {
      docusignName = null;
    } else {
          docusignName = json['docusign_name'];
    }
    if (json['title'] == null) {
      title = null;
    } else {
          title = json['title'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (templateId != null)
      json['template_id'] = templateId;
    if (integration != null)
      json['integration'] = integration;
    if (ndaStatus != null)
      json['nda_status'] = ndaStatus;
    if (ndaSignedDate != null)
      json['nda_signed_date'] = ndaSignedDate == null ? null : ndaSignedDate.toUtc().toIso8601String();
    if (envelopeId != null)
      json['envelope_id'] = envelopeId;
    if (sequence != null)
      json['sequence'] = sequence;
    if (docusignId != null)
      json['docusign_id'] = docusignId;
    if (docusignName != null)
      json['docusign_name'] = docusignName;
    if (title != null)
      json['title'] = title;
    return json;
  }

  static List<Docusign> listFromJson(List<dynamic> json) {
    return json == null ? new List<Docusign>() : json.map((value) => new Docusign.fromJson(value)).toList();
  }

  static Map<String, Docusign> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, Docusign>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new Docusign.fromJson(value));
    }
    return map;
  }
}


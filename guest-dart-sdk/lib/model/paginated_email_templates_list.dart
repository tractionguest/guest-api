part of guest_sdk.api;

class PaginatedEmailTemplatesList {
  
  List<EmailTemplate> emailTemplates = [];
  
  Pagination pagination = null;
  PaginatedEmailTemplatesList();

  @override
  String toString() {
    return 'PaginatedEmailTemplatesList[emailTemplates=$emailTemplates, pagination=$pagination, ]';
  }

  PaginatedEmailTemplatesList.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['email_templates'] == null) {
      emailTemplates = null;
    } else {
      emailTemplates = EmailTemplate.listFromJson(json['email_templates']);
    }
    if (json['pagination'] == null) {
      pagination = null;
    } else {
      pagination = new Pagination.fromJson(json['pagination']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (emailTemplates != null)
      json['email_templates'] = emailTemplates;
    if (pagination != null)
      json['pagination'] = pagination;
    return json;
  }

  static List<PaginatedEmailTemplatesList> listFromJson(List<dynamic> json) {
    return json == null ? new List<PaginatedEmailTemplatesList>() : json.map((value) => new PaginatedEmailTemplatesList.fromJson(value)).toList();
  }

  static Map<String, PaginatedEmailTemplatesList> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, PaginatedEmailTemplatesList>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new PaginatedEmailTemplatesList.fromJson(value));
    }
    return map;
  }
}


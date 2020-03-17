part of guest_sdk.api;

class PaginatedAuditLogsList {
  
  List<AuditLog> auditLogs = [];
  
  Pagination pagination = null;
  PaginatedAuditLogsList();

  @override
  String toString() {
    return 'PaginatedAuditLogsList[auditLogs=$auditLogs, pagination=$pagination, ]';
  }

  PaginatedAuditLogsList.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['audit_logs'] == null) {
      auditLogs = null;
    } else {
      auditLogs = AuditLog.listFromJson(json['audit_logs']);
    }
    if (json['pagination'] == null) {
      pagination = null;
    } else {
      pagination = new Pagination.fromJson(json['pagination']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (auditLogs != null)
      json['audit_logs'] = auditLogs;
    if (pagination != null)
      json['pagination'] = pagination;
    return json;
  }

  static List<PaginatedAuditLogsList> listFromJson(List<dynamic> json) {
    return json == null ? new List<PaginatedAuditLogsList>() : json.map((value) => new PaginatedAuditLogsList.fromJson(value)).toList();
  }

  static Map<String, PaginatedAuditLogsList> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, PaginatedAuditLogsList>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new PaginatedAuditLogsList.fromJson(value));
    }
    return map;
  }
}


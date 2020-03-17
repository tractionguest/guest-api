part of guest_sdk.api;

class AuditLog {
  
  int id = null;
  
  int auditableId = null;
  
  String auditableType = null;
  
  int userId = null;
  
  String username = null;
  
  String action = null;
  
  List<AuditLogChange> auditedChanges = [];
  
  int version = null;
  
  String comment = null;
  
  String remoteAddress = null;
  
  String requestUuid = null;
  
  String createdAt = null;
  AuditLog();

  @override
  String toString() {
    return 'AuditLog[id=$id, auditableId=$auditableId, auditableType=$auditableType, userId=$userId, username=$username, action=$action, auditedChanges=$auditedChanges, version=$version, comment=$comment, remoteAddress=$remoteAddress, requestUuid=$requestUuid, createdAt=$createdAt, ]';
  }

  AuditLog.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['auditable_id'] == null) {
      auditableId = null;
    } else {
          auditableId = json['auditable_id'];
    }
    if (json['auditable_type'] == null) {
      auditableType = null;
    } else {
          auditableType = json['auditable_type'];
    }
    if (json['user_id'] == null) {
      userId = null;
    } else {
          userId = json['user_id'];
    }
    if (json['username'] == null) {
      username = null;
    } else {
          username = json['username'];
    }
    if (json['action'] == null) {
      action = null;
    } else {
          action = json['action'];
    }
    if (json['audited_changes'] == null) {
      auditedChanges = null;
    } else {
      auditedChanges = AuditLogChange.listFromJson(json['audited_changes']);
    }
    if (json['version'] == null) {
      version = null;
    } else {
          version = json['version'];
    }
    if (json['comment'] == null) {
      comment = null;
    } else {
          comment = json['comment'];
    }
    if (json['remote_address'] == null) {
      remoteAddress = null;
    } else {
          remoteAddress = json['remote_address'];
    }
    if (json['request_uuid'] == null) {
      requestUuid = null;
    } else {
          requestUuid = json['request_uuid'];
    }
    if (json['created_at'] == null) {
      createdAt = null;
    } else {
          createdAt = json['created_at'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (auditableId != null)
      json['auditable_id'] = auditableId;
    if (auditableType != null)
      json['auditable_type'] = auditableType;
    if (userId != null)
      json['user_id'] = userId;
    if (username != null)
      json['username'] = username;
    if (action != null)
      json['action'] = action;
    if (auditedChanges != null)
      json['audited_changes'] = auditedChanges;
    if (version != null)
      json['version'] = version;
    if (comment != null)
      json['comment'] = comment;
    if (remoteAddress != null)
      json['remote_address'] = remoteAddress;
    if (requestUuid != null)
      json['request_uuid'] = requestUuid;
    if (createdAt != null)
      json['created_at'] = createdAt;
    return json;
  }

  static List<AuditLog> listFromJson(List<dynamic> json) {
    return json == null ? new List<AuditLog>() : json.map((value) => new AuditLog.fromJson(value)).toList();
  }

  static Map<String, AuditLog> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, AuditLog>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new AuditLog.fromJson(value));
    }
    return map;
  }
}


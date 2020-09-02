part of guest_sdk.api;

class PaginatedInvitesList {
  
  List<Invite> invites = [];
  
  Pagination pagination = null;
  PaginatedInvitesList();

  @override
  String toString() {
    return 'PaginatedInvitesList[invites=$invites, pagination=$pagination, ]';
  }

  PaginatedInvitesList.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['invites'] == null) {
      invites = null;
    } else {
      invites = Invite.listFromJson(json['invites']);
    }
    if (json['pagination'] == null) {
      pagination = null;
    } else {
      pagination = new Pagination.fromJson(json['pagination']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (invites != null)
      json['invites'] = invites;
    if (pagination != null)
      json['pagination'] = pagination;
    return json;
  }

  static List<PaginatedInvitesList> listFromJson(List<dynamic> json) {
    return json == null ? new List<PaginatedInvitesList>() : json.map((value) => new PaginatedInvitesList.fromJson(value)).toList();
  }

  static Map<String, PaginatedInvitesList> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, PaginatedInvitesList>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new PaginatedInvitesList.fromJson(value));
    }
    return map;
  }
}


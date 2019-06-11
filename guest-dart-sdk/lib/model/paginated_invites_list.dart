part of guest_sdk.api;

class PaginatedInvitesList {
  
  Pagination pagination = null;
  
  List<Invite> invites = [];
  PaginatedInvitesList();

  @override
  String toString() {
    return 'PaginatedInvitesList[pagination=$pagination, invites=$invites, ]';
  }

  PaginatedInvitesList.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['pagination'] == null) {
      pagination = null;
    } else {
      pagination = new Pagination.fromJson(json['pagination']);
    }
    if (json['invites'] == null) {
      invites = null;
    } else {
      invites = Invite.listFromJson(json['invites']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (pagination != null)
      json['pagination'] = pagination;
    if (invites != null)
      json['invites'] = invites;
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


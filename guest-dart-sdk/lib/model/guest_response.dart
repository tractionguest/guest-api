part of guest_sdk.api;

class GuestResponse {
  /* UUID */
  String id = null;
  /* Flex fields */
  List<CustomField> customFields = [];
  
  String pageType = null;
  
  int sequence = null;
  /* Page title */
  String title = null;
  GuestResponse();

  @override
  String toString() {
    return 'GuestResponse[id=$id, customFields=$customFields, pageType=$pageType, sequence=$sequence, title=$title, ]';
  }

  GuestResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['custom_fields'] == null) {
      customFields = null;
    } else {
      customFields = CustomField.listFromJson(json['custom_fields']);
    }
    if (json['page_type'] == null) {
      pageType = null;
    } else {
          pageType = json['page_type'];
    }
    if (json['sequence'] == null) {
      sequence = null;
    } else {
          sequence = json['sequence'];
    }
    if (json['title'] == null) {
      title = null;
    } else {
          title = json['title'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (customFields != null)
      json['custom_fields'] = customFields;
    if (pageType != null)
      json['page_type'] = pageType;
    if (sequence != null)
      json['sequence'] = sequence;
    if (title != null)
      json['title'] = title;
    return json;
  }

  static List<GuestResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<GuestResponse>() : json.map((value) => new GuestResponse.fromJson(value)).toList();
  }

  static Map<String, GuestResponse> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, GuestResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new GuestResponse.fromJson(value));
    }
    return map;
  }
}


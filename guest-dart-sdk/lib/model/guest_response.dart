part of guest_sdk.api;

class GuestResponse {
  /* Page title */
  String title = null;
  
  int sequence = null;
  /* UUID */
  String id = null;
  /* Enum */
  String pageType = null;
  //enum pageTypeEnum {  form_page,  video_page,  branch_page,  docusign_page,  guest_sign_page,  identity_page,  };{
  /* Flex fields */
  List<FlexField> customFields = [];
  GuestResponse();

  @override
  String toString() {
    return 'GuestResponse[title=$title, sequence=$sequence, id=$id, pageType=$pageType, customFields=$customFields, ]';
  }

  GuestResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['title'] == null) {
      title = null;
    } else {
          title = json['title'];
    }
    if (json['sequence'] == null) {
      sequence = null;
    } else {
          sequence = json['sequence'];
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['page_type'] == null) {
      pageType = null;
    } else {
          pageType = json['page_type'];
    }
    if (json['custom_fields'] == null) {
      customFields = null;
    } else {
      customFields = FlexField.listFromJson(json['custom_fields']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (title != null)
      json['title'] = title;
    if (sequence != null)
      json['sequence'] = sequence;
    if (id != null)
      json['id'] = id;
    if (pageType != null)
      json['page_type'] = pageType;
    if (customFields != null)
      json['custom_fields'] = customFields;
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


part of guest_sdk.api;

class GuestAlertDetail {
  /* pending, success, partial success, or failure  */
  String deliveryStatus = null;
  //enum deliveryStatusEnum {  pending,  success,  partial_success,  failure,  };{
  /* Count of pending messages  */
  int pendingCount = null;
  /* Count of successfully sent messages  */
  int sentCount = null;
  /* Count of messages that failed to be sent */
  int failedCount = null;
  /*  */
  String message = null;
  /* The uuid of the guest_alert object */
  String uuid = null;
  /* Channel used to send the message */
  List<String> channels = [];
  GuestAlertDetail();

  @override
  String toString() {
    return 'GuestAlertDetail[deliveryStatus=$deliveryStatus, pendingCount=$pendingCount, sentCount=$sentCount, failedCount=$failedCount, message=$message, uuid=$uuid, channels=$channels, ]';
  }

  GuestAlertDetail.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['delivery_status'] == null) {
      deliveryStatus = null;
    } else {
          deliveryStatus = json['delivery_status'];
    }
    if (json['pending_count'] == null) {
      pendingCount = null;
    } else {
          pendingCount = json['pending_count'];
    }
    if (json['sent_count'] == null) {
      sentCount = null;
    } else {
          sentCount = json['sent_count'];
    }
    if (json['failed_count'] == null) {
      failedCount = null;
    } else {
          failedCount = json['failed_count'];
    }
    if (json['message'] == null) {
      message = null;
    } else {
          message = json['message'];
    }
    if (json['uuid'] == null) {
      uuid = null;
    } else {
          uuid = json['uuid'];
    }
    if (json['channels'] == null) {
      channels = null;
    } else {
      channels = (json['channels'] as List).cast<String>();
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (deliveryStatus != null)
      json['delivery_status'] = deliveryStatus;
    if (pendingCount != null)
      json['pending_count'] = pendingCount;
    if (sentCount != null)
      json['sent_count'] = sentCount;
    if (failedCount != null)
      json['failed_count'] = failedCount;
    if (message != null)
      json['message'] = message;
    if (uuid != null)
      json['uuid'] = uuid;
    if (channels != null)
      json['channels'] = channels;
    return json;
  }

  static List<GuestAlertDetail> listFromJson(List<dynamic> json) {
    return json == null ? new List<GuestAlertDetail>() : json.map((value) => new GuestAlertDetail.fromJson(value)).toList();
  }

  static Map<String, GuestAlertDetail> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, GuestAlertDetail>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new GuestAlertDetail.fromJson(value));
    }
    return map;
  }
}


part of guest_sdk.api;

class WatchlistMatch {
  
  String id = null;
  
  List<String> altNames = [];
  
  String federalRegisterNotice = null;
  
  String name = null;
  
  String sourceInformationUrl = null;
  
  String sourceListUrl = null;
  
  String list = null;
  
  String type = null;
  
  String category = null;
  
  String street1 = null;
  
  String street2 = null;
  
  String city = null;
  
  String state = null;
  
  String country = null;
  
  String notes = null;
  
  String frc = null;
  
  DateTime start = null;
  
  DateTime end = null;
  
  String frserve = null;
  
  String optionalID = null;
  
  String alertType = null;
  WatchlistMatch();

  @override
  String toString() {
    return 'WatchlistMatch[id=$id, altNames=$altNames, federalRegisterNotice=$federalRegisterNotice, name=$name, sourceInformationUrl=$sourceInformationUrl, sourceListUrl=$sourceListUrl, list=$list, type=$type, category=$category, street1=$street1, street2=$street2, city=$city, state=$state, country=$country, notes=$notes, frc=$frc, start=$start, end=$end, frserve=$frserve, optionalID=$optionalID, alertType=$alertType, ]';
  }

  WatchlistMatch.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['alt_names'] == null) {
      altNames = null;
    } else {
      altNames = (json['alt_names'] as List).cast<String>();
    }
    if (json['federal_register_notice'] == null) {
      federalRegisterNotice = null;
    } else {
          federalRegisterNotice = json['federal_register_notice'];
    }
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['source_information_url'] == null) {
      sourceInformationUrl = null;
    } else {
          sourceInformationUrl = json['source_information_url'];
    }
    if (json['source_list_url'] == null) {
      sourceListUrl = null;
    } else {
          sourceListUrl = json['source_list_url'];
    }
    if (json['list'] == null) {
      list = null;
    } else {
          list = json['list'];
    }
    if (json['type'] == null) {
      type = null;
    } else {
          type = json['type'];
    }
    if (json['category'] == null) {
      category = null;
    } else {
          category = json['category'];
    }
    if (json['street1'] == null) {
      street1 = null;
    } else {
          street1 = json['street1'];
    }
    if (json['street2'] == null) {
      street2 = null;
    } else {
          street2 = json['street2'];
    }
    if (json['city'] == null) {
      city = null;
    } else {
          city = json['city'];
    }
    if (json['state'] == null) {
      state = null;
    } else {
          state = json['state'];
    }
    if (json['country'] == null) {
      country = null;
    } else {
          country = json['country'];
    }
    if (json['notes'] == null) {
      notes = null;
    } else {
          notes = json['notes'];
    }
    if (json['frc'] == null) {
      frc = null;
    } else {
          frc = json['frc'];
    }
    if (json['start'] == null) {
      start = null;
    } else {
      start = DateTime.parse(json['start']);
    }
    if (json['end'] == null) {
      end = null;
    } else {
      end = DateTime.parse(json['end']);
    }
    if (json['frserve'] == null) {
      frserve = null;
    } else {
          frserve = json['frserve'];
    }
    if (json['optional_ID'] == null) {
      optionalID = null;
    } else {
          optionalID = json['optional_ID'];
    }
    if (json['alert_type'] == null) {
      alertType = null;
    } else {
          alertType = json['alert_type'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (altNames != null)
      json['alt_names'] = altNames;
    if (federalRegisterNotice != null)
      json['federal_register_notice'] = federalRegisterNotice;
    if (name != null)
      json['name'] = name;
    if (sourceInformationUrl != null)
      json['source_information_url'] = sourceInformationUrl;
    if (sourceListUrl != null)
      json['source_list_url'] = sourceListUrl;
    if (list != null)
      json['list'] = list;
    if (type != null)
      json['type'] = type;
    if (category != null)
      json['category'] = category;
    if (street1 != null)
      json['street1'] = street1;
    if (street2 != null)
      json['street2'] = street2;
    if (city != null)
      json['city'] = city;
    if (state != null)
      json['state'] = state;
    if (country != null)
      json['country'] = country;
    if (notes != null)
      json['notes'] = notes;
    if (frc != null)
      json['frc'] = frc;
    if (start != null)
      json['start'] = start == null ? null : start.toUtc().toIso8601String();
    if (end != null)
      json['end'] = end == null ? null : end.toUtc().toIso8601String();
    if (frserve != null)
      json['frserve'] = frserve;
    if (optionalID != null)
      json['optional_ID'] = optionalID;
    if (alertType != null)
      json['alert_type'] = alertType;
    return json;
  }

  static List<WatchlistMatch> listFromJson(List<dynamic> json) {
    return json == null ? new List<WatchlistMatch>() : json.map((value) => new WatchlistMatch.fromJson(value)).toList();
  }

  static Map<String, WatchlistMatch> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, WatchlistMatch>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new WatchlistMatch.fromJson(value));
    }
    return map;
  }
}


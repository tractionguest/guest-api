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
  
  String start = null;
  
  String end = null;
  
  String frserve = null;
  
  String optionalID = null;
  
  String alertType = null;
  
  String pairStatus = null;
  
  String pairReason = null;
  
  String pairComments = null;
  
  String applicationDisplayName = null;
  
  String applicationId = null;
  
  String clientId = null;
  
  String clientKey = null;
  
  String clientFullName = null;
  
  String listKey = null;
  
  String listName = null;
  
  String listId = null;
  
  String listVersion = null;
  
  String listModifyDate = null;
  
  String listProfileId = null;
  
  String listProfileKey = null;
  
  String linkSingleStringName = null;
  
  String listParentSingleStringName = null;
  
  String listCategory = null;
  
  String listPepCategory = null;
  
  String listDoBs = null;
  
  String listCountries = null;
  
  String rankString = null;
  
  String ranktype = null;
  
  String rankweight = null;
  
  String pairLoadDate = null;
  
  String eAddressTo = null;
  
  String eAddressCc = null;
  
  String origin = null;
  
  String secondsviewed = null;
  
  String initialUser = null;
  
  String isPairParentFlag = null;
  
  String pairMetSearchCriteriaFlag = null;
  
  String editableDueToAssignmentFlag = null;
  
  String modifyDate = null;
  
  String modifiedByUser = null;
  
  String pairReportType = null;
  
  String finscanCategory = null;
  
  String wrapperStatus = null;
  
  String sourceLists = null;
  WatchlistMatch();

  @override
  String toString() {
    return 'WatchlistMatch[id=$id, altNames=$altNames, federalRegisterNotice=$federalRegisterNotice, name=$name, sourceInformationUrl=$sourceInformationUrl, sourceListUrl=$sourceListUrl, list=$list, type=$type, category=$category, street1=$street1, street2=$street2, city=$city, state=$state, country=$country, notes=$notes, frc=$frc, start=$start, end=$end, frserve=$frserve, optionalID=$optionalID, alertType=$alertType, pairStatus=$pairStatus, pairReason=$pairReason, pairComments=$pairComments, applicationDisplayName=$applicationDisplayName, applicationId=$applicationId, clientId=$clientId, clientKey=$clientKey, clientFullName=$clientFullName, listKey=$listKey, listName=$listName, listId=$listId, listVersion=$listVersion, listModifyDate=$listModifyDate, listProfileId=$listProfileId, listProfileKey=$listProfileKey, linkSingleStringName=$linkSingleStringName, listParentSingleStringName=$listParentSingleStringName, listCategory=$listCategory, listPepCategory=$listPepCategory, listDoBs=$listDoBs, listCountries=$listCountries, rankString=$rankString, ranktype=$ranktype, rankweight=$rankweight, pairLoadDate=$pairLoadDate, eAddressTo=$eAddressTo, eAddressCc=$eAddressCc, origin=$origin, secondsviewed=$secondsviewed, initialUser=$initialUser, isPairParentFlag=$isPairParentFlag, pairMetSearchCriteriaFlag=$pairMetSearchCriteriaFlag, editableDueToAssignmentFlag=$editableDueToAssignmentFlag, modifyDate=$modifyDate, modifiedByUser=$modifiedByUser, pairReportType=$pairReportType, finscanCategory=$finscanCategory, wrapperStatus=$wrapperStatus, sourceLists=$sourceLists, ]';
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
          start = json['start'];
    }
    if (json['end'] == null) {
      end = null;
    } else {
          end = json['end'];
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
    if (json['pair_status'] == null) {
      pairStatus = null;
    } else {
          pairStatus = json['pair_status'];
    }
    if (json['pair_reason'] == null) {
      pairReason = null;
    } else {
          pairReason = json['pair_reason'];
    }
    if (json['pair_comments'] == null) {
      pairComments = null;
    } else {
          pairComments = json['pair_comments'];
    }
    if (json['application_display_name'] == null) {
      applicationDisplayName = null;
    } else {
          applicationDisplayName = json['application_display_name'];
    }
    if (json['application_id'] == null) {
      applicationId = null;
    } else {
          applicationId = json['application_id'];
    }
    if (json['client_id'] == null) {
      clientId = null;
    } else {
          clientId = json['client_id'];
    }
    if (json['client_key'] == null) {
      clientKey = null;
    } else {
          clientKey = json['client_key'];
    }
    if (json['client_full_name'] == null) {
      clientFullName = null;
    } else {
          clientFullName = json['client_full_name'];
    }
    if (json['list_key'] == null) {
      listKey = null;
    } else {
          listKey = json['list_key'];
    }
    if (json['list_name'] == null) {
      listName = null;
    } else {
          listName = json['list_name'];
    }
    if (json['list_id'] == null) {
      listId = null;
    } else {
          listId = json['list_id'];
    }
    if (json['list_version'] == null) {
      listVersion = null;
    } else {
          listVersion = json['list_version'];
    }
    if (json['list_modify_date'] == null) {
      listModifyDate = null;
    } else {
          listModifyDate = json['list_modify_date'];
    }
    if (json['list_profile_id'] == null) {
      listProfileId = null;
    } else {
          listProfileId = json['list_profile_id'];
    }
    if (json['list_profile_key'] == null) {
      listProfileKey = null;
    } else {
          listProfileKey = json['list_profile_key'];
    }
    if (json['link_single_string_name'] == null) {
      linkSingleStringName = null;
    } else {
          linkSingleStringName = json['link_single_string_name'];
    }
    if (json['list_parent_single_string_name'] == null) {
      listParentSingleStringName = null;
    } else {
          listParentSingleStringName = json['list_parent_single_string_name'];
    }
    if (json['list_category'] == null) {
      listCategory = null;
    } else {
          listCategory = json['list_category'];
    }
    if (json['list_pep_category'] == null) {
      listPepCategory = null;
    } else {
          listPepCategory = json['list_pep_category'];
    }
    if (json['list_do_bs'] == null) {
      listDoBs = null;
    } else {
          listDoBs = json['list_do_bs'];
    }
    if (json['list_countries'] == null) {
      listCountries = null;
    } else {
          listCountries = json['list_countries'];
    }
    if (json['rank_string'] == null) {
      rankString = null;
    } else {
          rankString = json['rank_string'];
    }
    if (json['ranktype'] == null) {
      ranktype = null;
    } else {
          ranktype = json['ranktype'];
    }
    if (json['rankweight'] == null) {
      rankweight = null;
    } else {
          rankweight = json['rankweight'];
    }
    if (json['pair_load_date'] == null) {
      pairLoadDate = null;
    } else {
          pairLoadDate = json['pair_load_date'];
    }
    if (json['e_address_to'] == null) {
      eAddressTo = null;
    } else {
          eAddressTo = json['e_address_to'];
    }
    if (json['e_address_cc'] == null) {
      eAddressCc = null;
    } else {
          eAddressCc = json['e_address_cc'];
    }
    if (json['origin'] == null) {
      origin = null;
    } else {
          origin = json['origin'];
    }
    if (json['secondsviewed'] == null) {
      secondsviewed = null;
    } else {
          secondsviewed = json['secondsviewed'];
    }
    if (json['initial_user'] == null) {
      initialUser = null;
    } else {
          initialUser = json['initial_user'];
    }
    if (json['is_pair_parent_flag'] == null) {
      isPairParentFlag = null;
    } else {
          isPairParentFlag = json['is_pair_parent_flag'];
    }
    if (json['pair_met_search_criteria_flag'] == null) {
      pairMetSearchCriteriaFlag = null;
    } else {
          pairMetSearchCriteriaFlag = json['pair_met_search_criteria_flag'];
    }
    if (json['editable_due_to_assignment_flag'] == null) {
      editableDueToAssignmentFlag = null;
    } else {
          editableDueToAssignmentFlag = json['editable_due_to_assignment_flag'];
    }
    if (json['modify_date'] == null) {
      modifyDate = null;
    } else {
          modifyDate = json['modify_date'];
    }
    if (json['modified_by_user'] == null) {
      modifiedByUser = null;
    } else {
          modifiedByUser = json['modified_by_user'];
    }
    if (json['pair_report_type'] == null) {
      pairReportType = null;
    } else {
          pairReportType = json['pair_report_type'];
    }
    if (json['finscan_category'] == null) {
      finscanCategory = null;
    } else {
          finscanCategory = json['finscan_category'];
    }
    if (json['wrapper_status'] == null) {
      wrapperStatus = null;
    } else {
          wrapperStatus = json['wrapper_status'];
    }
    if (json['source_lists'] == null) {
      sourceLists = null;
    } else {
          sourceLists = json['source_lists'];
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
      json['start'] = start;
    if (end != null)
      json['end'] = end;
    if (frserve != null)
      json['frserve'] = frserve;
    if (optionalID != null)
      json['optional_ID'] = optionalID;
    if (alertType != null)
      json['alert_type'] = alertType;
    if (pairStatus != null)
      json['pair_status'] = pairStatus;
    if (pairReason != null)
      json['pair_reason'] = pairReason;
    if (pairComments != null)
      json['pair_comments'] = pairComments;
    if (applicationDisplayName != null)
      json['application_display_name'] = applicationDisplayName;
    if (applicationId != null)
      json['application_id'] = applicationId;
    if (clientId != null)
      json['client_id'] = clientId;
    if (clientKey != null)
      json['client_key'] = clientKey;
    if (clientFullName != null)
      json['client_full_name'] = clientFullName;
    if (listKey != null)
      json['list_key'] = listKey;
    if (listName != null)
      json['list_name'] = listName;
    if (listId != null)
      json['list_id'] = listId;
    if (listVersion != null)
      json['list_version'] = listVersion;
    if (listModifyDate != null)
      json['list_modify_date'] = listModifyDate;
    if (listProfileId != null)
      json['list_profile_id'] = listProfileId;
    if (listProfileKey != null)
      json['list_profile_key'] = listProfileKey;
    if (linkSingleStringName != null)
      json['link_single_string_name'] = linkSingleStringName;
    if (listParentSingleStringName != null)
      json['list_parent_single_string_name'] = listParentSingleStringName;
    if (listCategory != null)
      json['list_category'] = listCategory;
    if (listPepCategory != null)
      json['list_pep_category'] = listPepCategory;
    if (listDoBs != null)
      json['list_do_bs'] = listDoBs;
    if (listCountries != null)
      json['list_countries'] = listCountries;
    if (rankString != null)
      json['rank_string'] = rankString;
    if (ranktype != null)
      json['ranktype'] = ranktype;
    if (rankweight != null)
      json['rankweight'] = rankweight;
    if (pairLoadDate != null)
      json['pair_load_date'] = pairLoadDate;
    if (eAddressTo != null)
      json['e_address_to'] = eAddressTo;
    if (eAddressCc != null)
      json['e_address_cc'] = eAddressCc;
    if (origin != null)
      json['origin'] = origin;
    if (secondsviewed != null)
      json['secondsviewed'] = secondsviewed;
    if (initialUser != null)
      json['initial_user'] = initialUser;
    if (isPairParentFlag != null)
      json['is_pair_parent_flag'] = isPairParentFlag;
    if (pairMetSearchCriteriaFlag != null)
      json['pair_met_search_criteria_flag'] = pairMetSearchCriteriaFlag;
    if (editableDueToAssignmentFlag != null)
      json['editable_due_to_assignment_flag'] = editableDueToAssignmentFlag;
    if (modifyDate != null)
      json['modify_date'] = modifyDate;
    if (modifiedByUser != null)
      json['modified_by_user'] = modifiedByUser;
    if (pairReportType != null)
      json['pair_report_type'] = pairReportType;
    if (finscanCategory != null)
      json['finscan_category'] = finscanCategory;
    if (wrapperStatus != null)
      json['wrapper_status'] = wrapperStatus;
    if (sourceLists != null)
      json['source_lists'] = sourceLists;
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


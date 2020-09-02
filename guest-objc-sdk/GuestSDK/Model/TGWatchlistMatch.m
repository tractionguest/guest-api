#import "TGWatchlistMatch.h"

@implementation TGWatchlistMatch

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    
  }
  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"_id": @"id", @"altNames": @"alt_names", @"federalRegisterNotice": @"federal_register_notice", @"name": @"name", @"sourceInformationUrl": @"source_information_url", @"sourceListUrl": @"source_list_url", @"list": @"list", @"type": @"type", @"category": @"category", @"street1": @"street1", @"street2": @"street2", @"city": @"city", @"state": @"state", @"country": @"country", @"notes": @"notes", @"frc": @"frc", @"start": @"start", @"end": @"end", @"frserve": @"frserve", @"optionalID": @"optional_ID", @"alertType": @"alert_type", @"pairStatus": @"pair_status", @"pairReason": @"pair_reason", @"pairComments": @"pair_comments", @"applicationDisplayName": @"application_display_name", @"applicationId": @"application_id", @"clientId": @"client_id", @"clientKey": @"client_key", @"clientFullName": @"client_full_name", @"listKey": @"list_key", @"listName": @"list_name", @"listId": @"list_id", @"listVersion": @"list_version", @"listModifyDate": @"list_modify_date", @"listProfileId": @"list_profile_id", @"listProfileKey": @"list_profile_key", @"linkSingleStringName": @"link_single_string_name", @"listParentSingleStringName": @"list_parent_single_string_name", @"listCategory": @"list_category", @"listPepCategory": @"list_pep_category", @"listDoBs": @"list_do_bs", @"listCountries": @"list_countries", @"rankString": @"rank_string", @"ranktype": @"ranktype", @"rankweight": @"rankweight", @"pairLoadDate": @"pair_load_date", @"eAddressTo": @"e_address_to", @"eAddressCc": @"e_address_cc", @"origin": @"origin", @"secondsviewed": @"secondsviewed", @"initialUser": @"initial_user", @"isPairParentFlag": @"is_pair_parent_flag", @"pairMetSearchCriteriaFlag": @"pair_met_search_criteria_flag", @"editableDueToAssignmentFlag": @"editable_due_to_assignment_flag", @"modifyDate": @"modify_date", @"modifiedByUser": @"modified_by_user", @"pairReportType": @"pair_report_type", @"finscanCategory": @"finscan_category", @"wrapperStatus": @"wrapper_status", @"sourceLists": @"source_lists" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"_id", @"altNames", @"federalRegisterNotice", @"sourceInformationUrl", @"sourceListUrl", @"type", @"category", @"street1", @"street2", @"city", @"state", @"country", @"notes", @"frc", @"start", @"end", @"frserve", @"optionalID", @"alertType", @"pairStatus", @"pairReason", @"pairComments", @"applicationDisplayName", @"applicationId", @"clientId", @"clientKey", @"clientFullName", @"listKey", @"listName", @"listId", @"listVersion", @"listModifyDate", @"listProfileId", @"listProfileKey", @"linkSingleStringName", @"listParentSingleStringName", @"listCategory", @"listPepCategory", @"listDoBs", @"listCountries", @"rankString", @"ranktype", @"rankweight", @"pairLoadDate", @"eAddressTo", @"eAddressCc", @"origin", @"secondsviewed", @"initialUser", @"isPairParentFlag", @"pairMetSearchCriteriaFlag", @"editableDueToAssignmentFlag", @"modifyDate", @"modifiedByUser", @"pairReportType", @"finscanCategory", @"wrapperStatus", @"sourceLists"];
  return [optionalProperties containsObject:propertyName];
}

@end

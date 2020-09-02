/**
 * Traction Guest API
 * The Traction Guest API is currently under limited release to select customers as we gather and iterate on feedback.  # Getting Started If you are interested in getting early access to the API, please send us an email to [support@tractionguest.com](mailto:support@tractionguest.com).  We will also add you to our Slack channel where you can ask questions and get further help.  # Terms and Conditions Please visit: [https://tractionguest.com/tos/api/](https://tractionguest.com/tos/api/)  # Versioning This API follows [semantic versioning](https://semver.org/), which follows the `Major`.`Minor`.`Patch` format.  * The `Major` number increments when potentially incompatible changes are made. * The `Minor` number increments when backwards-compatible additions are made. * The `Patch` number increments when backwards-compatible bug-fixes are made. 
 *
 * The version of the OpenAPI document: 0.13.0
 * Contact: support@tractionguest.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

package org.openapitools.client.model;

import java.util.*;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

/**
 * 
 **/
@ApiModel(description = "")
public class WatchlistMatch {
  
  @SerializedName("id")
  private String id = null;
  @SerializedName("alt_names")
  private List<String> altNames = null;
  @SerializedName("federal_register_notice")
  private String federalRegisterNotice = null;
  @SerializedName("name")
  private String name = null;
  @SerializedName("source_information_url")
  private String sourceInformationUrl = null;
  @SerializedName("source_list_url")
  private String sourceListUrl = null;
  @SerializedName("list")
  private String list = null;
  @SerializedName("type")
  private String type = null;
  @SerializedName("category")
  private String category = null;
  @SerializedName("street1")
  private String street1 = null;
  @SerializedName("street2")
  private String street2 = null;
  @SerializedName("city")
  private String city = null;
  @SerializedName("state")
  private String state = null;
  @SerializedName("country")
  private String country = null;
  @SerializedName("notes")
  private String notes = null;
  @SerializedName("frc")
  private String frc = null;
  @SerializedName("start")
  private String start = null;
  @SerializedName("end")
  private String end = null;
  @SerializedName("frserve")
  private String frserve = null;
  @SerializedName("optional_ID")
  private String optionalID = null;
  @SerializedName("alert_type")
  private String alertType = null;
  @SerializedName("pair_status")
  private String pairStatus = null;
  @SerializedName("pair_reason")
  private String pairReason = null;
  @SerializedName("pair_comments")
  private String pairComments = null;
  @SerializedName("application_display_name")
  private String applicationDisplayName = null;
  @SerializedName("application_id")
  private String applicationId = null;
  @SerializedName("client_id")
  private String clientId = null;
  @SerializedName("client_key")
  private String clientKey = null;
  @SerializedName("client_full_name")
  private String clientFullName = null;
  @SerializedName("list_key")
  private String listKey = null;
  @SerializedName("list_name")
  private String listName = null;
  @SerializedName("list_id")
  private String listId = null;
  @SerializedName("list_version")
  private String listVersion = null;
  @SerializedName("list_modify_date")
  private String listModifyDate = null;
  @SerializedName("list_profile_id")
  private String listProfileId = null;
  @SerializedName("list_profile_key")
  private String listProfileKey = null;
  @SerializedName("link_single_string_name")
  private String linkSingleStringName = null;
  @SerializedName("list_parent_single_string_name")
  private String listParentSingleStringName = null;
  @SerializedName("list_category")
  private String listCategory = null;
  @SerializedName("list_pep_category")
  private String listPepCategory = null;
  @SerializedName("list_do_bs")
  private String listDoBs = null;
  @SerializedName("list_countries")
  private String listCountries = null;
  @SerializedName("rank_string")
  private String rankString = null;
  @SerializedName("ranktype")
  private String ranktype = null;
  @SerializedName("rankweight")
  private String rankweight = null;
  @SerializedName("pair_load_date")
  private String pairLoadDate = null;
  @SerializedName("e_address_to")
  private String eAddressTo = null;
  @SerializedName("e_address_cc")
  private String eAddressCc = null;
  @SerializedName("origin")
  private String origin = null;
  @SerializedName("secondsviewed")
  private String secondsviewed = null;
  @SerializedName("initial_user")
  private String initialUser = null;
  @SerializedName("is_pair_parent_flag")
  private String isPairParentFlag = null;
  @SerializedName("pair_met_search_criteria_flag")
  private String pairMetSearchCriteriaFlag = null;
  @SerializedName("editable_due_to_assignment_flag")
  private String editableDueToAssignmentFlag = null;
  @SerializedName("modify_date")
  private String modifyDate = null;
  @SerializedName("modified_by_user")
  private String modifiedByUser = null;
  @SerializedName("pair_report_type")
  private String pairReportType = null;
  @SerializedName("finscan_category")
  private String finscanCategory = null;
  @SerializedName("wrapper_status")
  private String wrapperStatus = null;
  @SerializedName("source_lists")
  private String sourceLists = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public String getId() {
    return id;
  }
  public void setId(String id) {
    this.id = id;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public List<String> getAltNames() {
    return altNames;
  }
  public void setAltNames(List<String> altNames) {
    this.altNames = altNames;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getFederalRegisterNotice() {
    return federalRegisterNotice;
  }
  public void setFederalRegisterNotice(String federalRegisterNotice) {
    this.federalRegisterNotice = federalRegisterNotice;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getName() {
    return name;
  }
  public void setName(String name) {
    this.name = name;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getSourceInformationUrl() {
    return sourceInformationUrl;
  }
  public void setSourceInformationUrl(String sourceInformationUrl) {
    this.sourceInformationUrl = sourceInformationUrl;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getSourceListUrl() {
    return sourceListUrl;
  }
  public void setSourceListUrl(String sourceListUrl) {
    this.sourceListUrl = sourceListUrl;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getList() {
    return list;
  }
  public void setList(String list) {
    this.list = list;
  }

  /**
   * 
   **/
  @ApiModelProperty(value = "")
  public String getType() {
    return type;
  }
  public void setType(String type) {
    this.type = type;
  }

  /**
   * 
   **/
  @ApiModelProperty(value = "")
  public String getCategory() {
    return category;
  }
  public void setCategory(String category) {
    this.category = category;
  }

  /**
   * 
   **/
  @ApiModelProperty(value = "")
  public String getStreet1() {
    return street1;
  }
  public void setStreet1(String street1) {
    this.street1 = street1;
  }

  /**
   * 
   **/
  @ApiModelProperty(value = "")
  public String getStreet2() {
    return street2;
  }
  public void setStreet2(String street2) {
    this.street2 = street2;
  }

  /**
   * 
   **/
  @ApiModelProperty(value = "")
  public String getCity() {
    return city;
  }
  public void setCity(String city) {
    this.city = city;
  }

  /**
   * 
   **/
  @ApiModelProperty(value = "")
  public String getState() {
    return state;
  }
  public void setState(String state) {
    this.state = state;
  }

  /**
   * 
   **/
  @ApiModelProperty(value = "")
  public String getCountry() {
    return country;
  }
  public void setCountry(String country) {
    this.country = country;
  }

  /**
   * 
   **/
  @ApiModelProperty(value = "")
  public String getNotes() {
    return notes;
  }
  public void setNotes(String notes) {
    this.notes = notes;
  }

  /**
   * 
   **/
  @ApiModelProperty(value = "")
  public String getFrc() {
    return frc;
  }
  public void setFrc(String frc) {
    this.frc = frc;
  }

  /**
   * 
   **/
  @ApiModelProperty(value = "")
  public String getStart() {
    return start;
  }
  public void setStart(String start) {
    this.start = start;
  }

  /**
   * 
   **/
  @ApiModelProperty(value = "")
  public String getEnd() {
    return end;
  }
  public void setEnd(String end) {
    this.end = end;
  }

  /**
   * 
   **/
  @ApiModelProperty(value = "")
  public String getFrserve() {
    return frserve;
  }
  public void setFrserve(String frserve) {
    this.frserve = frserve;
  }

  /**
   * 
   **/
  @ApiModelProperty(value = "")
  public String getOptionalID() {
    return optionalID;
  }
  public void setOptionalID(String optionalID) {
    this.optionalID = optionalID;
  }

  /**
   * 
   **/
  @ApiModelProperty(value = "")
  public String getAlertType() {
    return alertType;
  }
  public void setAlertType(String alertType) {
    this.alertType = alertType;
  }

  /**
   * 
   **/
  @ApiModelProperty(value = "")
  public String getPairStatus() {
    return pairStatus;
  }
  public void setPairStatus(String pairStatus) {
    this.pairStatus = pairStatus;
  }

  /**
   * 
   **/
  @ApiModelProperty(value = "")
  public String getPairReason() {
    return pairReason;
  }
  public void setPairReason(String pairReason) {
    this.pairReason = pairReason;
  }

  /**
   * 
   **/
  @ApiModelProperty(value = "")
  public String getPairComments() {
    return pairComments;
  }
  public void setPairComments(String pairComments) {
    this.pairComments = pairComments;
  }

  /**
   * 
   **/
  @ApiModelProperty(value = "")
  public String getApplicationDisplayName() {
    return applicationDisplayName;
  }
  public void setApplicationDisplayName(String applicationDisplayName) {
    this.applicationDisplayName = applicationDisplayName;
  }

  /**
   * 
   **/
  @ApiModelProperty(value = "")
  public String getApplicationId() {
    return applicationId;
  }
  public void setApplicationId(String applicationId) {
    this.applicationId = applicationId;
  }

  /**
   * 
   **/
  @ApiModelProperty(value = "")
  public String getClientId() {
    return clientId;
  }
  public void setClientId(String clientId) {
    this.clientId = clientId;
  }

  /**
   * 
   **/
  @ApiModelProperty(value = "")
  public String getClientKey() {
    return clientKey;
  }
  public void setClientKey(String clientKey) {
    this.clientKey = clientKey;
  }

  /**
   * 
   **/
  @ApiModelProperty(value = "")
  public String getClientFullName() {
    return clientFullName;
  }
  public void setClientFullName(String clientFullName) {
    this.clientFullName = clientFullName;
  }

  /**
   * 
   **/
  @ApiModelProperty(value = "")
  public String getListKey() {
    return listKey;
  }
  public void setListKey(String listKey) {
    this.listKey = listKey;
  }

  /**
   * 
   **/
  @ApiModelProperty(value = "")
  public String getListName() {
    return listName;
  }
  public void setListName(String listName) {
    this.listName = listName;
  }

  /**
   * 
   **/
  @ApiModelProperty(value = "")
  public String getListId() {
    return listId;
  }
  public void setListId(String listId) {
    this.listId = listId;
  }

  /**
   * 
   **/
  @ApiModelProperty(value = "")
  public String getListVersion() {
    return listVersion;
  }
  public void setListVersion(String listVersion) {
    this.listVersion = listVersion;
  }

  /**
   * 
   **/
  @ApiModelProperty(value = "")
  public String getListModifyDate() {
    return listModifyDate;
  }
  public void setListModifyDate(String listModifyDate) {
    this.listModifyDate = listModifyDate;
  }

  /**
   * 
   **/
  @ApiModelProperty(value = "")
  public String getListProfileId() {
    return listProfileId;
  }
  public void setListProfileId(String listProfileId) {
    this.listProfileId = listProfileId;
  }

  /**
   * 
   **/
  @ApiModelProperty(value = "")
  public String getListProfileKey() {
    return listProfileKey;
  }
  public void setListProfileKey(String listProfileKey) {
    this.listProfileKey = listProfileKey;
  }

  /**
   * 
   **/
  @ApiModelProperty(value = "")
  public String getLinkSingleStringName() {
    return linkSingleStringName;
  }
  public void setLinkSingleStringName(String linkSingleStringName) {
    this.linkSingleStringName = linkSingleStringName;
  }

  /**
   * 
   **/
  @ApiModelProperty(value = "")
  public String getListParentSingleStringName() {
    return listParentSingleStringName;
  }
  public void setListParentSingleStringName(String listParentSingleStringName) {
    this.listParentSingleStringName = listParentSingleStringName;
  }

  /**
   * 
   **/
  @ApiModelProperty(value = "")
  public String getListCategory() {
    return listCategory;
  }
  public void setListCategory(String listCategory) {
    this.listCategory = listCategory;
  }

  /**
   * 
   **/
  @ApiModelProperty(value = "")
  public String getListPepCategory() {
    return listPepCategory;
  }
  public void setListPepCategory(String listPepCategory) {
    this.listPepCategory = listPepCategory;
  }

  /**
   * 
   **/
  @ApiModelProperty(value = "")
  public String getListDoBs() {
    return listDoBs;
  }
  public void setListDoBs(String listDoBs) {
    this.listDoBs = listDoBs;
  }

  /**
   * 
   **/
  @ApiModelProperty(value = "")
  public String getListCountries() {
    return listCountries;
  }
  public void setListCountries(String listCountries) {
    this.listCountries = listCountries;
  }

  /**
   * 
   **/
  @ApiModelProperty(value = "")
  public String getRankString() {
    return rankString;
  }
  public void setRankString(String rankString) {
    this.rankString = rankString;
  }

  /**
   * 
   **/
  @ApiModelProperty(value = "")
  public String getRanktype() {
    return ranktype;
  }
  public void setRanktype(String ranktype) {
    this.ranktype = ranktype;
  }

  /**
   * 
   **/
  @ApiModelProperty(value = "")
  public String getRankweight() {
    return rankweight;
  }
  public void setRankweight(String rankweight) {
    this.rankweight = rankweight;
  }

  /**
   * 
   **/
  @ApiModelProperty(value = "")
  public String getPairLoadDate() {
    return pairLoadDate;
  }
  public void setPairLoadDate(String pairLoadDate) {
    this.pairLoadDate = pairLoadDate;
  }

  /**
   * 
   **/
  @ApiModelProperty(value = "")
  public String getEAddressTo() {
    return eAddressTo;
  }
  public void setEAddressTo(String eAddressTo) {
    this.eAddressTo = eAddressTo;
  }

  /**
   * 
   **/
  @ApiModelProperty(value = "")
  public String getEAddressCc() {
    return eAddressCc;
  }
  public void setEAddressCc(String eAddressCc) {
    this.eAddressCc = eAddressCc;
  }

  /**
   * 
   **/
  @ApiModelProperty(value = "")
  public String getOrigin() {
    return origin;
  }
  public void setOrigin(String origin) {
    this.origin = origin;
  }

  /**
   * 
   **/
  @ApiModelProperty(value = "")
  public String getSecondsviewed() {
    return secondsviewed;
  }
  public void setSecondsviewed(String secondsviewed) {
    this.secondsviewed = secondsviewed;
  }

  /**
   * 
   **/
  @ApiModelProperty(value = "")
  public String getInitialUser() {
    return initialUser;
  }
  public void setInitialUser(String initialUser) {
    this.initialUser = initialUser;
  }

  /**
   * 
   **/
  @ApiModelProperty(value = "")
  public String getIsPairParentFlag() {
    return isPairParentFlag;
  }
  public void setIsPairParentFlag(String isPairParentFlag) {
    this.isPairParentFlag = isPairParentFlag;
  }

  /**
   * 
   **/
  @ApiModelProperty(value = "")
  public String getPairMetSearchCriteriaFlag() {
    return pairMetSearchCriteriaFlag;
  }
  public void setPairMetSearchCriteriaFlag(String pairMetSearchCriteriaFlag) {
    this.pairMetSearchCriteriaFlag = pairMetSearchCriteriaFlag;
  }

  /**
   * 
   **/
  @ApiModelProperty(value = "")
  public String getEditableDueToAssignmentFlag() {
    return editableDueToAssignmentFlag;
  }
  public void setEditableDueToAssignmentFlag(String editableDueToAssignmentFlag) {
    this.editableDueToAssignmentFlag = editableDueToAssignmentFlag;
  }

  /**
   * 
   **/
  @ApiModelProperty(value = "")
  public String getModifyDate() {
    return modifyDate;
  }
  public void setModifyDate(String modifyDate) {
    this.modifyDate = modifyDate;
  }

  /**
   * 
   **/
  @ApiModelProperty(value = "")
  public String getModifiedByUser() {
    return modifiedByUser;
  }
  public void setModifiedByUser(String modifiedByUser) {
    this.modifiedByUser = modifiedByUser;
  }

  /**
   * 
   **/
  @ApiModelProperty(value = "")
  public String getPairReportType() {
    return pairReportType;
  }
  public void setPairReportType(String pairReportType) {
    this.pairReportType = pairReportType;
  }

  /**
   * 
   **/
  @ApiModelProperty(value = "")
  public String getFinscanCategory() {
    return finscanCategory;
  }
  public void setFinscanCategory(String finscanCategory) {
    this.finscanCategory = finscanCategory;
  }

  /**
   * 
   **/
  @ApiModelProperty(value = "")
  public String getWrapperStatus() {
    return wrapperStatus;
  }
  public void setWrapperStatus(String wrapperStatus) {
    this.wrapperStatus = wrapperStatus;
  }

  /**
   * 
   **/
  @ApiModelProperty(value = "")
  public String getSourceLists() {
    return sourceLists;
  }
  public void setSourceLists(String sourceLists) {
    this.sourceLists = sourceLists;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    WatchlistMatch watchlistMatch = (WatchlistMatch) o;
    return (this.id == null ? watchlistMatch.id == null : this.id.equals(watchlistMatch.id)) &&
        (this.altNames == null ? watchlistMatch.altNames == null : this.altNames.equals(watchlistMatch.altNames)) &&
        (this.federalRegisterNotice == null ? watchlistMatch.federalRegisterNotice == null : this.federalRegisterNotice.equals(watchlistMatch.federalRegisterNotice)) &&
        (this.name == null ? watchlistMatch.name == null : this.name.equals(watchlistMatch.name)) &&
        (this.sourceInformationUrl == null ? watchlistMatch.sourceInformationUrl == null : this.sourceInformationUrl.equals(watchlistMatch.sourceInformationUrl)) &&
        (this.sourceListUrl == null ? watchlistMatch.sourceListUrl == null : this.sourceListUrl.equals(watchlistMatch.sourceListUrl)) &&
        (this.list == null ? watchlistMatch.list == null : this.list.equals(watchlistMatch.list)) &&
        (this.type == null ? watchlistMatch.type == null : this.type.equals(watchlistMatch.type)) &&
        (this.category == null ? watchlistMatch.category == null : this.category.equals(watchlistMatch.category)) &&
        (this.street1 == null ? watchlistMatch.street1 == null : this.street1.equals(watchlistMatch.street1)) &&
        (this.street2 == null ? watchlistMatch.street2 == null : this.street2.equals(watchlistMatch.street2)) &&
        (this.city == null ? watchlistMatch.city == null : this.city.equals(watchlistMatch.city)) &&
        (this.state == null ? watchlistMatch.state == null : this.state.equals(watchlistMatch.state)) &&
        (this.country == null ? watchlistMatch.country == null : this.country.equals(watchlistMatch.country)) &&
        (this.notes == null ? watchlistMatch.notes == null : this.notes.equals(watchlistMatch.notes)) &&
        (this.frc == null ? watchlistMatch.frc == null : this.frc.equals(watchlistMatch.frc)) &&
        (this.start == null ? watchlistMatch.start == null : this.start.equals(watchlistMatch.start)) &&
        (this.end == null ? watchlistMatch.end == null : this.end.equals(watchlistMatch.end)) &&
        (this.frserve == null ? watchlistMatch.frserve == null : this.frserve.equals(watchlistMatch.frserve)) &&
        (this.optionalID == null ? watchlistMatch.optionalID == null : this.optionalID.equals(watchlistMatch.optionalID)) &&
        (this.alertType == null ? watchlistMatch.alertType == null : this.alertType.equals(watchlistMatch.alertType)) &&
        (this.pairStatus == null ? watchlistMatch.pairStatus == null : this.pairStatus.equals(watchlistMatch.pairStatus)) &&
        (this.pairReason == null ? watchlistMatch.pairReason == null : this.pairReason.equals(watchlistMatch.pairReason)) &&
        (this.pairComments == null ? watchlistMatch.pairComments == null : this.pairComments.equals(watchlistMatch.pairComments)) &&
        (this.applicationDisplayName == null ? watchlistMatch.applicationDisplayName == null : this.applicationDisplayName.equals(watchlistMatch.applicationDisplayName)) &&
        (this.applicationId == null ? watchlistMatch.applicationId == null : this.applicationId.equals(watchlistMatch.applicationId)) &&
        (this.clientId == null ? watchlistMatch.clientId == null : this.clientId.equals(watchlistMatch.clientId)) &&
        (this.clientKey == null ? watchlistMatch.clientKey == null : this.clientKey.equals(watchlistMatch.clientKey)) &&
        (this.clientFullName == null ? watchlistMatch.clientFullName == null : this.clientFullName.equals(watchlistMatch.clientFullName)) &&
        (this.listKey == null ? watchlistMatch.listKey == null : this.listKey.equals(watchlistMatch.listKey)) &&
        (this.listName == null ? watchlistMatch.listName == null : this.listName.equals(watchlistMatch.listName)) &&
        (this.listId == null ? watchlistMatch.listId == null : this.listId.equals(watchlistMatch.listId)) &&
        (this.listVersion == null ? watchlistMatch.listVersion == null : this.listVersion.equals(watchlistMatch.listVersion)) &&
        (this.listModifyDate == null ? watchlistMatch.listModifyDate == null : this.listModifyDate.equals(watchlistMatch.listModifyDate)) &&
        (this.listProfileId == null ? watchlistMatch.listProfileId == null : this.listProfileId.equals(watchlistMatch.listProfileId)) &&
        (this.listProfileKey == null ? watchlistMatch.listProfileKey == null : this.listProfileKey.equals(watchlistMatch.listProfileKey)) &&
        (this.linkSingleStringName == null ? watchlistMatch.linkSingleStringName == null : this.linkSingleStringName.equals(watchlistMatch.linkSingleStringName)) &&
        (this.listParentSingleStringName == null ? watchlistMatch.listParentSingleStringName == null : this.listParentSingleStringName.equals(watchlistMatch.listParentSingleStringName)) &&
        (this.listCategory == null ? watchlistMatch.listCategory == null : this.listCategory.equals(watchlistMatch.listCategory)) &&
        (this.listPepCategory == null ? watchlistMatch.listPepCategory == null : this.listPepCategory.equals(watchlistMatch.listPepCategory)) &&
        (this.listDoBs == null ? watchlistMatch.listDoBs == null : this.listDoBs.equals(watchlistMatch.listDoBs)) &&
        (this.listCountries == null ? watchlistMatch.listCountries == null : this.listCountries.equals(watchlistMatch.listCountries)) &&
        (this.rankString == null ? watchlistMatch.rankString == null : this.rankString.equals(watchlistMatch.rankString)) &&
        (this.ranktype == null ? watchlistMatch.ranktype == null : this.ranktype.equals(watchlistMatch.ranktype)) &&
        (this.rankweight == null ? watchlistMatch.rankweight == null : this.rankweight.equals(watchlistMatch.rankweight)) &&
        (this.pairLoadDate == null ? watchlistMatch.pairLoadDate == null : this.pairLoadDate.equals(watchlistMatch.pairLoadDate)) &&
        (this.eAddressTo == null ? watchlistMatch.eAddressTo == null : this.eAddressTo.equals(watchlistMatch.eAddressTo)) &&
        (this.eAddressCc == null ? watchlistMatch.eAddressCc == null : this.eAddressCc.equals(watchlistMatch.eAddressCc)) &&
        (this.origin == null ? watchlistMatch.origin == null : this.origin.equals(watchlistMatch.origin)) &&
        (this.secondsviewed == null ? watchlistMatch.secondsviewed == null : this.secondsviewed.equals(watchlistMatch.secondsviewed)) &&
        (this.initialUser == null ? watchlistMatch.initialUser == null : this.initialUser.equals(watchlistMatch.initialUser)) &&
        (this.isPairParentFlag == null ? watchlistMatch.isPairParentFlag == null : this.isPairParentFlag.equals(watchlistMatch.isPairParentFlag)) &&
        (this.pairMetSearchCriteriaFlag == null ? watchlistMatch.pairMetSearchCriteriaFlag == null : this.pairMetSearchCriteriaFlag.equals(watchlistMatch.pairMetSearchCriteriaFlag)) &&
        (this.editableDueToAssignmentFlag == null ? watchlistMatch.editableDueToAssignmentFlag == null : this.editableDueToAssignmentFlag.equals(watchlistMatch.editableDueToAssignmentFlag)) &&
        (this.modifyDate == null ? watchlistMatch.modifyDate == null : this.modifyDate.equals(watchlistMatch.modifyDate)) &&
        (this.modifiedByUser == null ? watchlistMatch.modifiedByUser == null : this.modifiedByUser.equals(watchlistMatch.modifiedByUser)) &&
        (this.pairReportType == null ? watchlistMatch.pairReportType == null : this.pairReportType.equals(watchlistMatch.pairReportType)) &&
        (this.finscanCategory == null ? watchlistMatch.finscanCategory == null : this.finscanCategory.equals(watchlistMatch.finscanCategory)) &&
        (this.wrapperStatus == null ? watchlistMatch.wrapperStatus == null : this.wrapperStatus.equals(watchlistMatch.wrapperStatus)) &&
        (this.sourceLists == null ? watchlistMatch.sourceLists == null : this.sourceLists.equals(watchlistMatch.sourceLists));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.id == null ? 0: this.id.hashCode());
    result = 31 * result + (this.altNames == null ? 0: this.altNames.hashCode());
    result = 31 * result + (this.federalRegisterNotice == null ? 0: this.federalRegisterNotice.hashCode());
    result = 31 * result + (this.name == null ? 0: this.name.hashCode());
    result = 31 * result + (this.sourceInformationUrl == null ? 0: this.sourceInformationUrl.hashCode());
    result = 31 * result + (this.sourceListUrl == null ? 0: this.sourceListUrl.hashCode());
    result = 31 * result + (this.list == null ? 0: this.list.hashCode());
    result = 31 * result + (this.type == null ? 0: this.type.hashCode());
    result = 31 * result + (this.category == null ? 0: this.category.hashCode());
    result = 31 * result + (this.street1 == null ? 0: this.street1.hashCode());
    result = 31 * result + (this.street2 == null ? 0: this.street2.hashCode());
    result = 31 * result + (this.city == null ? 0: this.city.hashCode());
    result = 31 * result + (this.state == null ? 0: this.state.hashCode());
    result = 31 * result + (this.country == null ? 0: this.country.hashCode());
    result = 31 * result + (this.notes == null ? 0: this.notes.hashCode());
    result = 31 * result + (this.frc == null ? 0: this.frc.hashCode());
    result = 31 * result + (this.start == null ? 0: this.start.hashCode());
    result = 31 * result + (this.end == null ? 0: this.end.hashCode());
    result = 31 * result + (this.frserve == null ? 0: this.frserve.hashCode());
    result = 31 * result + (this.optionalID == null ? 0: this.optionalID.hashCode());
    result = 31 * result + (this.alertType == null ? 0: this.alertType.hashCode());
    result = 31 * result + (this.pairStatus == null ? 0: this.pairStatus.hashCode());
    result = 31 * result + (this.pairReason == null ? 0: this.pairReason.hashCode());
    result = 31 * result + (this.pairComments == null ? 0: this.pairComments.hashCode());
    result = 31 * result + (this.applicationDisplayName == null ? 0: this.applicationDisplayName.hashCode());
    result = 31 * result + (this.applicationId == null ? 0: this.applicationId.hashCode());
    result = 31 * result + (this.clientId == null ? 0: this.clientId.hashCode());
    result = 31 * result + (this.clientKey == null ? 0: this.clientKey.hashCode());
    result = 31 * result + (this.clientFullName == null ? 0: this.clientFullName.hashCode());
    result = 31 * result + (this.listKey == null ? 0: this.listKey.hashCode());
    result = 31 * result + (this.listName == null ? 0: this.listName.hashCode());
    result = 31 * result + (this.listId == null ? 0: this.listId.hashCode());
    result = 31 * result + (this.listVersion == null ? 0: this.listVersion.hashCode());
    result = 31 * result + (this.listModifyDate == null ? 0: this.listModifyDate.hashCode());
    result = 31 * result + (this.listProfileId == null ? 0: this.listProfileId.hashCode());
    result = 31 * result + (this.listProfileKey == null ? 0: this.listProfileKey.hashCode());
    result = 31 * result + (this.linkSingleStringName == null ? 0: this.linkSingleStringName.hashCode());
    result = 31 * result + (this.listParentSingleStringName == null ? 0: this.listParentSingleStringName.hashCode());
    result = 31 * result + (this.listCategory == null ? 0: this.listCategory.hashCode());
    result = 31 * result + (this.listPepCategory == null ? 0: this.listPepCategory.hashCode());
    result = 31 * result + (this.listDoBs == null ? 0: this.listDoBs.hashCode());
    result = 31 * result + (this.listCountries == null ? 0: this.listCountries.hashCode());
    result = 31 * result + (this.rankString == null ? 0: this.rankString.hashCode());
    result = 31 * result + (this.ranktype == null ? 0: this.ranktype.hashCode());
    result = 31 * result + (this.rankweight == null ? 0: this.rankweight.hashCode());
    result = 31 * result + (this.pairLoadDate == null ? 0: this.pairLoadDate.hashCode());
    result = 31 * result + (this.eAddressTo == null ? 0: this.eAddressTo.hashCode());
    result = 31 * result + (this.eAddressCc == null ? 0: this.eAddressCc.hashCode());
    result = 31 * result + (this.origin == null ? 0: this.origin.hashCode());
    result = 31 * result + (this.secondsviewed == null ? 0: this.secondsviewed.hashCode());
    result = 31 * result + (this.initialUser == null ? 0: this.initialUser.hashCode());
    result = 31 * result + (this.isPairParentFlag == null ? 0: this.isPairParentFlag.hashCode());
    result = 31 * result + (this.pairMetSearchCriteriaFlag == null ? 0: this.pairMetSearchCriteriaFlag.hashCode());
    result = 31 * result + (this.editableDueToAssignmentFlag == null ? 0: this.editableDueToAssignmentFlag.hashCode());
    result = 31 * result + (this.modifyDate == null ? 0: this.modifyDate.hashCode());
    result = 31 * result + (this.modifiedByUser == null ? 0: this.modifiedByUser.hashCode());
    result = 31 * result + (this.pairReportType == null ? 0: this.pairReportType.hashCode());
    result = 31 * result + (this.finscanCategory == null ? 0: this.finscanCategory.hashCode());
    result = 31 * result + (this.wrapperStatus == null ? 0: this.wrapperStatus.hashCode());
    result = 31 * result + (this.sourceLists == null ? 0: this.sourceLists.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class WatchlistMatch {\n");
    
    sb.append("  id: ").append(id).append("\n");
    sb.append("  altNames: ").append(altNames).append("\n");
    sb.append("  federalRegisterNotice: ").append(federalRegisterNotice).append("\n");
    sb.append("  name: ").append(name).append("\n");
    sb.append("  sourceInformationUrl: ").append(sourceInformationUrl).append("\n");
    sb.append("  sourceListUrl: ").append(sourceListUrl).append("\n");
    sb.append("  list: ").append(list).append("\n");
    sb.append("  type: ").append(type).append("\n");
    sb.append("  category: ").append(category).append("\n");
    sb.append("  street1: ").append(street1).append("\n");
    sb.append("  street2: ").append(street2).append("\n");
    sb.append("  city: ").append(city).append("\n");
    sb.append("  state: ").append(state).append("\n");
    sb.append("  country: ").append(country).append("\n");
    sb.append("  notes: ").append(notes).append("\n");
    sb.append("  frc: ").append(frc).append("\n");
    sb.append("  start: ").append(start).append("\n");
    sb.append("  end: ").append(end).append("\n");
    sb.append("  frserve: ").append(frserve).append("\n");
    sb.append("  optionalID: ").append(optionalID).append("\n");
    sb.append("  alertType: ").append(alertType).append("\n");
    sb.append("  pairStatus: ").append(pairStatus).append("\n");
    sb.append("  pairReason: ").append(pairReason).append("\n");
    sb.append("  pairComments: ").append(pairComments).append("\n");
    sb.append("  applicationDisplayName: ").append(applicationDisplayName).append("\n");
    sb.append("  applicationId: ").append(applicationId).append("\n");
    sb.append("  clientId: ").append(clientId).append("\n");
    sb.append("  clientKey: ").append(clientKey).append("\n");
    sb.append("  clientFullName: ").append(clientFullName).append("\n");
    sb.append("  listKey: ").append(listKey).append("\n");
    sb.append("  listName: ").append(listName).append("\n");
    sb.append("  listId: ").append(listId).append("\n");
    sb.append("  listVersion: ").append(listVersion).append("\n");
    sb.append("  listModifyDate: ").append(listModifyDate).append("\n");
    sb.append("  listProfileId: ").append(listProfileId).append("\n");
    sb.append("  listProfileKey: ").append(listProfileKey).append("\n");
    sb.append("  linkSingleStringName: ").append(linkSingleStringName).append("\n");
    sb.append("  listParentSingleStringName: ").append(listParentSingleStringName).append("\n");
    sb.append("  listCategory: ").append(listCategory).append("\n");
    sb.append("  listPepCategory: ").append(listPepCategory).append("\n");
    sb.append("  listDoBs: ").append(listDoBs).append("\n");
    sb.append("  listCountries: ").append(listCountries).append("\n");
    sb.append("  rankString: ").append(rankString).append("\n");
    sb.append("  ranktype: ").append(ranktype).append("\n");
    sb.append("  rankweight: ").append(rankweight).append("\n");
    sb.append("  pairLoadDate: ").append(pairLoadDate).append("\n");
    sb.append("  eAddressTo: ").append(eAddressTo).append("\n");
    sb.append("  eAddressCc: ").append(eAddressCc).append("\n");
    sb.append("  origin: ").append(origin).append("\n");
    sb.append("  secondsviewed: ").append(secondsviewed).append("\n");
    sb.append("  initialUser: ").append(initialUser).append("\n");
    sb.append("  isPairParentFlag: ").append(isPairParentFlag).append("\n");
    sb.append("  pairMetSearchCriteriaFlag: ").append(pairMetSearchCriteriaFlag).append("\n");
    sb.append("  editableDueToAssignmentFlag: ").append(editableDueToAssignmentFlag).append("\n");
    sb.append("  modifyDate: ").append(modifyDate).append("\n");
    sb.append("  modifiedByUser: ").append(modifiedByUser).append("\n");
    sb.append("  pairReportType: ").append(pairReportType).append("\n");
    sb.append("  finscanCategory: ").append(finscanCategory).append("\n");
    sb.append("  wrapperStatus: ").append(wrapperStatus).append("\n");
    sb.append("  sourceLists: ").append(sourceLists).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

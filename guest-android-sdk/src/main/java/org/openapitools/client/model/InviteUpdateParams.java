/**
 * Traction Guest API
 * The Traction Guest API is currently in **closed beta**. We're still building, testing, and fixing bugs.  If you're interested in helping us get to version 1.0.0, contact your CS team representative. Only paid accounts are elligible.  # Slack  Do you have Slack? Want faster answers to Traction Guest API questions?  Ask to be added to the Traction Guest API Slack channel!  Talk to your CS team representative, or send an email to the API support email above, and we'll add you.  # Versioning  This API follows [semantic versioning](https://semver.org/), which follows the `Major`.`Minor`.`Patch` format. In short:  * The `Major` number increments when potentially incompatible changes are made. * The `Minor` number increments when backwards-compatible additions are made. * The `Patch` number increments when backwards-compatible bug-fixes are made.  So, once the API is out of closed beta, and has reached version 1.0.0, some things may change.  **However**, the developers at Traction Guest strive to keep things running smoothly for our clients. We plan to **deprecate and warn** before making any potentially breaking changes; you may receive messages that follow the format \"this is deprecated, and will be removed in version X.X.X, which is scheduled for release on or after 20XX-01-01.\" Please note that the deprecation message format and content may change.  At this time, we are not planning to make older or 'legacy' versions of the API available, going forward.  # Getting Started  Would you like your team to be a part of closed beta testing? Talk to your CS team representative. We'll walk you through the process of enabling API access and provisioning your account. 
 *
 * The version of the OpenAPI document: 0.11.13
 * Contact: support@tractionguest.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

package org.openapitools.client.model;

import java.util.*;
import java.util.Date;
import org.openapitools.client.model.CustomField;
import org.openapitools.client.model.NotificationTriggerCreateParams;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

/**
 * The root of the InviteUpdateParams type&#39;s schema.
 **/
@ApiModel(description = "The root of the InviteUpdateParams type's schema.")
public class InviteUpdateParams {
  
  @SerializedName("mobile_number")
  private String mobileNumber = null;
  @SerializedName("user_id")
  private Integer userId = null;
  @SerializedName("on_premise")
  private Boolean onPremise = null;
  @SerializedName("notification_triggers")
  private List<NotificationTriggerCreateParams> notificationTriggers = null;
  @SerializedName("first_name")
  private String firstName = null;
  @SerializedName("email_template_id")
  private Integer emailTemplateId = null;
  @SerializedName("custom_fields")
  private List<CustomField> customFields = null;
  @SerializedName("host_ids")
  private List<Integer> hostIds = null;
  @SerializedName("title")
  private String title = null;
  @SerializedName("start_date")
  private Date startDate = null;
  @SerializedName("last_name")
  private String lastName = null;
  @SerializedName("end_date")
  private Date endDate = null;
  @SerializedName("email")
  private String email = null;
  @SerializedName("company")
  private String company = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public String getMobileNumber() {
    return mobileNumber;
  }
  public void setMobileNumber(String mobileNumber) {
    this.mobileNumber = mobileNumber;
  }

  /**
   * Used for transfering ownership of an `Invite` to another member of the Account
   **/
  @ApiModelProperty(value = "Used for transfering ownership of an `Invite` to another member of the Account")
  public Integer getUserId() {
    return userId;
  }
  public void setUserId(Integer userId) {
    this.userId = userId;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public Boolean getOnPremise() {
    return onPremise;
  }
  public void setOnPremise(Boolean onPremise) {
    this.onPremise = onPremise;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public List<NotificationTriggerCreateParams> getNotificationTriggers() {
    return notificationTriggers;
  }
  public void setNotificationTriggers(List<NotificationTriggerCreateParams> notificationTriggers) {
    this.notificationTriggers = notificationTriggers;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getFirstName() {
    return firstName;
  }
  public void setFirstName(String firstName) {
    this.firstName = firstName;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public Integer getEmailTemplateId() {
    return emailTemplateId;
  }
  public void setEmailTemplateId(Integer emailTemplateId) {
    this.emailTemplateId = emailTemplateId;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public List<CustomField> getCustomFields() {
    return customFields;
  }
  public void setCustomFields(List<CustomField> customFields) {
    this.customFields = customFields;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public List<Integer> getHostIds() {
    return hostIds;
  }
  public void setHostIds(List<Integer> hostIds) {
    this.hostIds = hostIds;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getTitle() {
    return title;
  }
  public void setTitle(String title) {
    this.title = title;
  }

  /**
   * 
   **/
  @ApiModelProperty(value = "")
  public Date getStartDate() {
    return startDate;
  }
  public void setStartDate(Date startDate) {
    this.startDate = startDate;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getLastName() {
    return lastName;
  }
  public void setLastName(String lastName) {
    this.lastName = lastName;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public Date getEndDate() {
    return endDate;
  }
  public void setEndDate(Date endDate) {
    this.endDate = endDate;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getEmail() {
    return email;
  }
  public void setEmail(String email) {
    this.email = email;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getCompany() {
    return company;
  }
  public void setCompany(String company) {
    this.company = company;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InviteUpdateParams inviteUpdateParams = (InviteUpdateParams) o;
    return (this.mobileNumber == null ? inviteUpdateParams.mobileNumber == null : this.mobileNumber.equals(inviteUpdateParams.mobileNumber)) &&
        (this.userId == null ? inviteUpdateParams.userId == null : this.userId.equals(inviteUpdateParams.userId)) &&
        (this.onPremise == null ? inviteUpdateParams.onPremise == null : this.onPremise.equals(inviteUpdateParams.onPremise)) &&
        (this.notificationTriggers == null ? inviteUpdateParams.notificationTriggers == null : this.notificationTriggers.equals(inviteUpdateParams.notificationTriggers)) &&
        (this.firstName == null ? inviteUpdateParams.firstName == null : this.firstName.equals(inviteUpdateParams.firstName)) &&
        (this.emailTemplateId == null ? inviteUpdateParams.emailTemplateId == null : this.emailTemplateId.equals(inviteUpdateParams.emailTemplateId)) &&
        (this.customFields == null ? inviteUpdateParams.customFields == null : this.customFields.equals(inviteUpdateParams.customFields)) &&
        (this.hostIds == null ? inviteUpdateParams.hostIds == null : this.hostIds.equals(inviteUpdateParams.hostIds)) &&
        (this.title == null ? inviteUpdateParams.title == null : this.title.equals(inviteUpdateParams.title)) &&
        (this.startDate == null ? inviteUpdateParams.startDate == null : this.startDate.equals(inviteUpdateParams.startDate)) &&
        (this.lastName == null ? inviteUpdateParams.lastName == null : this.lastName.equals(inviteUpdateParams.lastName)) &&
        (this.endDate == null ? inviteUpdateParams.endDate == null : this.endDate.equals(inviteUpdateParams.endDate)) &&
        (this.email == null ? inviteUpdateParams.email == null : this.email.equals(inviteUpdateParams.email)) &&
        (this.company == null ? inviteUpdateParams.company == null : this.company.equals(inviteUpdateParams.company));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.mobileNumber == null ? 0: this.mobileNumber.hashCode());
    result = 31 * result + (this.userId == null ? 0: this.userId.hashCode());
    result = 31 * result + (this.onPremise == null ? 0: this.onPremise.hashCode());
    result = 31 * result + (this.notificationTriggers == null ? 0: this.notificationTriggers.hashCode());
    result = 31 * result + (this.firstName == null ? 0: this.firstName.hashCode());
    result = 31 * result + (this.emailTemplateId == null ? 0: this.emailTemplateId.hashCode());
    result = 31 * result + (this.customFields == null ? 0: this.customFields.hashCode());
    result = 31 * result + (this.hostIds == null ? 0: this.hostIds.hashCode());
    result = 31 * result + (this.title == null ? 0: this.title.hashCode());
    result = 31 * result + (this.startDate == null ? 0: this.startDate.hashCode());
    result = 31 * result + (this.lastName == null ? 0: this.lastName.hashCode());
    result = 31 * result + (this.endDate == null ? 0: this.endDate.hashCode());
    result = 31 * result + (this.email == null ? 0: this.email.hashCode());
    result = 31 * result + (this.company == null ? 0: this.company.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InviteUpdateParams {\n");
    
    sb.append("  mobileNumber: ").append(mobileNumber).append("\n");
    sb.append("  userId: ").append(userId).append("\n");
    sb.append("  onPremise: ").append(onPremise).append("\n");
    sb.append("  notificationTriggers: ").append(notificationTriggers).append("\n");
    sb.append("  firstName: ").append(firstName).append("\n");
    sb.append("  emailTemplateId: ").append(emailTemplateId).append("\n");
    sb.append("  customFields: ").append(customFields).append("\n");
    sb.append("  hostIds: ").append(hostIds).append("\n");
    sb.append("  title: ").append(title).append("\n");
    sb.append("  startDate: ").append(startDate).append("\n");
    sb.append("  lastName: ").append(lastName).append("\n");
    sb.append("  endDate: ").append(endDate).append("\n");
    sb.append("  email: ").append(email).append("\n");
    sb.append("  company: ").append(company).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

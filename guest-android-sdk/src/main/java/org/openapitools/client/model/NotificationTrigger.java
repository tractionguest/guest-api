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
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

/**
 * The root of the NotificationTrigger type&#39;s schema.
 **/
@ApiModel(description = "The root of the NotificationTrigger type's schema.")
public class NotificationTrigger {
  
  public enum OffsetDirectionEnum {
     BEFORE,  AFTER, 
  };
  @SerializedName("offset_direction")
  private OffsetDirectionEnum offsetDirection = null;
  @SerializedName("offset_amount")
  private Integer offsetAmount = null;
  public enum OffsetOriginEnum {
     START,  END, 
  };
  @SerializedName("offset_origin")
  private OffsetOriginEnum offsetOrigin = null;
  @SerializedName("email_template_id")
  private Integer emailTemplateId = null;
  @SerializedName("notification_groups")
  private List<String> notificationGroups = null;
  public enum OffsetUnitEnum {
     days,  hours, 
  };
  @SerializedName("offset_unit")
  private OffsetUnitEnum offsetUnit = null;
  @SerializedName("email_template_name")
  private String emailTemplateName = null;

  /**
   * Whether the offset should be calculated for before, or after the event
   **/
  @ApiModelProperty(required = true, value = "Whether the offset should be calculated for before, or after the event")
  public OffsetDirectionEnum getOffsetDirection() {
    return offsetDirection;
  }
  public void setOffsetDirection(OffsetDirectionEnum offsetDirection) {
    this.offsetDirection = offsetDirection;
  }

  /**
   * The amount to offset the notification from the event
   **/
  @ApiModelProperty(required = true, value = "The amount to offset the notification from the event")
  public Integer getOffsetAmount() {
    return offsetAmount;
  }
  public void setOffsetAmount(Integer offsetAmount) {
    this.offsetAmount = offsetAmount;
  }

  /**
   * Whether the offset should be calculated from the start, or finish of the event
   **/
  @ApiModelProperty(required = true, value = "Whether the offset should be calculated from the start, or finish of the event")
  public OffsetOriginEnum getOffsetOrigin() {
    return offsetOrigin;
  }
  public void setOffsetOrigin(OffsetOriginEnum offsetOrigin) {
    this.offsetOrigin = offsetOrigin;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public Integer getEmailTemplateId() {
    return emailTemplateId;
  }
  public void setEmailTemplateId(Integer emailTemplateId) {
    this.emailTemplateId = emailTemplateId;
  }

  /**
   * An array made of only `INVITEE`, `HOSTS, or `LEP` as possible string values
   **/
  @ApiModelProperty(required = true, value = "An array made of only `INVITEE`, `HOSTS, or `LEP` as possible string values")
  public List<String> getNotificationGroups() {
    return notificationGroups;
  }
  public void setNotificationGroups(List<String> notificationGroups) {
    this.notificationGroups = notificationGroups;
  }

  /**
   * Whether the offset should be calculated as `days` or `hours`
   **/
  @ApiModelProperty(required = true, value = "Whether the offset should be calculated as `days` or `hours`")
  public OffsetUnitEnum getOffsetUnit() {
    return offsetUnit;
  }
  public void setOffsetUnit(OffsetUnitEnum offsetUnit) {
    this.offsetUnit = offsetUnit;
  }

  /**
   * The name of the EmailTemplate associated with the NotificationTrigger. This is only given from the server, not used as a create param.
   **/
  @ApiModelProperty(required = true, value = "The name of the EmailTemplate associated with the NotificationTrigger. This is only given from the server, not used as a create param.")
  public String getEmailTemplateName() {
    return emailTemplateName;
  }
  public void setEmailTemplateName(String emailTemplateName) {
    this.emailTemplateName = emailTemplateName;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    NotificationTrigger notificationTrigger = (NotificationTrigger) o;
    return (this.offsetDirection == null ? notificationTrigger.offsetDirection == null : this.offsetDirection.equals(notificationTrigger.offsetDirection)) &&
        (this.offsetAmount == null ? notificationTrigger.offsetAmount == null : this.offsetAmount.equals(notificationTrigger.offsetAmount)) &&
        (this.offsetOrigin == null ? notificationTrigger.offsetOrigin == null : this.offsetOrigin.equals(notificationTrigger.offsetOrigin)) &&
        (this.emailTemplateId == null ? notificationTrigger.emailTemplateId == null : this.emailTemplateId.equals(notificationTrigger.emailTemplateId)) &&
        (this.notificationGroups == null ? notificationTrigger.notificationGroups == null : this.notificationGroups.equals(notificationTrigger.notificationGroups)) &&
        (this.offsetUnit == null ? notificationTrigger.offsetUnit == null : this.offsetUnit.equals(notificationTrigger.offsetUnit)) &&
        (this.emailTemplateName == null ? notificationTrigger.emailTemplateName == null : this.emailTemplateName.equals(notificationTrigger.emailTemplateName));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.offsetDirection == null ? 0: this.offsetDirection.hashCode());
    result = 31 * result + (this.offsetAmount == null ? 0: this.offsetAmount.hashCode());
    result = 31 * result + (this.offsetOrigin == null ? 0: this.offsetOrigin.hashCode());
    result = 31 * result + (this.emailTemplateId == null ? 0: this.emailTemplateId.hashCode());
    result = 31 * result + (this.notificationGroups == null ? 0: this.notificationGroups.hashCode());
    result = 31 * result + (this.offsetUnit == null ? 0: this.offsetUnit.hashCode());
    result = 31 * result + (this.emailTemplateName == null ? 0: this.emailTemplateName.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class NotificationTrigger {\n");
    
    sb.append("  offsetDirection: ").append(offsetDirection).append("\n");
    sb.append("  offsetAmount: ").append(offsetAmount).append("\n");
    sb.append("  offsetOrigin: ").append(offsetOrigin).append("\n");
    sb.append("  emailTemplateId: ").append(emailTemplateId).append("\n");
    sb.append("  notificationGroups: ").append(notificationGroups).append("\n");
    sb.append("  offsetUnit: ").append(offsetUnit).append("\n");
    sb.append("  emailTemplateName: ").append(emailTemplateName).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

/**
 * Traction Guest API
 * A compelling story about a lone device, on a quest for its data.
 *
 * The version of the OpenAPI document: 0.11.4
 * Contact: bmckay@tractionguest.com
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
public class NotificationTriggerCreateParams {
  
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


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    NotificationTriggerCreateParams notificationTriggerCreateParams = (NotificationTriggerCreateParams) o;
    return (this.offsetDirection == null ? notificationTriggerCreateParams.offsetDirection == null : this.offsetDirection.equals(notificationTriggerCreateParams.offsetDirection)) &&
        (this.offsetAmount == null ? notificationTriggerCreateParams.offsetAmount == null : this.offsetAmount.equals(notificationTriggerCreateParams.offsetAmount)) &&
        (this.offsetOrigin == null ? notificationTriggerCreateParams.offsetOrigin == null : this.offsetOrigin.equals(notificationTriggerCreateParams.offsetOrigin)) &&
        (this.emailTemplateId == null ? notificationTriggerCreateParams.emailTemplateId == null : this.emailTemplateId.equals(notificationTriggerCreateParams.emailTemplateId)) &&
        (this.notificationGroups == null ? notificationTriggerCreateParams.notificationGroups == null : this.notificationGroups.equals(notificationTriggerCreateParams.notificationGroups)) &&
        (this.offsetUnit == null ? notificationTriggerCreateParams.offsetUnit == null : this.offsetUnit.equals(notificationTriggerCreateParams.offsetUnit));
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
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class NotificationTriggerCreateParams {\n");
    
    sb.append("  offsetDirection: ").append(offsetDirection).append("\n");
    sb.append("  offsetAmount: ").append(offsetAmount).append("\n");
    sb.append("  offsetOrigin: ").append(offsetOrigin).append("\n");
    sb.append("  emailTemplateId: ").append(emailTemplateId).append("\n");
    sb.append("  notificationGroups: ").append(notificationGroups).append("\n");
    sb.append("  offsetUnit: ").append(offsetUnit).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

/**
 * Traction Guest API
 * The leader in enterprise visitor management, empowers businesses across five continents and dozens of industries to keep people safe while creating connection in the contactless world.
 *
 * The version of the OpenAPI document: 0.11.6
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
 * 
 **/
@ApiModel(description = "")
public class GuestAlertDetail {
  
  public enum DeliveryStatusEnum {
     pending,  success,  partial_success,  failure, 
  };
  @SerializedName("delivery_status")
  private DeliveryStatusEnum deliveryStatus = null;
  @SerializedName("pending_count")
  private Integer pendingCount = null;
  @SerializedName("sent_count")
  private Integer sentCount = null;
  @SerializedName("failed_count")
  private Integer failedCount = null;
  @SerializedName("message")
  private String message = null;
  @SerializedName("uuid")
  private String uuid = null;
  @SerializedName("channels")
  private List<String> channels = null;

  /**
   * pending, success, partial success, or failure 
   **/
  @ApiModelProperty(required = true, value = "pending, success, partial success, or failure ")
  public DeliveryStatusEnum getDeliveryStatus() {
    return deliveryStatus;
  }
  public void setDeliveryStatus(DeliveryStatusEnum deliveryStatus) {
    this.deliveryStatus = deliveryStatus;
  }

  /**
   * Count of pending messages 
   **/
  @ApiModelProperty(required = true, value = "Count of pending messages ")
  public Integer getPendingCount() {
    return pendingCount;
  }
  public void setPendingCount(Integer pendingCount) {
    this.pendingCount = pendingCount;
  }

  /**
   * Count of successfully sent messages 
   **/
  @ApiModelProperty(required = true, value = "Count of successfully sent messages ")
  public Integer getSentCount() {
    return sentCount;
  }
  public void setSentCount(Integer sentCount) {
    this.sentCount = sentCount;
  }

  /**
   * Count of messages that failed to be sent
   **/
  @ApiModelProperty(required = true, value = "Count of messages that failed to be sent")
  public Integer getFailedCount() {
    return failedCount;
  }
  public void setFailedCount(Integer failedCount) {
    this.failedCount = failedCount;
  }

  /**
   * 
   **/
  @ApiModelProperty(required = true, value = "")
  public String getMessage() {
    return message;
  }
  public void setMessage(String message) {
    this.message = message;
  }

  /**
   * The uuid of the guest_alert object
   **/
  @ApiModelProperty(required = true, value = "The uuid of the guest_alert object")
  public String getUuid() {
    return uuid;
  }
  public void setUuid(String uuid) {
    this.uuid = uuid;
  }

  /**
   * Channel used to send the message
   **/
  @ApiModelProperty(required = true, value = "Channel used to send the message")
  public List<String> getChannels() {
    return channels;
  }
  public void setChannels(List<String> channels) {
    this.channels = channels;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    GuestAlertDetail guestAlertDetail = (GuestAlertDetail) o;
    return (this.deliveryStatus == null ? guestAlertDetail.deliveryStatus == null : this.deliveryStatus.equals(guestAlertDetail.deliveryStatus)) &&
        (this.pendingCount == null ? guestAlertDetail.pendingCount == null : this.pendingCount.equals(guestAlertDetail.pendingCount)) &&
        (this.sentCount == null ? guestAlertDetail.sentCount == null : this.sentCount.equals(guestAlertDetail.sentCount)) &&
        (this.failedCount == null ? guestAlertDetail.failedCount == null : this.failedCount.equals(guestAlertDetail.failedCount)) &&
        (this.message == null ? guestAlertDetail.message == null : this.message.equals(guestAlertDetail.message)) &&
        (this.uuid == null ? guestAlertDetail.uuid == null : this.uuid.equals(guestAlertDetail.uuid)) &&
        (this.channels == null ? guestAlertDetail.channels == null : this.channels.equals(guestAlertDetail.channels));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.deliveryStatus == null ? 0: this.deliveryStatus.hashCode());
    result = 31 * result + (this.pendingCount == null ? 0: this.pendingCount.hashCode());
    result = 31 * result + (this.sentCount == null ? 0: this.sentCount.hashCode());
    result = 31 * result + (this.failedCount == null ? 0: this.failedCount.hashCode());
    result = 31 * result + (this.message == null ? 0: this.message.hashCode());
    result = 31 * result + (this.uuid == null ? 0: this.uuid.hashCode());
    result = 31 * result + (this.channels == null ? 0: this.channels.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class GuestAlertDetail {\n");
    
    sb.append("  deliveryStatus: ").append(deliveryStatus).append("\n");
    sb.append("  pendingCount: ").append(pendingCount).append("\n");
    sb.append("  sentCount: ").append(sentCount).append("\n");
    sb.append("  failedCount: ").append(failedCount).append("\n");
    sb.append("  message: ").append(message).append("\n");
    sb.append("  uuid: ").append(uuid).append("\n");
    sb.append("  channels: ").append(channels).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

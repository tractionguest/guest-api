/**
 * Traction Guest API
 * The leader in enterprise visitor management, empowers businesses across five continents and dozens of industries to keep people safe while creating connection in the contactless world.
 *
 * The version of the OpenAPI document: 0.11.9
 * Contact: bmckay@tractionguest.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

package org.openapitools.client.model;

import java.util.*;
import org.openapitools.client.model.GuestAlertSigninSelectors;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

/**
 * 
 **/
@ApiModel(description = "")
public class GuestAlertCreateParams {
  
  @SerializedName("signin_selectors")
  private GuestAlertSigninSelectors signinSelectors = null;
  @SerializedName("channels")
  private List<String> channels = null;
  @SerializedName("message")
  private String message = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public GuestAlertSigninSelectors getSigninSelectors() {
    return signinSelectors;
  }
  public void setSigninSelectors(GuestAlertSigninSelectors signinSelectors) {
    this.signinSelectors = signinSelectors;
  }

  /**
   * Specify the broadcast channel, one of 'SMS' and/or 'EMAIL'
   **/
  @ApiModelProperty(required = true, value = "Specify the broadcast channel, one of 'SMS' and/or 'EMAIL'")
  public List<String> getChannels() {
    return channels;
  }
  public void setChannels(List<String> channels) {
    this.channels = channels;
  }

  /**
   * Plain text of the alert to be sent
   **/
  @ApiModelProperty(required = true, value = "Plain text of the alert to be sent")
  public String getMessage() {
    return message;
  }
  public void setMessage(String message) {
    this.message = message;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    GuestAlertCreateParams guestAlertCreateParams = (GuestAlertCreateParams) o;
    return (this.signinSelectors == null ? guestAlertCreateParams.signinSelectors == null : this.signinSelectors.equals(guestAlertCreateParams.signinSelectors)) &&
        (this.channels == null ? guestAlertCreateParams.channels == null : this.channels.equals(guestAlertCreateParams.channels)) &&
        (this.message == null ? guestAlertCreateParams.message == null : this.message.equals(guestAlertCreateParams.message));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.signinSelectors == null ? 0: this.signinSelectors.hashCode());
    result = 31 * result + (this.channels == null ? 0: this.channels.hashCode());
    result = 31 * result + (this.message == null ? 0: this.message.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class GuestAlertCreateParams {\n");
    
    sb.append("  signinSelectors: ").append(signinSelectors).append("\n");
    sb.append("  channels: ").append(channels).append("\n");
    sb.append("  message: ").append(message).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

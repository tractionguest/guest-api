/**
 * Traction Guest API
 * The leader in enterprise visitor management, empowers businesses across five continents and dozens of industries to keep people safe while creating connection in the contactless world.
 *
 * The version of the OpenAPI document: 0.11.10
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
public class GuestAlertSigninSelectors {
  
  @SerializedName("is_signed_out")
  private Boolean isSignedOut = null;
  @SerializedName("signin_ids")
  private List<Integer> signinIds = null;
  @SerializedName("location_ids")
  private List<Integer> locationIds = null;

  /**
   * 
   **/
  @ApiModelProperty(value = "")
  public Boolean getIsSignedOut() {
    return isSignedOut;
  }
  public void setIsSignedOut(Boolean isSignedOut) {
    this.isSignedOut = isSignedOut;
  }

  /**
   * 
   **/
  @ApiModelProperty(value = "")
  public List<Integer> getSigninIds() {
    return signinIds;
  }
  public void setSigninIds(List<Integer> signinIds) {
    this.signinIds = signinIds;
  }

  /**
   * 
   **/
  @ApiModelProperty(value = "")
  public List<Integer> getLocationIds() {
    return locationIds;
  }
  public void setLocationIds(List<Integer> locationIds) {
    this.locationIds = locationIds;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    GuestAlertSigninSelectors guestAlertSigninSelectors = (GuestAlertSigninSelectors) o;
    return (this.isSignedOut == null ? guestAlertSigninSelectors.isSignedOut == null : this.isSignedOut.equals(guestAlertSigninSelectors.isSignedOut)) &&
        (this.signinIds == null ? guestAlertSigninSelectors.signinIds == null : this.signinIds.equals(guestAlertSigninSelectors.signinIds)) &&
        (this.locationIds == null ? guestAlertSigninSelectors.locationIds == null : this.locationIds.equals(guestAlertSigninSelectors.locationIds));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.isSignedOut == null ? 0: this.isSignedOut.hashCode());
    result = 31 * result + (this.signinIds == null ? 0: this.signinIds.hashCode());
    result = 31 * result + (this.locationIds == null ? 0: this.locationIds.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class GuestAlertSigninSelectors {\n");
    
    sb.append("  isSignedOut: ").append(isSignedOut).append("\n");
    sb.append("  signinIds: ").append(signinIds).append("\n");
    sb.append("  locationIds: ").append(locationIds).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

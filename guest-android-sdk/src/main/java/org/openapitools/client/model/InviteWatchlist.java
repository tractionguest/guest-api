/**
 * Traction Guest API
 * A compelling story about a lone device, on a quest for its data.
 *
 * The version of the OpenAPI document: 0.11.1
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
 * The root of the InviteWatchlist type&#39;s schema.
 **/
@ApiModel(description = "The root of the InviteWatchlist type's schema.")
public class InviteWatchlist {
  
  @SerializedName("id")
  private Integer id = null;
  @SerializedName("external_colours")
  private List<String> externalColours = null;
  @SerializedName("internal_colours")
  private List<String> internalColours = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public Integer getId() {
    return id;
  }
  public void setId(Integer id) {
    this.id = id;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public List<String> getExternalColours() {
    return externalColours;
  }
  public void setExternalColours(List<String> externalColours) {
    this.externalColours = externalColours;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public List<String> getInternalColours() {
    return internalColours;
  }
  public void setInternalColours(List<String> internalColours) {
    this.internalColours = internalColours;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InviteWatchlist inviteWatchlist = (InviteWatchlist) o;
    return (this.id == null ? inviteWatchlist.id == null : this.id.equals(inviteWatchlist.id)) &&
        (this.externalColours == null ? inviteWatchlist.externalColours == null : this.externalColours.equals(inviteWatchlist.externalColours)) &&
        (this.internalColours == null ? inviteWatchlist.internalColours == null : this.internalColours.equals(inviteWatchlist.internalColours));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.id == null ? 0: this.id.hashCode());
    result = 31 * result + (this.externalColours == null ? 0: this.externalColours.hashCode());
    result = 31 * result + (this.internalColours == null ? 0: this.internalColours.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InviteWatchlist {\n");
    
    sb.append("  id: ").append(id).append("\n");
    sb.append("  externalColours: ").append(externalColours).append("\n");
    sb.append("  internalColours: ").append(internalColours).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

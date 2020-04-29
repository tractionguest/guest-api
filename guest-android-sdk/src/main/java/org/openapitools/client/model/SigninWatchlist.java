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
import org.openapitools.client.model.ExternalWatchlistResult;
import org.openapitools.client.model.InternalWatchlistResult;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

/**
 * The root of the SigninWatchlist type&#39;s schema.
 **/
@ApiModel(description = "The root of the SigninWatchlist type's schema.")
public class SigninWatchlist {
  
  @SerializedName("id")
  private Integer id = null;
  @SerializedName("external")
  private List<ExternalWatchlistResult> external = null;
  @SerializedName("internal")
  private List<InternalWatchlistResult> internal = null;

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
  public List<ExternalWatchlistResult> getExternal() {
    return external;
  }
  public void setExternal(List<ExternalWatchlistResult> external) {
    this.external = external;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public List<InternalWatchlistResult> getInternal() {
    return internal;
  }
  public void setInternal(List<InternalWatchlistResult> internal) {
    this.internal = internal;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    SigninWatchlist signinWatchlist = (SigninWatchlist) o;
    return (this.id == null ? signinWatchlist.id == null : this.id.equals(signinWatchlist.id)) &&
        (this.external == null ? signinWatchlist.external == null : this.external.equals(signinWatchlist.external)) &&
        (this.internal == null ? signinWatchlist.internal == null : this.internal.equals(signinWatchlist.internal));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.id == null ? 0: this.id.hashCode());
    result = 31 * result + (this.external == null ? 0: this.external.hashCode());
    result = 31 * result + (this.internal == null ? 0: this.internal.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class SigninWatchlist {\n");
    
    sb.append("  id: ").append(id).append("\n");
    sb.append("  external: ").append(external).append("\n");
    sb.append("  internal: ").append(internal).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

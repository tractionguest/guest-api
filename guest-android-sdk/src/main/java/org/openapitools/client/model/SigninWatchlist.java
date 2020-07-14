/**
 * Traction Guest API
 * The Traction Guest API is currently in **closed beta**. We're still building, testing, and fixing bugs.  If you're interested in helping us get to version 1.0.0, contact your CS team representative. Only paid accounts are elligible.  # Slack  Do you have Slack? Want faster answers to Traction Guest API questions?  Ask to be added to the Traction Guest API Slack channel!  Talk to your CS team representative, or send an email to the API support email above, and we'll add you.  # Versioning  This API follows [semantic versioning](https://semver.org/), which follows the `Major`.`Minor`.`Patch` format. In short:  * The `Major` number increments when potentially incompatible changes are made. * The `Minor` number increments when backwards-compatible additions are made. * The `Patch` number increments when backwards-compatible bug-fixes are made.  So, once the API is out of closed beta, and has reached version 1.0.0, some things may change.  **However**, the developers at Traction Guest strive to keep things running smoothly for our clients. We plan to **deprecate and warn** before making any potentially breaking changes; you may receive messages that follow the format \"this is deprecated, and will be removed in version X.X.X, which is scheduled for release on or after 20XX-01-01.\" Please note that the deprecation message format and content may change.  At this time, we are not planning to make older or 'legacy' versions of the API available, going forward.  # Getting Started  Would you like your team to be a part of closed beta testing? Talk to your CS team representative. We'll walk you through the process of enabling API access and provisioning your account. 
 *
 * The version of the OpenAPI document: 0.11.12
 * Contact: support@tractionguest.com
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
  @SerializedName("internal")
  private List<InternalWatchlistResult> internal = null;
  @SerializedName("external")
  private List<ExternalWatchlistResult> external = null;

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
  public List<InternalWatchlistResult> getInternal() {
    return internal;
  }
  public void setInternal(List<InternalWatchlistResult> internal) {
    this.internal = internal;
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
        (this.internal == null ? signinWatchlist.internal == null : this.internal.equals(signinWatchlist.internal)) &&
        (this.external == null ? signinWatchlist.external == null : this.external.equals(signinWatchlist.external));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.id == null ? 0: this.id.hashCode());
    result = 31 * result + (this.internal == null ? 0: this.internal.hashCode());
    result = 31 * result + (this.external == null ? 0: this.external.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class SigninWatchlist {\n");
    
    sb.append("  id: ").append(id).append("\n");
    sb.append("  internal: ").append(internal).append("\n");
    sb.append("  external: ").append(external).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

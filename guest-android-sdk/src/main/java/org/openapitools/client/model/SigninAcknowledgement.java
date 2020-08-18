/**
 * Traction Guest API
 * The Traction Guest API is currently in **closed beta**. We're still building, testing, and fixing bugs.  If you're interested in helping us get to version 1.0.0, contact your CS team representative. Only paid accounts are elligible.  # Slack  Do you have Slack? Want faster answers to Traction Guest API questions?  Ask to be added to the Traction Guest API Slack channel!  Talk to your CS team representative, or send an email to the API support email above, and we'll add you.  # Versioning  This API follows [semantic versioning](https://semver.org/), which follows the `Major`.`Minor`.`Patch` format. In short:  * The `Major` number increments when potentially incompatible changes are made. * The `Minor` number increments when backwards-compatible additions are made. * The `Patch` number increments when backwards-compatible bug-fixes are made.  So, once the API is out of closed beta, and has reached version 1.0.0, some things may change.  **However**, the developers at Traction Guest strive to keep things running smoothly for our clients. We plan to **deprecate and warn** before making any potentially breaking changes; you may receive messages that follow the format \"this is deprecated, and will be removed in version X.X.X, which is scheduled for release on or after 20XX-01-01.\" Please note that the deprecation message format and content may change.  At this time, we are not planning to make older or 'legacy' versions of the API available, going forward.  # Getting Started  Would you like your team to be a part of closed beta testing? Talk to your CS team representative. We'll walk you through the process of enabling API access and provisioning your account. 
 *
 * The version of the OpenAPI document: 0.13.0
 * Contact: support@tractionguest.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

package org.openapitools.client.model;

import java.util.Date;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

/**
 * The root of the SigninAcknowledgement type&#39;s schema.
 **/
@ApiModel(description = "The root of the SigninAcknowledgement type's schema.")
public class SigninAcknowledgement {
  
  @SerializedName("code")
  private String code = null;
  @SerializedName("acknowledged_at")
  private Date acknowledgedAt = null;
  @SerializedName("id")
  private Integer id = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public String getCode() {
    return code;
  }
  public void setCode(String code) {
    this.code = code;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public Date getAcknowledgedAt() {
    return acknowledgedAt;
  }
  public void setAcknowledgedAt(Date acknowledgedAt) {
    this.acknowledgedAt = acknowledgedAt;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public Integer getId() {
    return id;
  }
  public void setId(Integer id) {
    this.id = id;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    SigninAcknowledgement signinAcknowledgement = (SigninAcknowledgement) o;
    return (this.code == null ? signinAcknowledgement.code == null : this.code.equals(signinAcknowledgement.code)) &&
        (this.acknowledgedAt == null ? signinAcknowledgement.acknowledgedAt == null : this.acknowledgedAt.equals(signinAcknowledgement.acknowledgedAt)) &&
        (this.id == null ? signinAcknowledgement.id == null : this.id.equals(signinAcknowledgement.id));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.code == null ? 0: this.code.hashCode());
    result = 31 * result + (this.acknowledgedAt == null ? 0: this.acknowledgedAt.hashCode());
    result = 31 * result + (this.id == null ? 0: this.id.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class SigninAcknowledgement {\n");
    
    sb.append("  code: ").append(code).append("\n");
    sb.append("  acknowledgedAt: ").append(acknowledgedAt).append("\n");
    sb.append("  id: ").append(id).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

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

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

/**
 * The root of the Error type&#39;s schema.
 **/
@ApiModel(description = "The root of the Error type's schema.")
public class Error {
  
  @SerializedName("domain")
  private String domain = null;
  @SerializedName("attribute")
  private String attribute = null;
  @SerializedName("code")
  private String code = null;
  @SerializedName("message")
  private String message = null;

  /**
   * The name of the model with the error, or global if it is something outside a model
   **/
  @ApiModelProperty(required = true, value = "The name of the model with the error, or global if it is something outside a model")
  public String getDomain() {
    return domain;
  }
  public void setDomain(String domain) {
    this.domain = domain;
  }

  /**
   * The model attribute where the error occured
   **/
  @ApiModelProperty(value = "The model attribute where the error occured")
  public String getAttribute() {
    return attribute;
  }
  public void setAttribute(String attribute) {
    this.attribute = attribute;
  }

  /**
   * An error code reference for the specific error that occured
   **/
  @ApiModelProperty(required = true, value = "An error code reference for the specific error that occured")
  public String getCode() {
    return code;
  }
  public void setCode(String code) {
    this.code = code;
  }

  /**
   * A human readable error message that can be discarded for internationalization purposes
   **/
  @ApiModelProperty(value = "A human readable error message that can be discarded for internationalization purposes")
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
    Error error = (Error) o;
    return (this.domain == null ? error.domain == null : this.domain.equals(error.domain)) &&
        (this.attribute == null ? error.attribute == null : this.attribute.equals(error.attribute)) &&
        (this.code == null ? error.code == null : this.code.equals(error.code)) &&
        (this.message == null ? error.message == null : this.message.equals(error.message));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.domain == null ? 0: this.domain.hashCode());
    result = 31 * result + (this.attribute == null ? 0: this.attribute.hashCode());
    result = 31 * result + (this.code == null ? 0: this.code.hashCode());
    result = 31 * result + (this.message == null ? 0: this.message.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class Error {\n");
    
    sb.append("  domain: ").append(domain).append("\n");
    sb.append("  attribute: ").append(attribute).append("\n");
    sb.append("  code: ").append(code).append("\n");
    sb.append("  message: ").append(message).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

/**
 * Traction Guest API
 * The Traction Guest API is currently in **closed beta**. We're still building, testing, and fixing bugs.  If you're interested in helping us get to version 1.0.0, contact your CS team representative. Only paid accounts are elligible.  # Slack  Do you have Slack? Want faster answers to Traction Guest API questions?  Ask to be added to the Traction Guest API Slack channel!  Talk to your CS team representative, or send an email to the API support email above, and we'll add you.  # Versioning  This API follows [semantic versioning](https://semver.org/), which follows the `Major`.`Minor`.`Patch` format. In short:  * The `Major` number increments when potentially incompatible changes are made. * The `Minor` number increments when backwards-compatible additions are made. * The `Patch` number increments when backwards-compatible bug-fixes are made.  So, once the API is out of closed beta, and has reached version 1.0.0, some things may change.  **However**, the developers at Traction Guest strive to keep things running smoothly for our clients. We plan to **deprecate and warn** before making any potentially breaking changes; you may receive messages that follow the format \"this is deprecated, and will be removed in version X.X.X, which is scheduled for release on or after 20XX-01-01.\" Please note that the deprecation message format and content may change.  At this time, we are not planning to make older or 'legacy' versions of the API available, going forward.  # Getting Started  Would you like your team to be a part of closed beta testing? Talk to your CS team representative. We'll walk you through the process of enabling API access and provisioning your account. 
 *
 * The version of the OpenAPI document: 0.12.2
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
 * 
 **/
@ApiModel(description = "")
public class AuditLogChange {
  
  @SerializedName("field_name")
  private String fieldName = null;
  @SerializedName("field_value_before")
  private String fieldValueBefore = null;
  @SerializedName("field_value_after")
  private String fieldValueAfter = null;
  public enum FormatEnum {
     string,  boolean,  integer,  json,  no_value, 
  };
  @SerializedName("format")
  private FormatEnum format = null;

  /**
   * What the field should be displayed/labeled as
   **/
  @ApiModelProperty(value = "What the field should be displayed/labeled as")
  public String getFieldName() {
    return fieldName;
  }
  public void setFieldName(String fieldName) {
    this.fieldName = fieldName;
  }

  /**
   * The value to be displayed for the field before changes
   **/
  @ApiModelProperty(value = "The value to be displayed for the field before changes")
  public String getFieldValueBefore() {
    return fieldValueBefore;
  }
  public void setFieldValueBefore(String fieldValueBefore) {
    this.fieldValueBefore = fieldValueBefore;
  }

  /**
   * The value to be displayed for the field after changes
   **/
  @ApiModelProperty(value = "The value to be displayed for the field after changes")
  public String getFieldValueAfter() {
    return fieldValueAfter;
  }
  public void setFieldValueAfter(String fieldValueAfter) {
    this.fieldValueAfter = fieldValueAfter;
  }

  /**
   * The format type of the field
   **/
  @ApiModelProperty(value = "The format type of the field")
  public FormatEnum getFormat() {
    return format;
  }
  public void setFormat(FormatEnum format) {
    this.format = format;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    AuditLogChange auditLogChange = (AuditLogChange) o;
    return (this.fieldName == null ? auditLogChange.fieldName == null : this.fieldName.equals(auditLogChange.fieldName)) &&
        (this.fieldValueBefore == null ? auditLogChange.fieldValueBefore == null : this.fieldValueBefore.equals(auditLogChange.fieldValueBefore)) &&
        (this.fieldValueAfter == null ? auditLogChange.fieldValueAfter == null : this.fieldValueAfter.equals(auditLogChange.fieldValueAfter)) &&
        (this.format == null ? auditLogChange.format == null : this.format.equals(auditLogChange.format));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.fieldName == null ? 0: this.fieldName.hashCode());
    result = 31 * result + (this.fieldValueBefore == null ? 0: this.fieldValueBefore.hashCode());
    result = 31 * result + (this.fieldValueAfter == null ? 0: this.fieldValueAfter.hashCode());
    result = 31 * result + (this.format == null ? 0: this.format.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class AuditLogChange {\n");
    
    sb.append("  fieldName: ").append(fieldName).append("\n");
    sb.append("  fieldValueBefore: ").append(fieldValueBefore).append("\n");
    sb.append("  fieldValueAfter: ").append(fieldValueAfter).append("\n");
    sb.append("  format: ").append(format).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

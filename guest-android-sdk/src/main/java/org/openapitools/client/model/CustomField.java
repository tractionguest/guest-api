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

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

/**
 * The root of the CustomField type&#39;s schema.
 **/
@ApiModel(description = "The root of the CustomField type's schema.")
public class CustomField {
  
  public enum FormatEnum {
     string, 
  };
  @SerializedName("format")
  private FormatEnum format = null;
  @SerializedName("field_name")
  private String fieldName = null;
  @SerializedName("field_value")
  private String fieldValue = null;

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

  /**
   * What the field should be displayed/labeled as
   **/
  @ApiModelProperty(required = true, value = "What the field should be displayed/labeled as")
  public String getFieldName() {
    return fieldName;
  }
  public void setFieldName(String fieldName) {
    this.fieldName = fieldName;
  }

  /**
   * The value to be displayed for the field
   **/
  @ApiModelProperty(required = true, value = "The value to be displayed for the field")
  public String getFieldValue() {
    return fieldValue;
  }
  public void setFieldValue(String fieldValue) {
    this.fieldValue = fieldValue;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    CustomField customField = (CustomField) o;
    return (this.format == null ? customField.format == null : this.format.equals(customField.format)) &&
        (this.fieldName == null ? customField.fieldName == null : this.fieldName.equals(customField.fieldName)) &&
        (this.fieldValue == null ? customField.fieldValue == null : this.fieldValue.equals(customField.fieldValue));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.format == null ? 0: this.format.hashCode());
    result = 31 * result + (this.fieldName == null ? 0: this.fieldName.hashCode());
    result = 31 * result + (this.fieldValue == null ? 0: this.fieldValue.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class CustomField {\n");
    
    sb.append("  format: ").append(format).append("\n");
    sb.append("  fieldName: ").append(fieldName).append("\n");
    sb.append("  fieldValue: ").append(fieldValue).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

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

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

/**
 * A custom field
 **/
@ApiModel(description = "A custom field")
public class FlexField {
  
  @SerializedName("field_name")
  private String fieldName = null;
  @SerializedName("field_value")
  private String fieldValue = null;

  /**
   * Flex field key
   **/
  @ApiModelProperty(value = "Flex field key")
  public String getFieldName() {
    return fieldName;
  }
  public void setFieldName(String fieldName) {
    this.fieldName = fieldName;
  }

  /**
   * Flex field value
   **/
  @ApiModelProperty(value = "Flex field value")
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
    FlexField flexField = (FlexField) o;
    return (this.fieldName == null ? flexField.fieldName == null : this.fieldName.equals(flexField.fieldName)) &&
        (this.fieldValue == null ? flexField.fieldValue == null : this.fieldValue.equals(flexField.fieldValue));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.fieldName == null ? 0: this.fieldName.hashCode());
    result = 31 * result + (this.fieldValue == null ? 0: this.fieldValue.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class FlexField {\n");
    
    sb.append("  fieldName: ").append(fieldName).append("\n");
    sb.append("  fieldValue: ").append(fieldValue).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

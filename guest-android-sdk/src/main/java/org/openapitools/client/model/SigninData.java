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
import org.openapitools.client.model.CustomField;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class SigninData {
  
  @SerializedName("name")
  private String name = null;
  @SerializedName("custom_fields")
  private List<CustomField> customFields = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public String getName() {
    return name;
  }
  public void setName(String name) {
    this.name = name;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public List<CustomField> getCustomFields() {
    return customFields;
  }
  public void setCustomFields(List<CustomField> customFields) {
    this.customFields = customFields;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    SigninData signinData = (SigninData) o;
    return (this.name == null ? signinData.name == null : this.name.equals(signinData.name)) &&
        (this.customFields == null ? signinData.customFields == null : this.customFields.equals(signinData.customFields));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.name == null ? 0: this.name.hashCode());
    result = 31 * result + (this.customFields == null ? 0: this.customFields.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class SigninData {\n");
    
    sb.append("  name: ").append(name).append("\n");
    sb.append("  customFields: ").append(customFields).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

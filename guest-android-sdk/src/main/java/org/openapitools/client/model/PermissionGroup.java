/**
 * Traction Guest API
 * The leader in enterprise visitor management, empowers businesses across five continents and dozens of industries to keep people safe while creating connection in the contactless world.
 *
 * The version of the OpenAPI document: 0.11.7
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
 * The root of the Permission type&#39;s schema.
 **/
@ApiModel(description = "The root of the Permission type's schema.")
public class PermissionGroup {
  
  @SerializedName("name")
  private String name = null;
  @SerializedName("visibility")
  private String visibility = null;
  @SerializedName("permissions")
  private List<String> permissions = null;

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
  public String getVisibility() {
    return visibility;
  }
  public void setVisibility(String visibility) {
    this.visibility = visibility;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public List<String> getPermissions() {
    return permissions;
  }
  public void setPermissions(List<String> permissions) {
    this.permissions = permissions;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    PermissionGroup permissionGroup = (PermissionGroup) o;
    return (this.name == null ? permissionGroup.name == null : this.name.equals(permissionGroup.name)) &&
        (this.visibility == null ? permissionGroup.visibility == null : this.visibility.equals(permissionGroup.visibility)) &&
        (this.permissions == null ? permissionGroup.permissions == null : this.permissions.equals(permissionGroup.permissions));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.name == null ? 0: this.name.hashCode());
    result = 31 * result + (this.visibility == null ? 0: this.visibility.hashCode());
    result = 31 * result + (this.permissions == null ? 0: this.permissions.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class PermissionGroup {\n");
    
    sb.append("  name: ").append(name).append("\n");
    sb.append("  visibility: ").append(visibility).append("\n");
    sb.append("  permissions: ").append(permissions).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

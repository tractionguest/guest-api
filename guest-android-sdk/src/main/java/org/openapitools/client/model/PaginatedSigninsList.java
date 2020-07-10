/**
 * Traction Guest API
 * The leader in enterprise visitor management, empowers businesses across five continents and dozens of industries to keep people safe while creating connection in the contactless world.
 *
 * The version of the OpenAPI document: 0.11.12
 * Contact: bmckay@tractionguest.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

package org.openapitools.client.model;

import java.util.*;
import org.openapitools.client.model.Pagination;
import org.openapitools.client.model.Signin;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class PaginatedSigninsList {
  
  @SerializedName("pagination")
  private Pagination pagination = null;
  @SerializedName("signins")
  private List<Signin> signins = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public Pagination getPagination() {
    return pagination;
  }
  public void setPagination(Pagination pagination) {
    this.pagination = pagination;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public List<Signin> getSignins() {
    return signins;
  }
  public void setSignins(List<Signin> signins) {
    this.signins = signins;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    PaginatedSigninsList paginatedSigninsList = (PaginatedSigninsList) o;
    return (this.pagination == null ? paginatedSigninsList.pagination == null : this.pagination.equals(paginatedSigninsList.pagination)) &&
        (this.signins == null ? paginatedSigninsList.signins == null : this.signins.equals(paginatedSigninsList.signins));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.pagination == null ? 0: this.pagination.hashCode());
    result = 31 * result + (this.signins == null ? 0: this.signins.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class PaginatedSigninsList {\n");
    
    sb.append("  pagination: ").append(pagination).append("\n");
    sb.append("  signins: ").append(signins).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

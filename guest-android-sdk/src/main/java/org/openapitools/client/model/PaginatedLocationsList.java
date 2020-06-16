/**
 * Traction Guest API
 * The leader in enterprise visitor management, empowers businesses across five continents and dozens of industries to keep people safe while creating connection in the contactless world.
 *
 * The version of the OpenAPI document: 0.11.9
 * Contact: bmckay@tractionguest.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

package org.openapitools.client.model;

import java.util.*;
import org.openapitools.client.model.Location;
import org.openapitools.client.model.Pagination;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class PaginatedLocationsList {
  
  @SerializedName("locations")
  private List<Location> locations = null;
  @SerializedName("pagination")
  private Pagination pagination = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public List<Location> getLocations() {
    return locations;
  }
  public void setLocations(List<Location> locations) {
    this.locations = locations;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public Pagination getPagination() {
    return pagination;
  }
  public void setPagination(Pagination pagination) {
    this.pagination = pagination;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    PaginatedLocationsList paginatedLocationsList = (PaginatedLocationsList) o;
    return (this.locations == null ? paginatedLocationsList.locations == null : this.locations.equals(paginatedLocationsList.locations)) &&
        (this.pagination == null ? paginatedLocationsList.pagination == null : this.pagination.equals(paginatedLocationsList.pagination));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.locations == null ? 0: this.locations.hashCode());
    result = 31 * result + (this.pagination == null ? 0: this.pagination.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class PaginatedLocationsList {\n");
    
    sb.append("  locations: ").append(locations).append("\n");
    sb.append("  pagination: ").append(pagination).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

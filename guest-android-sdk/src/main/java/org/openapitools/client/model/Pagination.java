/**
 * Traction Guest API
 * The leader in enterprise visitor management, empowers businesses across five continents and dozens of industries to keep people safe while creating connection in the contactless world.
 *
 * The version of the OpenAPI document: 0.11.11
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
 * The root of the Pagination type&#39;s schema.
 **/
@ApiModel(description = "The root of the Pagination type's schema.")
public class Pagination {
  
  @SerializedName("total_records")
  private Integer totalRecords = null;
  @SerializedName("current_offset")
  private Integer currentOffset = null;
  @SerializedName("next_offset")
  private Integer nextOffset = null;
  @SerializedName("last_id")
  private Integer lastId = null;
  @SerializedName("limit")
  private Integer limit = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public Integer getTotalRecords() {
    return totalRecords;
  }
  public void setTotalRecords(Integer totalRecords) {
    this.totalRecords = totalRecords;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public Integer getCurrentOffset() {
    return currentOffset;
  }
  public void setCurrentOffset(Integer currentOffset) {
    this.currentOffset = currentOffset;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public Integer getNextOffset() {
    return nextOffset;
  }
  public void setNextOffset(Integer nextOffset) {
    this.nextOffset = nextOffset;
  }

  /**
   * The last ID rendered, if the request included the 'after_id' param.
   **/
  @ApiModelProperty(value = "The last ID rendered, if the request included the 'after_id' param.")
  public Integer getLastId() {
    return lastId;
  }
  public void setLastId(Integer lastId) {
    this.lastId = lastId;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public Integer getLimit() {
    return limit;
  }
  public void setLimit(Integer limit) {
    this.limit = limit;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    Pagination pagination = (Pagination) o;
    return (this.totalRecords == null ? pagination.totalRecords == null : this.totalRecords.equals(pagination.totalRecords)) &&
        (this.currentOffset == null ? pagination.currentOffset == null : this.currentOffset.equals(pagination.currentOffset)) &&
        (this.nextOffset == null ? pagination.nextOffset == null : this.nextOffset.equals(pagination.nextOffset)) &&
        (this.lastId == null ? pagination.lastId == null : this.lastId.equals(pagination.lastId)) &&
        (this.limit == null ? pagination.limit == null : this.limit.equals(pagination.limit));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.totalRecords == null ? 0: this.totalRecords.hashCode());
    result = 31 * result + (this.currentOffset == null ? 0: this.currentOffset.hashCode());
    result = 31 * result + (this.nextOffset == null ? 0: this.nextOffset.hashCode());
    result = 31 * result + (this.lastId == null ? 0: this.lastId.hashCode());
    result = 31 * result + (this.limit == null ? 0: this.limit.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class Pagination {\n");
    
    sb.append("  totalRecords: ").append(totalRecords).append("\n");
    sb.append("  currentOffset: ").append(currentOffset).append("\n");
    sb.append("  nextOffset: ").append(nextOffset).append("\n");
    sb.append("  lastId: ").append(lastId).append("\n");
    sb.append("  limit: ").append(limit).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

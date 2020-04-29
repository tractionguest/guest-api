/**
 * Traction Guest API
 * A compelling story about a lone device, on a quest for its data.
 *
 * The version of the OpenAPI document: 0.11.2
 * Contact: bmckay@tractionguest.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

package org.openapitools.client.model;

import java.util.*;
import org.openapitools.client.model.AuditLog;
import org.openapitools.client.model.Pagination;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class PaginatedAuditLogsList {
  
  @SerializedName("audit_logs")
  private List<AuditLog> auditLogs = null;
  @SerializedName("pagination")
  private Pagination pagination = null;

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public List<AuditLog> getAuditLogs() {
    return auditLogs;
  }
  public void setAuditLogs(List<AuditLog> auditLogs) {
    this.auditLogs = auditLogs;
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
    PaginatedAuditLogsList paginatedAuditLogsList = (PaginatedAuditLogsList) o;
    return (this.auditLogs == null ? paginatedAuditLogsList.auditLogs == null : this.auditLogs.equals(paginatedAuditLogsList.auditLogs)) &&
        (this.pagination == null ? paginatedAuditLogsList.pagination == null : this.pagination.equals(paginatedAuditLogsList.pagination));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.auditLogs == null ? 0: this.auditLogs.hashCode());
    result = 31 * result + (this.pagination == null ? 0: this.pagination.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class PaginatedAuditLogsList {\n");
    
    sb.append("  auditLogs: ").append(auditLogs).append("\n");
    sb.append("  pagination: ").append(pagination).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

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
import org.openapitools.client.model.HostCreateParams;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class HostBatchCreateParams {
  
  @SerializedName("hosts")
  private List<HostCreateParams> hosts = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public List<HostCreateParams> getHosts() {
    return hosts;
  }
  public void setHosts(List<HostCreateParams> hosts) {
    this.hosts = hosts;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    HostBatchCreateParams hostBatchCreateParams = (HostBatchCreateParams) o;
    return (this.hosts == null ? hostBatchCreateParams.hosts == null : this.hosts.equals(hostBatchCreateParams.hosts));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.hosts == null ? 0: this.hosts.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class HostBatchCreateParams {\n");
    
    sb.append("  hosts: ").append(hosts).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

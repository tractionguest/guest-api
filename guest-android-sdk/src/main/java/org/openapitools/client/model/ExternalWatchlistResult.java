/**
 * Traction Guest API
 * The leader in enterprise visitor management, empowers businesses across five continents and dozens of industries to keep people safe while creating connection in the contactless world.
 *
 * The version of the OpenAPI document: 0.11.10
 * Contact: bmckay@tractionguest.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

package org.openapitools.client.model;

import java.util.*;
import org.openapitools.client.model.WatchlistMatch;
import org.openapitools.client.model.WatchlistSearch;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

/**
 * 
 **/
@ApiModel(description = "")
public class ExternalWatchlistResult {
  
  @SerializedName("matches")
  private List<WatchlistMatch> matches = null;
  public enum ColourEnum {
     RED,  GREEN,  YELLOW,  ORANGE, 
  };
  @SerializedName("colour")
  private ColourEnum colour = null;
  @SerializedName("integration")
  private String integration = null;
  @SerializedName("search_terms")
  private WatchlistSearch searchTerms = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public List<WatchlistMatch> getMatches() {
    return matches;
  }
  public void setMatches(List<WatchlistMatch> matches) {
    this.matches = matches;
  }

  /**
   * 
   **/
  @ApiModelProperty(value = "")
  public ColourEnum getColour() {
    return colour;
  }
  public void setColour(ColourEnum colour) {
    this.colour = colour;
  }

  /**
   * 
   **/
  @ApiModelProperty(value = "")
  public String getIntegration() {
    return integration;
  }
  public void setIntegration(String integration) {
    this.integration = integration;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public WatchlistSearch getSearchTerms() {
    return searchTerms;
  }
  public void setSearchTerms(WatchlistSearch searchTerms) {
    this.searchTerms = searchTerms;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    ExternalWatchlistResult externalWatchlistResult = (ExternalWatchlistResult) o;
    return (this.matches == null ? externalWatchlistResult.matches == null : this.matches.equals(externalWatchlistResult.matches)) &&
        (this.colour == null ? externalWatchlistResult.colour == null : this.colour.equals(externalWatchlistResult.colour)) &&
        (this.integration == null ? externalWatchlistResult.integration == null : this.integration.equals(externalWatchlistResult.integration)) &&
        (this.searchTerms == null ? externalWatchlistResult.searchTerms == null : this.searchTerms.equals(externalWatchlistResult.searchTerms));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.matches == null ? 0: this.matches.hashCode());
    result = 31 * result + (this.colour == null ? 0: this.colour.hashCode());
    result = 31 * result + (this.integration == null ? 0: this.integration.hashCode());
    result = 31 * result + (this.searchTerms == null ? 0: this.searchTerms.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class ExternalWatchlistResult {\n");
    
    sb.append("  matches: ").append(matches).append("\n");
    sb.append("  colour: ").append(colour).append("\n");
    sb.append("  integration: ").append(integration).append("\n");
    sb.append("  searchTerms: ").append(searchTerms).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

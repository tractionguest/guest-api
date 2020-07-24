/**
 * Traction Guest API
 * The Traction Guest API is currently in **closed beta**. We're still building, testing, and fixing bugs.  If you're interested in helping us get to version 1.0.0, contact your CS team representative. Only paid accounts are elligible.  # Slack  Do you have Slack? Want faster answers to Traction Guest API questions?  Ask to be added to the Traction Guest API Slack channel!  Talk to your CS team representative, or send an email to the API support email above, and we'll add you.  # Versioning  This API follows [semantic versioning](https://semver.org/), which follows the `Major`.`Minor`.`Patch` format. In short:  * The `Major` number increments when potentially incompatible changes are made. * The `Minor` number increments when backwards-compatible additions are made. * The `Patch` number increments when backwards-compatible bug-fixes are made.  So, once the API is out of closed beta, and has reached version 1.0.0, some things may change.  **However**, the developers at Traction Guest strive to keep things running smoothly for our clients. We plan to **deprecate and warn** before making any potentially breaking changes; you may receive messages that follow the format \"this is deprecated, and will be removed in version X.X.X, which is scheduled for release on or after 20XX-01-01.\" Please note that the deprecation message format and content may change.  At this time, we are not planning to make older or 'legacy' versions of the API available, going forward.  # Getting Started  Would you like your team to be a part of closed beta testing? Talk to your CS team representative. We'll walk you through the process of enabling API access and provisioning your account. 
 *
 * The version of the OpenAPI document: 0.12.1
 * Contact: support@tractionguest.com
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

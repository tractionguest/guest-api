/**
 * Traction Guest API
 * The Traction Guest API is currently in **closed beta**. We're still building, testing, and fixing bugs.  If you're interested in helping us get to version 1.0.0, contact your CS team representative. Only paid accounts are elligible.  # Slack  Do you have Slack? Want faster answers to Traction Guest API questions?  Ask to be added to the Traction Guest API Slack channel!  Talk to your CS team representative, or send an email to the API support email above, and we'll add you.  # Versioning  This API follows [semantic versioning](https://semver.org/), which follows the `Major`.`Minor`.`Patch` format. In short:  * The `Major` number increments when potentially incompatible changes are made. * The `Minor` number increments when backwards-compatible additions are made. * The `Patch` number increments when backwards-compatible bug-fixes are made.  So, once the API is out of closed beta, and has reached version 1.0.0, some things may change.  **However**, the developers at Traction Guest strive to keep things running smoothly for our clients. We plan to **deprecate and warn** before making any potentially breaking changes; you may receive messages that follow the format \"this is deprecated, and will be removed in version X.X.X, which is scheduled for release on or after 20XX-01-01.\" Please note that the deprecation message format and content may change.  At this time, we are not planning to make older or 'legacy' versions of the API available, going forward.  # Getting Started  Would you like your team to be a part of closed beta testing? Talk to your CS team representative. We'll walk you through the process of enabling API access and provisioning your account. 
 *
 * The version of the OpenAPI document: 0.12.0
 * Contact: support@tractionguest.com
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
 * Parameters required for updating or creating watchlist records
 **/
@ApiModel(description = "Parameters required for updating or creating watchlist records")
public class WatchlistCreateParams {
  
  @SerializedName("aliases")
  private List<String> aliases = null;
  @SerializedName("notes")
  private String notes = null;
  @SerializedName("last_name")
  private String lastName = null;
  @SerializedName("first_name")
  private String firstName = null;
  @SerializedName("email")
  private String email = null;
  public enum ColourEnum {
     RED,  YELLOW,  GREEN,  ORANGE, 
  };
  @SerializedName("colour")
  private ColourEnum colour = null;

  /**
   **/
  @ApiModelProperty(value = "")
  public List<String> getAliases() {
    return aliases;
  }
  public void setAliases(List<String> aliases) {
    this.aliases = aliases;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getNotes() {
    return notes;
  }
  public void setNotes(String notes) {
    this.notes = notes;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getLastName() {
    return lastName;
  }
  public void setLastName(String lastName) {
    this.lastName = lastName;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getFirstName() {
    return firstName;
  }
  public void setFirstName(String firstName) {
    this.firstName = firstName;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getEmail() {
    return email;
  }
  public void setEmail(String email) {
    this.email = email;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public ColourEnum getColour() {
    return colour;
  }
  public void setColour(ColourEnum colour) {
    this.colour = colour;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    WatchlistCreateParams watchlistCreateParams = (WatchlistCreateParams) o;
    return (this.aliases == null ? watchlistCreateParams.aliases == null : this.aliases.equals(watchlistCreateParams.aliases)) &&
        (this.notes == null ? watchlistCreateParams.notes == null : this.notes.equals(watchlistCreateParams.notes)) &&
        (this.lastName == null ? watchlistCreateParams.lastName == null : this.lastName.equals(watchlistCreateParams.lastName)) &&
        (this.firstName == null ? watchlistCreateParams.firstName == null : this.firstName.equals(watchlistCreateParams.firstName)) &&
        (this.email == null ? watchlistCreateParams.email == null : this.email.equals(watchlistCreateParams.email)) &&
        (this.colour == null ? watchlistCreateParams.colour == null : this.colour.equals(watchlistCreateParams.colour));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.aliases == null ? 0: this.aliases.hashCode());
    result = 31 * result + (this.notes == null ? 0: this.notes.hashCode());
    result = 31 * result + (this.lastName == null ? 0: this.lastName.hashCode());
    result = 31 * result + (this.firstName == null ? 0: this.firstName.hashCode());
    result = 31 * result + (this.email == null ? 0: this.email.hashCode());
    result = 31 * result + (this.colour == null ? 0: this.colour.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class WatchlistCreateParams {\n");
    
    sb.append("  aliases: ").append(aliases).append("\n");
    sb.append("  notes: ").append(notes).append("\n");
    sb.append("  lastName: ").append(lastName).append("\n");
    sb.append("  firstName: ").append(firstName).append("\n");
    sb.append("  email: ").append(email).append("\n");
    sb.append("  colour: ").append(colour).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

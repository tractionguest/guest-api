/**
 * Traction Guest API
 * The leader in enterprise visitor management, empowers businesses across five continents and dozens of industries to keep people safe while creating connection in the contactless world.
 *
 * The version of the OpenAPI document: 0.11.8
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
 * 
 **/
@ApiModel(description = "")
public class InternalWatchlistResult {
  
  @SerializedName("id")
  private Integer id = null;
  @SerializedName("email")
  private String email = null;
  @SerializedName("colour")
  private String colour = null;
  @SerializedName("last_name")
  private String lastName = null;
  @SerializedName("first_name")
  private String firstName = null;

  /**
   * 
   **/
  @ApiModelProperty(value = "")
  public Integer getId() {
    return id;
  }
  public void setId(Integer id) {
    this.id = id;
  }

  /**
   * 
   **/
  @ApiModelProperty(value = "")
  public String getEmail() {
    return email;
  }
  public void setEmail(String email) {
    this.email = email;
  }

  /**
   * 
   **/
  @ApiModelProperty(required = true, value = "")
  public String getColour() {
    return colour;
  }
  public void setColour(String colour) {
    this.colour = colour;
  }

  /**
   * 
   **/
  @ApiModelProperty(value = "")
  public String getLastName() {
    return lastName;
  }
  public void setLastName(String lastName) {
    this.lastName = lastName;
  }

  /**
   * 
   **/
  @ApiModelProperty(value = "")
  public String getFirstName() {
    return firstName;
  }
  public void setFirstName(String firstName) {
    this.firstName = firstName;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    InternalWatchlistResult internalWatchlistResult = (InternalWatchlistResult) o;
    return (this.id == null ? internalWatchlistResult.id == null : this.id.equals(internalWatchlistResult.id)) &&
        (this.email == null ? internalWatchlistResult.email == null : this.email.equals(internalWatchlistResult.email)) &&
        (this.colour == null ? internalWatchlistResult.colour == null : this.colour.equals(internalWatchlistResult.colour)) &&
        (this.lastName == null ? internalWatchlistResult.lastName == null : this.lastName.equals(internalWatchlistResult.lastName)) &&
        (this.firstName == null ? internalWatchlistResult.firstName == null : this.firstName.equals(internalWatchlistResult.firstName));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.id == null ? 0: this.id.hashCode());
    result = 31 * result + (this.email == null ? 0: this.email.hashCode());
    result = 31 * result + (this.colour == null ? 0: this.colour.hashCode());
    result = 31 * result + (this.lastName == null ? 0: this.lastName.hashCode());
    result = 31 * result + (this.firstName == null ? 0: this.firstName.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class InternalWatchlistResult {\n");
    
    sb.append("  id: ").append(id).append("\n");
    sb.append("  email: ").append(email).append("\n");
    sb.append("  colour: ").append(colour).append("\n");
    sb.append("  lastName: ").append(lastName).append("\n");
    sb.append("  firstName: ").append(firstName).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

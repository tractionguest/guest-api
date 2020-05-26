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

import java.util.*;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

/**
 * The root of the Watchlist type&#39;s schema.
 **/
@ApiModel(description = "The root of the Watchlist type's schema.")
public class Watchlist {
  
  @SerializedName("id")
  private Integer id = null;
  @SerializedName("aliases")
  private List<String> aliases = null;
  @SerializedName("photo")
  private String photo = null;
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
  @ApiModelProperty(required = true, value = "")
  public Integer getId() {
    return id;
  }
  public void setId(Integer id) {
    this.id = id;
  }

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
  public String getPhoto() {
    return photo;
  }
  public void setPhoto(String photo) {
    this.photo = photo;
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
    Watchlist watchlist = (Watchlist) o;
    return (this.id == null ? watchlist.id == null : this.id.equals(watchlist.id)) &&
        (this.aliases == null ? watchlist.aliases == null : this.aliases.equals(watchlist.aliases)) &&
        (this.photo == null ? watchlist.photo == null : this.photo.equals(watchlist.photo)) &&
        (this.notes == null ? watchlist.notes == null : this.notes.equals(watchlist.notes)) &&
        (this.lastName == null ? watchlist.lastName == null : this.lastName.equals(watchlist.lastName)) &&
        (this.firstName == null ? watchlist.firstName == null : this.firstName.equals(watchlist.firstName)) &&
        (this.email == null ? watchlist.email == null : this.email.equals(watchlist.email)) &&
        (this.colour == null ? watchlist.colour == null : this.colour.equals(watchlist.colour));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.id == null ? 0: this.id.hashCode());
    result = 31 * result + (this.aliases == null ? 0: this.aliases.hashCode());
    result = 31 * result + (this.photo == null ? 0: this.photo.hashCode());
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
    sb.append("class Watchlist {\n");
    
    sb.append("  id: ").append(id).append("\n");
    sb.append("  aliases: ").append(aliases).append("\n");
    sb.append("  photo: ").append(photo).append("\n");
    sb.append("  notes: ").append(notes).append("\n");
    sb.append("  lastName: ").append(lastName).append("\n");
    sb.append("  firstName: ").append(firstName).append("\n");
    sb.append("  email: ").append(email).append("\n");
    sb.append("  colour: ").append(colour).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

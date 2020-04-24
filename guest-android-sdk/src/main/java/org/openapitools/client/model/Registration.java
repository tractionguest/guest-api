/**
 * Traction Guest API
 * A compelling story about a lone device, on a quest for its data.
 *
 * The version of the OpenAPI document: 0.11.1
 * Contact: bmckay@tractionguest.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

package org.openapitools.client.model;

import java.util.*;
import java.util.Date;
import org.openapitools.client.model.GuestResponse;
import org.openapitools.client.model.Invite;
import org.openapitools.client.model.Visitor;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

/**
 * The data of a Registration
 **/
@ApiModel(description = "The data of a Registration")
public class Registration {
  
  @SerializedName("id")
  private String id = null;
  @SerializedName("created_at")
  private Date createdAt = null;
  @SerializedName("name")
  private String name = null;
  @SerializedName("email")
  private String email = null;
  @SerializedName("company")
  private String company = null;
  @SerializedName("photo_url")
  private String photoUrl = null;
  @SerializedName("invite")
  private Invite invite = null;
  @SerializedName("visitor")
  private Visitor visitor = null;
  @SerializedName("guest_responses")
  private List<GuestResponse> guestResponses = null;

  /**
   * Registration unique identifier
   **/
  @ApiModelProperty(value = "Registration unique identifier")
  public String getId() {
    return id;
  }
  public void setId(String id) {
    this.id = id;
  }

  /**
   * Datetime when registration was created
   **/
  @ApiModelProperty(value = "Datetime when registration was created")
  public Date getCreatedAt() {
    return createdAt;
  }
  public void setCreatedAt(Date createdAt) {
    this.createdAt = createdAt;
  }

  /**
   * Guest's name
   **/
  @ApiModelProperty(value = "Guest's name")
  public String getName() {
    return name;
  }
  public void setName(String name) {
    this.name = name;
  }

  /**
   * E-mail
   **/
  @ApiModelProperty(value = "E-mail")
  public String getEmail() {
    return email;
  }
  public void setEmail(String email) {
    this.email = email;
  }

  /**
   * Company's name
   **/
  @ApiModelProperty(value = "Company's name")
  public String getCompany() {
    return company;
  }
  public void setCompany(String company) {
    this.company = company;
  }

  /**
   * URL of the uploaded photo
   **/
  @ApiModelProperty(value = "URL of the uploaded photo")
  public String getPhotoUrl() {
    return photoUrl;
  }
  public void setPhotoUrl(String photoUrl) {
    this.photoUrl = photoUrl;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public Invite getInvite() {
    return invite;
  }
  public void setInvite(Invite invite) {
    this.invite = invite;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public Visitor getVisitor() {
    return visitor;
  }
  public void setVisitor(Visitor visitor) {
    this.visitor = visitor;
  }

  /**
   * Response given by the guest
   **/
  @ApiModelProperty(value = "Response given by the guest")
  public List<GuestResponse> getGuestResponses() {
    return guestResponses;
  }
  public void setGuestResponses(List<GuestResponse> guestResponses) {
    this.guestResponses = guestResponses;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    Registration registration = (Registration) o;
    return (this.id == null ? registration.id == null : this.id.equals(registration.id)) &&
        (this.createdAt == null ? registration.createdAt == null : this.createdAt.equals(registration.createdAt)) &&
        (this.name == null ? registration.name == null : this.name.equals(registration.name)) &&
        (this.email == null ? registration.email == null : this.email.equals(registration.email)) &&
        (this.company == null ? registration.company == null : this.company.equals(registration.company)) &&
        (this.photoUrl == null ? registration.photoUrl == null : this.photoUrl.equals(registration.photoUrl)) &&
        (this.invite == null ? registration.invite == null : this.invite.equals(registration.invite)) &&
        (this.visitor == null ? registration.visitor == null : this.visitor.equals(registration.visitor)) &&
        (this.guestResponses == null ? registration.guestResponses == null : this.guestResponses.equals(registration.guestResponses));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.id == null ? 0: this.id.hashCode());
    result = 31 * result + (this.createdAt == null ? 0: this.createdAt.hashCode());
    result = 31 * result + (this.name == null ? 0: this.name.hashCode());
    result = 31 * result + (this.email == null ? 0: this.email.hashCode());
    result = 31 * result + (this.company == null ? 0: this.company.hashCode());
    result = 31 * result + (this.photoUrl == null ? 0: this.photoUrl.hashCode());
    result = 31 * result + (this.invite == null ? 0: this.invite.hashCode());
    result = 31 * result + (this.visitor == null ? 0: this.visitor.hashCode());
    result = 31 * result + (this.guestResponses == null ? 0: this.guestResponses.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class Registration {\n");
    
    sb.append("  id: ").append(id).append("\n");
    sb.append("  createdAt: ").append(createdAt).append("\n");
    sb.append("  name: ").append(name).append("\n");
    sb.append("  email: ").append(email).append("\n");
    sb.append("  company: ").append(company).append("\n");
    sb.append("  photoUrl: ").append(photoUrl).append("\n");
    sb.append("  invite: ").append(invite).append("\n");
    sb.append("  visitor: ").append(visitor).append("\n");
    sb.append("  guestResponses: ").append(guestResponses).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

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
import java.util.Date;
import org.openapitools.client.model.GroupVisit;
import org.openapitools.client.model.Host;
import org.openapitools.client.model.InviteWatchlist;
import org.openapitools.client.model.Location;
import org.openapitools.client.model.Registration;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

/**
 * The root of the Invite type&#39;s schema.
 **/
@ApiModel(description = "The root of the Invite type's schema.")
public class Invite {
  
  @SerializedName("id")
  private Integer id = null;
  @SerializedName("registration")
  private Registration registration = null;
  @SerializedName("mobile_number")
  private String mobileNumber = null;
  @SerializedName("email")
  private String email = null;
  @SerializedName("end_date")
  private Date endDate = null;
  @SerializedName("invite_watchlist")
  private InviteWatchlist inviteWatchlist = null;
  @SerializedName("hosts")
  private List<Host> hosts = null;
  public enum WatchlistColourEnum {
     RED,  GREEN,  YELLOW,  ORANGE, 
  };
  @SerializedName("watchlist_colour")
  private WatchlistColourEnum watchlistColour = null;
  @SerializedName("location")
  private Location location = null;
  @SerializedName("start_date")
  private Date startDate = null;
  @SerializedName("last_name")
  private String lastName = null;
  @SerializedName("first_name")
  private String firstName = null;
  @SerializedName("group_visit")
  private GroupVisit groupVisit = null;

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
  public Registration getRegistration() {
    return registration;
  }
  public void setRegistration(Registration registration) {
    this.registration = registration;
  }

  /**
   * 
   **/
  @ApiModelProperty(value = "")
  public String getMobileNumber() {
    return mobileNumber;
  }
  public void setMobileNumber(String mobileNumber) {
    this.mobileNumber = mobileNumber;
  }

  /**
   * 
   **/
  @ApiModelProperty(required = true, value = "")
  public String getEmail() {
    return email;
  }
  public void setEmail(String email) {
    this.email = email;
  }

  /**
   * 
   **/
  @ApiModelProperty(value = "")
  public Date getEndDate() {
    return endDate;
  }
  public void setEndDate(Date endDate) {
    this.endDate = endDate;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public InviteWatchlist getInviteWatchlist() {
    return inviteWatchlist;
  }
  public void setInviteWatchlist(InviteWatchlist inviteWatchlist) {
    this.inviteWatchlist = inviteWatchlist;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public List<Host> getHosts() {
    return hosts;
  }
  public void setHosts(List<Host> hosts) {
    this.hosts = hosts;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public WatchlistColourEnum getWatchlistColour() {
    return watchlistColour;
  }
  public void setWatchlistColour(WatchlistColourEnum watchlistColour) {
    this.watchlistColour = watchlistColour;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public Location getLocation() {
    return location;
  }
  public void setLocation(Location location) {
    this.location = location;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public Date getStartDate() {
    return startDate;
  }
  public void setStartDate(Date startDate) {
    this.startDate = startDate;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getLastName() {
    return lastName;
  }
  public void setLastName(String lastName) {
    this.lastName = lastName;
  }

  /**
   **/
  @ApiModelProperty(required = true, value = "")
  public String getFirstName() {
    return firstName;
  }
  public void setFirstName(String firstName) {
    this.firstName = firstName;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public GroupVisit getGroupVisit() {
    return groupVisit;
  }
  public void setGroupVisit(GroupVisit groupVisit) {
    this.groupVisit = groupVisit;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    Invite invite = (Invite) o;
    return (this.id == null ? invite.id == null : this.id.equals(invite.id)) &&
        (this.registration == null ? invite.registration == null : this.registration.equals(invite.registration)) &&
        (this.mobileNumber == null ? invite.mobileNumber == null : this.mobileNumber.equals(invite.mobileNumber)) &&
        (this.email == null ? invite.email == null : this.email.equals(invite.email)) &&
        (this.endDate == null ? invite.endDate == null : this.endDate.equals(invite.endDate)) &&
        (this.inviteWatchlist == null ? invite.inviteWatchlist == null : this.inviteWatchlist.equals(invite.inviteWatchlist)) &&
        (this.hosts == null ? invite.hosts == null : this.hosts.equals(invite.hosts)) &&
        (this.watchlistColour == null ? invite.watchlistColour == null : this.watchlistColour.equals(invite.watchlistColour)) &&
        (this.location == null ? invite.location == null : this.location.equals(invite.location)) &&
        (this.startDate == null ? invite.startDate == null : this.startDate.equals(invite.startDate)) &&
        (this.lastName == null ? invite.lastName == null : this.lastName.equals(invite.lastName)) &&
        (this.firstName == null ? invite.firstName == null : this.firstName.equals(invite.firstName)) &&
        (this.groupVisit == null ? invite.groupVisit == null : this.groupVisit.equals(invite.groupVisit));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.id == null ? 0: this.id.hashCode());
    result = 31 * result + (this.registration == null ? 0: this.registration.hashCode());
    result = 31 * result + (this.mobileNumber == null ? 0: this.mobileNumber.hashCode());
    result = 31 * result + (this.email == null ? 0: this.email.hashCode());
    result = 31 * result + (this.endDate == null ? 0: this.endDate.hashCode());
    result = 31 * result + (this.inviteWatchlist == null ? 0: this.inviteWatchlist.hashCode());
    result = 31 * result + (this.hosts == null ? 0: this.hosts.hashCode());
    result = 31 * result + (this.watchlistColour == null ? 0: this.watchlistColour.hashCode());
    result = 31 * result + (this.location == null ? 0: this.location.hashCode());
    result = 31 * result + (this.startDate == null ? 0: this.startDate.hashCode());
    result = 31 * result + (this.lastName == null ? 0: this.lastName.hashCode());
    result = 31 * result + (this.firstName == null ? 0: this.firstName.hashCode());
    result = 31 * result + (this.groupVisit == null ? 0: this.groupVisit.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class Invite {\n");
    
    sb.append("  id: ").append(id).append("\n");
    sb.append("  registration: ").append(registration).append("\n");
    sb.append("  mobileNumber: ").append(mobileNumber).append("\n");
    sb.append("  email: ").append(email).append("\n");
    sb.append("  endDate: ").append(endDate).append("\n");
    sb.append("  inviteWatchlist: ").append(inviteWatchlist).append("\n");
    sb.append("  hosts: ").append(hosts).append("\n");
    sb.append("  watchlistColour: ").append(watchlistColour).append("\n");
    sb.append("  location: ").append(location).append("\n");
    sb.append("  startDate: ").append(startDate).append("\n");
    sb.append("  lastName: ").append(lastName).append("\n");
    sb.append("  firstName: ").append(firstName).append("\n");
    sb.append("  groupVisit: ").append(groupVisit).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

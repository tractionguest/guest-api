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
import org.openapitools.client.model.PermissionGroup;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

/**
 * The root of the User type&#39;s schema.
 **/
@ApiModel(description = "The root of the User type's schema.")
public class User {
  
  @SerializedName("id")
  private Integer id = null;
  @SerializedName("mobile_access_enabled")
  private Boolean mobileAccessEnabled = null;
  @SerializedName("permission_groups")
  private List<PermissionGroup> permissionGroups = null;
  @SerializedName("email")
  private String email = null;
  @SerializedName("last_name")
  private String lastName = null;
  @SerializedName("first_name")
  private String firstName = null;
  @SerializedName("registration_portal_enabled")
  private Boolean registrationPortalEnabled = null;

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
   * Identifies if user has access to mobile app features.
   **/
  @ApiModelProperty(required = true, value = "Identifies if user has access to mobile app features.")
  public Boolean getMobileAccessEnabled() {
    return mobileAccessEnabled;
  }
  public void setMobileAccessEnabled(Boolean mobileAccessEnabled) {
    this.mobileAccessEnabled = mobileAccessEnabled;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public List<PermissionGroup> getPermissionGroups() {
    return permissionGroups;
  }
  public void setPermissionGroups(List<PermissionGroup> permissionGroups) {
    this.permissionGroups = permissionGroups;
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
  public String getLastName() {
    return lastName;
  }
  public void setLastName(String lastName) {
    this.lastName = lastName;
  }

  /**
   * Determines if the registration portal has been enabled for this account
   **/
  @ApiModelProperty(value = "Determines if the registration portal has been enabled for this account")
  public String getFirstName() {
    return firstName;
  }
  public void setFirstName(String firstName) {
    this.firstName = firstName;
  }

  /**
   * Determines if the registration portal has been enabled for this account
   **/
  @ApiModelProperty(required = true, value = "Determines if the registration portal has been enabled for this account")
  public Boolean getRegistrationPortalEnabled() {
    return registrationPortalEnabled;
  }
  public void setRegistrationPortalEnabled(Boolean registrationPortalEnabled) {
    this.registrationPortalEnabled = registrationPortalEnabled;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    User user = (User) o;
    return (this.id == null ? user.id == null : this.id.equals(user.id)) &&
        (this.mobileAccessEnabled == null ? user.mobileAccessEnabled == null : this.mobileAccessEnabled.equals(user.mobileAccessEnabled)) &&
        (this.permissionGroups == null ? user.permissionGroups == null : this.permissionGroups.equals(user.permissionGroups)) &&
        (this.email == null ? user.email == null : this.email.equals(user.email)) &&
        (this.lastName == null ? user.lastName == null : this.lastName.equals(user.lastName)) &&
        (this.firstName == null ? user.firstName == null : this.firstName.equals(user.firstName)) &&
        (this.registrationPortalEnabled == null ? user.registrationPortalEnabled == null : this.registrationPortalEnabled.equals(user.registrationPortalEnabled));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.id == null ? 0: this.id.hashCode());
    result = 31 * result + (this.mobileAccessEnabled == null ? 0: this.mobileAccessEnabled.hashCode());
    result = 31 * result + (this.permissionGroups == null ? 0: this.permissionGroups.hashCode());
    result = 31 * result + (this.email == null ? 0: this.email.hashCode());
    result = 31 * result + (this.lastName == null ? 0: this.lastName.hashCode());
    result = 31 * result + (this.firstName == null ? 0: this.firstName.hashCode());
    result = 31 * result + (this.registrationPortalEnabled == null ? 0: this.registrationPortalEnabled.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class User {\n");
    
    sb.append("  id: ").append(id).append("\n");
    sb.append("  mobileAccessEnabled: ").append(mobileAccessEnabled).append("\n");
    sb.append("  permissionGroups: ").append(permissionGroups).append("\n");
    sb.append("  email: ").append(email).append("\n");
    sb.append("  lastName: ").append(lastName).append("\n");
    sb.append("  firstName: ").append(firstName).append("\n");
    sb.append("  registrationPortalEnabled: ").append(registrationPortalEnabled).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

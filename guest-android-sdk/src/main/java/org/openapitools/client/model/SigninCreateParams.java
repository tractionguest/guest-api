/**
 * Traction Guest API
 * The Traction Guest API is currently in **closed beta**. We're still building, testing, and fixing bugs.  If you're interested in helping us get to version 1.0.0, contact your CS team representative. Only paid accounts are elligible.  # Slack  Do you have Slack? Want faster answers to Traction Guest API questions?  Ask to be added to the Traction Guest API Slack channel!  Talk to your CS team representative, or send an email to the API support email above, and we'll add you.  # Versioning  This API follows [semantic versioning](https://semver.org/), which follows the `Major`.`Minor`.`Patch` format. In short:  * The `Major` number increments when potentially incompatible changes are made. * The `Minor` number increments when backwards-compatible additions are made. * The `Patch` number increments when backwards-compatible bug-fixes are made.  So, once the API is out of closed beta, and has reached version 1.0.0, some things may change.  **However**, the developers at Traction Guest strive to keep things running smoothly for our clients. We plan to **deprecate and warn** before making any potentially breaking changes; you may receive messages that follow the format \"this is deprecated, and will be removed in version X.X.X, which is scheduled for release on or after 20XX-01-01.\" Please note that the deprecation message format and content may change.  At this time, we are not planning to make older or 'legacy' versions of the API available, going forward.  # Getting Started  Would you like your team to be a part of closed beta testing? Talk to your CS team representative. We'll walk you through the process of enabling API access and provisioning your account. 
 *
 * The version of the OpenAPI document: 0.13.0
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
 * 
 **/
@ApiModel(description = "")
public class SigninCreateParams {
  
  @SerializedName("registration_id")
  private String registrationId = null;
  @SerializedName("email")
  private String email = null;
  @SerializedName("company")
  private String company = null;
  @SerializedName("last_name")
  private String lastName = null;
  @SerializedName("first_name")
  private String firstName = null;
  @SerializedName("sms_message")
  private String smsMessage = null;
  @SerializedName("send_notifications")
  private Boolean sendNotifications = null;
  @SerializedName("location_id")
  private Integer locationId = null;
  @SerializedName("host_ids")
  private List<Integer> hostIds = null;
  @SerializedName("host_email_template_id")
  private Integer hostEmailTemplateId = null;
  @SerializedName("guest_email_template_id")
  private Integer guestEmailTemplateId = null;

  /**
   * UUID of a Registration
   **/
  @ApiModelProperty(value = "UUID of a Registration")
  public String getRegistrationId() {
    return registrationId;
  }
  public void setRegistrationId(String registrationId) {
    this.registrationId = registrationId;
  }

  /**
   * E-mail, ignored if `registration_id` is included
   **/
  @ApiModelProperty(value = "E-mail, ignored if `registration_id` is included")
  public String getEmail() {
    return email;
  }
  public void setEmail(String email) {
    this.email = email;
  }

  /**
   * Company name, ignored if `registration_id` is included
   **/
  @ApiModelProperty(value = "Company name, ignored if `registration_id` is included")
  public String getCompany() {
    return company;
  }
  public void setCompany(String company) {
    this.company = company;
  }

  /**
   * Last name, ignored if `registration_id` is included
   **/
  @ApiModelProperty(value = "Last name, ignored if `registration_id` is included")
  public String getLastName() {
    return lastName;
  }
  public void setLastName(String lastName) {
    this.lastName = lastName;
  }

  /**
   * First name, ignored if `registration_id` is included
   **/
  @ApiModelProperty(value = "First name, ignored if `registration_id` is included")
  public String getFirstName() {
    return firstName;
  }
  public void setFirstName(String firstName) {
    this.firstName = firstName;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getSmsMessage() {
    return smsMessage;
  }
  public void setSmsMessage(String smsMessage) {
    this.smsMessage = smsMessage;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public Boolean getSendNotifications() {
    return sendNotifications;
  }
  public void setSendNotifications(Boolean sendNotifications) {
    this.sendNotifications = sendNotifications;
  }

  /**
   * ID of the Location where the Signin happened, ignored if `registration_id` is included
   **/
  @ApiModelProperty(value = "ID of the Location where the Signin happened, ignored if `registration_id` is included")
  public Integer getLocationId() {
    return locationId;
  }
  public void setLocationId(Integer locationId) {
    this.locationId = locationId;
  }

  /**
   * Array of Host ids, ignored if `registration_id` is included
   **/
  @ApiModelProperty(value = "Array of Host ids, ignored if `registration_id` is included")
  public List<Integer> getHostIds() {
    return hostIds;
  }
  public void setHostIds(List<Integer> hostIds) {
    this.hostIds = hostIds;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public Integer getHostEmailTemplateId() {
    return hostEmailTemplateId;
  }
  public void setHostEmailTemplateId(Integer hostEmailTemplateId) {
    this.hostEmailTemplateId = hostEmailTemplateId;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public Integer getGuestEmailTemplateId() {
    return guestEmailTemplateId;
  }
  public void setGuestEmailTemplateId(Integer guestEmailTemplateId) {
    this.guestEmailTemplateId = guestEmailTemplateId;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    SigninCreateParams signinCreateParams = (SigninCreateParams) o;
    return (this.registrationId == null ? signinCreateParams.registrationId == null : this.registrationId.equals(signinCreateParams.registrationId)) &&
        (this.email == null ? signinCreateParams.email == null : this.email.equals(signinCreateParams.email)) &&
        (this.company == null ? signinCreateParams.company == null : this.company.equals(signinCreateParams.company)) &&
        (this.lastName == null ? signinCreateParams.lastName == null : this.lastName.equals(signinCreateParams.lastName)) &&
        (this.firstName == null ? signinCreateParams.firstName == null : this.firstName.equals(signinCreateParams.firstName)) &&
        (this.smsMessage == null ? signinCreateParams.smsMessage == null : this.smsMessage.equals(signinCreateParams.smsMessage)) &&
        (this.sendNotifications == null ? signinCreateParams.sendNotifications == null : this.sendNotifications.equals(signinCreateParams.sendNotifications)) &&
        (this.locationId == null ? signinCreateParams.locationId == null : this.locationId.equals(signinCreateParams.locationId)) &&
        (this.hostIds == null ? signinCreateParams.hostIds == null : this.hostIds.equals(signinCreateParams.hostIds)) &&
        (this.hostEmailTemplateId == null ? signinCreateParams.hostEmailTemplateId == null : this.hostEmailTemplateId.equals(signinCreateParams.hostEmailTemplateId)) &&
        (this.guestEmailTemplateId == null ? signinCreateParams.guestEmailTemplateId == null : this.guestEmailTemplateId.equals(signinCreateParams.guestEmailTemplateId));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.registrationId == null ? 0: this.registrationId.hashCode());
    result = 31 * result + (this.email == null ? 0: this.email.hashCode());
    result = 31 * result + (this.company == null ? 0: this.company.hashCode());
    result = 31 * result + (this.lastName == null ? 0: this.lastName.hashCode());
    result = 31 * result + (this.firstName == null ? 0: this.firstName.hashCode());
    result = 31 * result + (this.smsMessage == null ? 0: this.smsMessage.hashCode());
    result = 31 * result + (this.sendNotifications == null ? 0: this.sendNotifications.hashCode());
    result = 31 * result + (this.locationId == null ? 0: this.locationId.hashCode());
    result = 31 * result + (this.hostIds == null ? 0: this.hostIds.hashCode());
    result = 31 * result + (this.hostEmailTemplateId == null ? 0: this.hostEmailTemplateId.hashCode());
    result = 31 * result + (this.guestEmailTemplateId == null ? 0: this.guestEmailTemplateId.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class SigninCreateParams {\n");
    
    sb.append("  registrationId: ").append(registrationId).append("\n");
    sb.append("  email: ").append(email).append("\n");
    sb.append("  company: ").append(company).append("\n");
    sb.append("  lastName: ").append(lastName).append("\n");
    sb.append("  firstName: ").append(firstName).append("\n");
    sb.append("  smsMessage: ").append(smsMessage).append("\n");
    sb.append("  sendNotifications: ").append(sendNotifications).append("\n");
    sb.append("  locationId: ").append(locationId).append("\n");
    sb.append("  hostIds: ").append(hostIds).append("\n");
    sb.append("  hostEmailTemplateId: ").append(hostEmailTemplateId).append("\n");
    sb.append("  guestEmailTemplateId: ").append(guestEmailTemplateId).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

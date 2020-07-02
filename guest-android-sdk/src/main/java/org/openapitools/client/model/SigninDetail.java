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
import java.util.Date;
import org.openapitools.client.model.Host;
import org.openapitools.client.model.Registration;
import org.openapitools.client.model.SignableDocument;
import org.openapitools.client.model.SigninAcknowledgement;
import org.openapitools.client.model.SigninData;
import org.openapitools.client.model.SigninWatchlist;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

/**
 * The root of the Signin type&#39;s schema.
 **/
@ApiModel(description = "The root of the Signin type's schema.")
public class SigninDetail {
  
  @SerializedName("id")
  private Integer id = null;
  @SerializedName("documents")
  private List<SignableDocument> documents = null;
  @SerializedName("signin_watchlist")
  private SigninWatchlist signinWatchlist = null;
  @SerializedName("hosts")
  private List<Host> hosts = null;
  @SerializedName("signin_data")
  private List<SigninData> signinData = null;
  @SerializedName("signin_acknowledgement")
  private SigninAcknowledgement signinAcknowledgement = null;
  @SerializedName("note")
  private String note = null;
  @SerializedName("is_signed_out")
  private Boolean isSignedOut = null;
  @SerializedName("signin_timestamp")
  private Date signinTimestamp = null;
  @SerializedName("signin_photo_url")
  private String signinPhotoUrl = null;
  @SerializedName("signed_out_timestamp")
  private Date signedOutTimestamp = null;
  @SerializedName("mobile_number")
  private String mobileNumber = null;
  @SerializedName("location_name")
  private String locationName = null;
  @SerializedName("last_name")
  private String lastName = null;
  @SerializedName("is_acknowledged")
  private Boolean isAcknowledged = null;
  @SerializedName("is_accounted_for")
  private Boolean isAccountedFor = null;
  @SerializedName("first_name")
  private String firstName = null;
  @SerializedName("email")
  private String email = null;
  @SerializedName("company")
  private String company = null;
  @SerializedName("registration")
  private Registration registration = null;

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
  public List<SignableDocument> getDocuments() {
    return documents;
  }
  public void setDocuments(List<SignableDocument> documents) {
    this.documents = documents;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public SigninWatchlist getSigninWatchlist() {
    return signinWatchlist;
  }
  public void setSigninWatchlist(SigninWatchlist signinWatchlist) {
    this.signinWatchlist = signinWatchlist;
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
  public List<SigninData> getSigninData() {
    return signinData;
  }
  public void setSigninData(List<SigninData> signinData) {
    this.signinData = signinData;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public SigninAcknowledgement getSigninAcknowledgement() {
    return signinAcknowledgement;
  }
  public void setSigninAcknowledgement(SigninAcknowledgement signinAcknowledgement) {
    this.signinAcknowledgement = signinAcknowledgement;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getNote() {
    return note;
  }
  public void setNote(String note) {
    this.note = note;
  }

  /**
   * A one-way method of Signing out a Signin
   **/
  @ApiModelProperty(value = "A one-way method of Signing out a Signin")
  public Boolean getIsSignedOut() {
    return isSignedOut;
  }
  public void setIsSignedOut(Boolean isSignedOut) {
    this.isSignedOut = isSignedOut;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public Date getSigninTimestamp() {
    return signinTimestamp;
  }
  public void setSigninTimestamp(Date signinTimestamp) {
    this.signinTimestamp = signinTimestamp;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getSigninPhotoUrl() {
    return signinPhotoUrl;
  }
  public void setSigninPhotoUrl(String signinPhotoUrl) {
    this.signinPhotoUrl = signinPhotoUrl;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public Date getSignedOutTimestamp() {
    return signedOutTimestamp;
  }
  public void setSignedOutTimestamp(Date signedOutTimestamp) {
    this.signedOutTimestamp = signedOutTimestamp;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getMobileNumber() {
    return mobileNumber;
  }
  public void setMobileNumber(String mobileNumber) {
    this.mobileNumber = mobileNumber;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public String getLocationName() {
    return locationName;
  }
  public void setLocationName(String locationName) {
    this.locationName = locationName;
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
   * Whether this Signin has been acknowledged yet. Can also be used as a one-way method of setting the Signin as acknowledged.
   **/
  @ApiModelProperty(value = "Whether this Signin has been acknowledged yet. Can also be used as a one-way method of setting the Signin as acknowledged.")
  public Boolean getIsAcknowledged() {
    return isAcknowledged;
  }
  public void setIsAcknowledged(Boolean isAcknowledged) {
    this.isAcknowledged = isAcknowledged;
  }

  /**
   **/
  @ApiModelProperty(value = "")
  public Boolean getIsAccountedFor() {
    return isAccountedFor;
  }
  public void setIsAccountedFor(Boolean isAccountedFor) {
    this.isAccountedFor = isAccountedFor;
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
  public String getCompany() {
    return company;
  }
  public void setCompany(String company) {
    this.company = company;
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


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    SigninDetail signinDetail = (SigninDetail) o;
    return (this.id == null ? signinDetail.id == null : this.id.equals(signinDetail.id)) &&
        (this.documents == null ? signinDetail.documents == null : this.documents.equals(signinDetail.documents)) &&
        (this.signinWatchlist == null ? signinDetail.signinWatchlist == null : this.signinWatchlist.equals(signinDetail.signinWatchlist)) &&
        (this.hosts == null ? signinDetail.hosts == null : this.hosts.equals(signinDetail.hosts)) &&
        (this.signinData == null ? signinDetail.signinData == null : this.signinData.equals(signinDetail.signinData)) &&
        (this.signinAcknowledgement == null ? signinDetail.signinAcknowledgement == null : this.signinAcknowledgement.equals(signinDetail.signinAcknowledgement)) &&
        (this.note == null ? signinDetail.note == null : this.note.equals(signinDetail.note)) &&
        (this.isSignedOut == null ? signinDetail.isSignedOut == null : this.isSignedOut.equals(signinDetail.isSignedOut)) &&
        (this.signinTimestamp == null ? signinDetail.signinTimestamp == null : this.signinTimestamp.equals(signinDetail.signinTimestamp)) &&
        (this.signinPhotoUrl == null ? signinDetail.signinPhotoUrl == null : this.signinPhotoUrl.equals(signinDetail.signinPhotoUrl)) &&
        (this.signedOutTimestamp == null ? signinDetail.signedOutTimestamp == null : this.signedOutTimestamp.equals(signinDetail.signedOutTimestamp)) &&
        (this.mobileNumber == null ? signinDetail.mobileNumber == null : this.mobileNumber.equals(signinDetail.mobileNumber)) &&
        (this.locationName == null ? signinDetail.locationName == null : this.locationName.equals(signinDetail.locationName)) &&
        (this.lastName == null ? signinDetail.lastName == null : this.lastName.equals(signinDetail.lastName)) &&
        (this.isAcknowledged == null ? signinDetail.isAcknowledged == null : this.isAcknowledged.equals(signinDetail.isAcknowledged)) &&
        (this.isAccountedFor == null ? signinDetail.isAccountedFor == null : this.isAccountedFor.equals(signinDetail.isAccountedFor)) &&
        (this.firstName == null ? signinDetail.firstName == null : this.firstName.equals(signinDetail.firstName)) &&
        (this.email == null ? signinDetail.email == null : this.email.equals(signinDetail.email)) &&
        (this.company == null ? signinDetail.company == null : this.company.equals(signinDetail.company)) &&
        (this.registration == null ? signinDetail.registration == null : this.registration.equals(signinDetail.registration));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.id == null ? 0: this.id.hashCode());
    result = 31 * result + (this.documents == null ? 0: this.documents.hashCode());
    result = 31 * result + (this.signinWatchlist == null ? 0: this.signinWatchlist.hashCode());
    result = 31 * result + (this.hosts == null ? 0: this.hosts.hashCode());
    result = 31 * result + (this.signinData == null ? 0: this.signinData.hashCode());
    result = 31 * result + (this.signinAcknowledgement == null ? 0: this.signinAcknowledgement.hashCode());
    result = 31 * result + (this.note == null ? 0: this.note.hashCode());
    result = 31 * result + (this.isSignedOut == null ? 0: this.isSignedOut.hashCode());
    result = 31 * result + (this.signinTimestamp == null ? 0: this.signinTimestamp.hashCode());
    result = 31 * result + (this.signinPhotoUrl == null ? 0: this.signinPhotoUrl.hashCode());
    result = 31 * result + (this.signedOutTimestamp == null ? 0: this.signedOutTimestamp.hashCode());
    result = 31 * result + (this.mobileNumber == null ? 0: this.mobileNumber.hashCode());
    result = 31 * result + (this.locationName == null ? 0: this.locationName.hashCode());
    result = 31 * result + (this.lastName == null ? 0: this.lastName.hashCode());
    result = 31 * result + (this.isAcknowledged == null ? 0: this.isAcknowledged.hashCode());
    result = 31 * result + (this.isAccountedFor == null ? 0: this.isAccountedFor.hashCode());
    result = 31 * result + (this.firstName == null ? 0: this.firstName.hashCode());
    result = 31 * result + (this.email == null ? 0: this.email.hashCode());
    result = 31 * result + (this.company == null ? 0: this.company.hashCode());
    result = 31 * result + (this.registration == null ? 0: this.registration.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class SigninDetail {\n");
    
    sb.append("  id: ").append(id).append("\n");
    sb.append("  documents: ").append(documents).append("\n");
    sb.append("  signinWatchlist: ").append(signinWatchlist).append("\n");
    sb.append("  hosts: ").append(hosts).append("\n");
    sb.append("  signinData: ").append(signinData).append("\n");
    sb.append("  signinAcknowledgement: ").append(signinAcknowledgement).append("\n");
    sb.append("  note: ").append(note).append("\n");
    sb.append("  isSignedOut: ").append(isSignedOut).append("\n");
    sb.append("  signinTimestamp: ").append(signinTimestamp).append("\n");
    sb.append("  signinPhotoUrl: ").append(signinPhotoUrl).append("\n");
    sb.append("  signedOutTimestamp: ").append(signedOutTimestamp).append("\n");
    sb.append("  mobileNumber: ").append(mobileNumber).append("\n");
    sb.append("  locationName: ").append(locationName).append("\n");
    sb.append("  lastName: ").append(lastName).append("\n");
    sb.append("  isAcknowledged: ").append(isAcknowledged).append("\n");
    sb.append("  isAccountedFor: ").append(isAccountedFor).append("\n");
    sb.append("  firstName: ").append(firstName).append("\n");
    sb.append("  email: ").append(email).append("\n");
    sb.append("  company: ").append(company).append("\n");
    sb.append("  registration: ").append(registration).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

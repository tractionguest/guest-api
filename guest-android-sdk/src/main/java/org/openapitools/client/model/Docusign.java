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

import java.util.Date;
import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

/**
 * 
 **/
@ApiModel(description = "")
public class Docusign {
  
  @SerializedName("template_id")
  private String templateId = null;
  @SerializedName("integration")
  private String integration = null;
  @SerializedName("nda_status")
  private String ndaStatus = null;
  @SerializedName("nda_signed_date")
  private Date ndaSignedDate = null;
  @SerializedName("envelope_id")
  private String envelopeId = null;
  @SerializedName("sequence")
  private String sequence = null;
  @SerializedName("docusign_id")
  private String docusignId = null;
  @SerializedName("docusign_name")
  private String docusignName = null;
  @SerializedName("title")
  private String title = null;

  /**
   * 
   **/
  @ApiModelProperty(value = "")
  public String getTemplateId() {
    return templateId;
  }
  public void setTemplateId(String templateId) {
    this.templateId = templateId;
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
   * 
   **/
  @ApiModelProperty(value = "")
  public String getNdaStatus() {
    return ndaStatus;
  }
  public void setNdaStatus(String ndaStatus) {
    this.ndaStatus = ndaStatus;
  }

  /**
   * 
   **/
  @ApiModelProperty(value = "")
  public Date getNdaSignedDate() {
    return ndaSignedDate;
  }
  public void setNdaSignedDate(Date ndaSignedDate) {
    this.ndaSignedDate = ndaSignedDate;
  }

  /**
   * 
   **/
  @ApiModelProperty(value = "")
  public String getEnvelopeId() {
    return envelopeId;
  }
  public void setEnvelopeId(String envelopeId) {
    this.envelopeId = envelopeId;
  }

  /**
   * 
   **/
  @ApiModelProperty(value = "")
  public String getSequence() {
    return sequence;
  }
  public void setSequence(String sequence) {
    this.sequence = sequence;
  }

  /**
   * 
   **/
  @ApiModelProperty(value = "")
  public String getDocusignId() {
    return docusignId;
  }
  public void setDocusignId(String docusignId) {
    this.docusignId = docusignId;
  }

  /**
   * 
   **/
  @ApiModelProperty(value = "")
  public String getDocusignName() {
    return docusignName;
  }
  public void setDocusignName(String docusignName) {
    this.docusignName = docusignName;
  }

  /**
   * 
   **/
  @ApiModelProperty(value = "")
  public String getTitle() {
    return title;
  }
  public void setTitle(String title) {
    this.title = title;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    Docusign docusign = (Docusign) o;
    return (this.templateId == null ? docusign.templateId == null : this.templateId.equals(docusign.templateId)) &&
        (this.integration == null ? docusign.integration == null : this.integration.equals(docusign.integration)) &&
        (this.ndaStatus == null ? docusign.ndaStatus == null : this.ndaStatus.equals(docusign.ndaStatus)) &&
        (this.ndaSignedDate == null ? docusign.ndaSignedDate == null : this.ndaSignedDate.equals(docusign.ndaSignedDate)) &&
        (this.envelopeId == null ? docusign.envelopeId == null : this.envelopeId.equals(docusign.envelopeId)) &&
        (this.sequence == null ? docusign.sequence == null : this.sequence.equals(docusign.sequence)) &&
        (this.docusignId == null ? docusign.docusignId == null : this.docusignId.equals(docusign.docusignId)) &&
        (this.docusignName == null ? docusign.docusignName == null : this.docusignName.equals(docusign.docusignName)) &&
        (this.title == null ? docusign.title == null : this.title.equals(docusign.title));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.templateId == null ? 0: this.templateId.hashCode());
    result = 31 * result + (this.integration == null ? 0: this.integration.hashCode());
    result = 31 * result + (this.ndaStatus == null ? 0: this.ndaStatus.hashCode());
    result = 31 * result + (this.ndaSignedDate == null ? 0: this.ndaSignedDate.hashCode());
    result = 31 * result + (this.envelopeId == null ? 0: this.envelopeId.hashCode());
    result = 31 * result + (this.sequence == null ? 0: this.sequence.hashCode());
    result = 31 * result + (this.docusignId == null ? 0: this.docusignId.hashCode());
    result = 31 * result + (this.docusignName == null ? 0: this.docusignName.hashCode());
    result = 31 * result + (this.title == null ? 0: this.title.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class Docusign {\n");
    
    sb.append("  templateId: ").append(templateId).append("\n");
    sb.append("  integration: ").append(integration).append("\n");
    sb.append("  ndaStatus: ").append(ndaStatus).append("\n");
    sb.append("  ndaSignedDate: ").append(ndaSignedDate).append("\n");
    sb.append("  envelopeId: ").append(envelopeId).append("\n");
    sb.append("  sequence: ").append(sequence).append("\n");
    sb.append("  docusignId: ").append(docusignId).append("\n");
    sb.append("  docusignName: ").append(docusignName).append("\n");
    sb.append("  title: ").append(title).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}

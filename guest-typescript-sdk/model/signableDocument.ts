/**
 * Traction Guest API
 * A compelling story about a lone device, on a quest for its data.
 *
 * The version of the OpenAPI document: 0.9.32
 * Contact: bmckay@tractionguest.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */
import { DocusignGuest } from './docusign';
import { SimpleSignatureGuest } from './simpleSignature';


export interface SignableDocumentGuest { 
    docusigns?: Array<DocusignGuest>;
    simpleSignatures?: Array<SimpleSignatureGuest>;
}


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


/**
 * Visitor information
 */
export interface VisitorGuest { 
    /**
     * UUID
     */
    id?: string;
    active?: boolean;
    company?: string;
    createdVia?: string;
    email?: string;
    firstName?: string;
    lastName?: string;
    mobile?: string;
    note?: string;
    profilePicContentType?: string;
    profilePicFileName?: string;
    profilePicFileSize?: string;
    profilePicUpdatedAt?: string;
    watchlistLevel?: string;
    createdAt?: Date;
    updatedAt?: Date;
}


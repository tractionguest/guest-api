/**
 * Traction Guest API
 * A compelling story about a lone device, on a quest for its data.
 *
 * The version of the OpenAPI document: 0.11.0
 * Contact: bmckay@tractionguest.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


/**
 * A client host assigned to a Signin
 */
export interface HostGuest { 
    id: number;
    email?: string;
    firstName?: string;
    lastName?: string;
    profilePicUrl?: string;
    department?: string;
    mobileNumber?: string;
}


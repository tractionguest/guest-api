/**
 * Traction Guest API
 * The leader in enterprise visitor management, empowers businesses across five continents and dozens of industries to keep people safe while creating connection in the contactless world.
 *
 * The version of the OpenAPI document: 0.11.12
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
    /**
     * 
     */
    department?: string;
    mobileNumber?: string;
}


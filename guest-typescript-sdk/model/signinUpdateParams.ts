/**
 * Traction Guest API
 * The leader in enterprise visitor management, empowers businesses across five continents and dozens of industries to keep people safe while creating connection in the contactless world.
 *
 * The version of the OpenAPI document: 0.11.7
 * Contact: bmckay@tractionguest.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


export interface SigninUpdateParamsGuest { 
    /**
     * Used to sign out the `Signin`, can only be set to `true`.
     */
    isSignedOut?: boolean;
    /**
     * Used to acknowledge the `Signin`, can only be set to `true`.
     */
    isAcknowledged?: boolean;
    /**
     * Used when keeping track of people in emergency situations
     */
    isAccountedFor?: boolean;
}


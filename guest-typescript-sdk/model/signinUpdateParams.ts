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


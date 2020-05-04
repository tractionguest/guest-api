/**
 * Traction Guest API
 * The leader in enterprise visitor management, empowers businesses across five continents and dozens of industries to keep people safe while creating connection in the contactless world.
 *
 * The version of the OpenAPI document: 0.11.5
 * Contact: bmckay@tractionguest.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


/**
 * 
 */
export interface SigninCreateParamsGuest { 
    /**
     * UUID of a Registration
     */
    registrationId?: string;
    /**
     * E-mail, ignored if `registration_id` is included
     */
    email?: string;
    /**
     * Company name, ignored if `registration_id` is included
     */
    company?: string;
    /**
     * Last name, ignored if `registration_id` is included
     */
    lastName?: string;
    /**
     * First name, ignored if `registration_id` is included
     */
    firstName?: string;
    smsMessage?: string;
    sendNotifications?: boolean;
    /**
     * ID of the Location where the Signin happened, ignored if `registration_id` is included
     */
    locationId?: number;
    /**
     * Array of Host ids, ignored if `registration_id` is included
     */
    hostIds?: Array<number>;
    hostEmailTemplateId?: number;
    guestEmailTemplateId?: number;
}


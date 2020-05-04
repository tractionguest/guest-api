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
import { GuestAlertSigninSelectorsGuest } from './guestAlertSigninSelectors';


/**
 * 
 */
export interface GuestAlertCreateParamsGuest { 
    signinSelectors?: GuestAlertSigninSelectorsGuest;
    /**
     * Specify the broadcast channel, one of \'SMS\' and/or \'EMAIL\'
     */
    channels: Array<string>;
    /**
     * Plain text of the alert to be sent
     */
    message: string;
}


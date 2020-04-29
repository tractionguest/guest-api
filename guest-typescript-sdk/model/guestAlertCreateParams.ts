/**
 * Traction Guest API
 * A compelling story about a lone device, on a quest for its data.
 *
 * The version of the OpenAPI document: 0.11.4
 * Contact: bmckay@tractionguest.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */
import { GuestAlertSigninSelectorsGuest } from './guestAlertSigninSelectors';


export interface GuestAlertCreateParamsGuest { 
    /**
     * Plain text of the alert to be sent
     */
    message: string;
    /**
     * Specify the broadcast channel, one of \'SMS\' and/or \'EMAIL\'
     */
    channels: Array<string>;
    signinSelectors?: GuestAlertSigninSelectorsGuest;
}


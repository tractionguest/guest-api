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


export interface SigninCreateParamsGuest { 
    guestEmailTemplateId?: number;
    hostEmailTemplateId?: number;
    hostIds?: Array<number>;
    locationId: number;
    sendNotifications?: boolean;
    smsMessage?: string;
    firstName?: string;
    lastName?: string;
    company?: string;
    email?: string;
}

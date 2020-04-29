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
import { CustomFieldGuest } from './customField';
import { NotificationTriggerCreateParamsGuest } from './notificationTriggerCreateParams';


/**
 * The root of the InviteUpdateParams type\'s schema.
 */
export interface InviteUpdateParamsGuest { 
    company?: string;
    email?: string;
    endDate?: Date;
    lastName?: string;
    startDate?: Date;
    title?: string;
    hostIds?: Array<number>;
    customFields?: Array<CustomFieldGuest>;
    emailTemplateId?: number;
    firstName?: string;
    notificationTriggers?: Array<NotificationTriggerCreateParamsGuest>;
    onPremise?: boolean;
    /**
     * Used for transfering ownership of an `Invite` to another member of the Account
     */
    userId?: number;
    mobileNumber?: string;
}


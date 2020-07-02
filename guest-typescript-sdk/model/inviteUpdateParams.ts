/**
 * Traction Guest API
 * The leader in enterprise visitor management, empowers businesses across five continents and dozens of industries to keep people safe while creating connection in the contactless world.
 *
 * The version of the OpenAPI document: 0.11.10
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
    mobileNumber?: string;
    /**
     * Used for transfering ownership of an `Invite` to another member of the Account
     */
    userId?: number;
    onPremise?: boolean;
    notificationTriggers?: Array<NotificationTriggerCreateParamsGuest>;
    firstName?: string;
    emailTemplateId?: number;
    customFields?: Array<CustomFieldGuest>;
    hostIds?: Array<number>;
    title?: string;
    /**
     * 
     */
    startDate?: Date;
    lastName?: string;
    endDate?: Date;
    email?: string;
    company?: string;
}


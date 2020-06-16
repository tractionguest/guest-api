/**
 * Traction Guest API
 * The leader in enterprise visitor management, empowers businesses across five continents and dozens of industries to keep people safe while creating connection in the contactless world.
 *
 * The version of the OpenAPI document: 0.11.9
 * Contact: bmckay@tractionguest.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */
import { CustomFieldGuest } from './customField';
import { NotificationTriggerCreateParamsGuest } from './notificationTriggerCreateParams';


/**
 * The root of the InviteCreateParams type\'s schema.
 */
export interface InviteCreateParamsGuest { 
    mobileNumber?: string;
    notificationTriggers?: Array<NotificationTriggerCreateParamsGuest>;
    firstName: string;
    emailTemplateId?: number;
    customFields?: Array<CustomFieldGuest>;
    hostIds?: Array<number>;
    watchlistColour?: InviteCreateParamsGuest.WatchlistColourGuestEnum;
    title?: string;
    /**
     * The `start_date` is required for invitations to lobbies
     */
    startDate?: Date;
    lastName: string;
    endDate?: Date;
    email: string;
    company?: string;
    groupVisitId?: string;
}
export namespace InviteCreateParamsGuest {
    export type WatchlistColourGuestEnum = 'RED' | 'GREEN' | 'YELLOW' | 'ORANGE';
    export const WatchlistColourGuestEnum = {
        RED: 'RED' as WatchlistColourGuestEnum,
        GREEN: 'GREEN' as WatchlistColourGuestEnum,
        YELLOW: 'YELLOW' as WatchlistColourGuestEnum,
        ORANGE: 'ORANGE' as WatchlistColourGuestEnum
    };
}


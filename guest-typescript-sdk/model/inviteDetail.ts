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
import { CustomFieldGuest } from './customField';
import { EmailTemplateGuest } from './emailTemplate';
import { HostGuest } from './host';
import { InviteWatchlistGuest } from './inviteWatchlist';
import { LocationGuest } from './location';
import { NotificationTriggerGuest } from './notificationTrigger';


/**
 * The root of the InviteDetail type\'s schema.
 */
export interface InviteDetailGuest { 
    id: number;
    company?: string;
    createdAt?: Date;
    email: string;
    endDate?: Date;
    firstName: string;
    lastName: string;
    startDate?: Date;
    hosts?: Array<HostGuest>;
    location?: LocationGuest;
    watchlistColour?: InviteDetailGuest.WatchlistColourGuestEnum;
    customFields?: Array<CustomFieldGuest>;
    /**
     * List of scheduled notifications for an invite
     */
    notificationTriggers?: Array<NotificationTriggerGuest>;
    inviteWatchlist?: InviteWatchlistGuest;
    emailTemplate?: EmailTemplateGuest;
    /**
     * Phone number
     */
    mobileNumber?: string;
}
export namespace InviteDetailGuest {
    export type WatchlistColourGuestEnum = 'RED' | 'GREEN' | 'YELLOW' | 'ORANGE';
    export const WatchlistColourGuestEnum = {
        RED: 'RED' as WatchlistColourGuestEnum,
        GREEN: 'GREEN' as WatchlistColourGuestEnum,
        YELLOW: 'YELLOW' as WatchlistColourGuestEnum,
        ORANGE: 'ORANGE' as WatchlistColourGuestEnum
    };
}


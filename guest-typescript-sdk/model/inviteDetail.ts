/**
 * Traction Guest API
 * The leader in enterprise visitor management, empowers businesses across five continents and dozens of industries to keep people safe while creating connection in the contactless world.
 *
 * The version of the OpenAPI document: 0.11.12
 * Contact: bmckay@tractionguest.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */
import { CustomFieldGuest } from './customField';
import { EmailTemplateGuest } from './emailTemplate';
import { GroupVisitGuest } from './groupVisit';
import { HostGuest } from './host';
import { InviteWatchlistGuest } from './inviteWatchlist';
import { LocationGuest } from './location';
import { NotificationTriggerGuest } from './notificationTrigger';
import { RegistrationGuest } from './registration';


/**
 * The root of the InviteDetail type\'s schema.
 */
export interface InviteDetailGuest { 
    id: number;
    registration?: RegistrationGuest;
    /**
     * Phone number
     */
    mobileNumber?: string;
    emailTemplate?: EmailTemplateGuest;
    inviteWatchlist?: InviteWatchlistGuest;
    /**
     * List of scheduled notifications for an invite
     */
    notificationTriggers?: Array<NotificationTriggerGuest>;
    customFields?: Array<CustomFieldGuest>;
    watchlistColour?: InviteDetailGuest.WatchlistColourGuestEnum;
    location?: LocationGuest;
    hosts?: Array<HostGuest>;
    startDate?: Date;
    lastName: string;
    firstName: string;
    endDate?: Date;
    email: string;
    createdAt?: Date;
    company?: string;
    groupVisit?: GroupVisitGuest;
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


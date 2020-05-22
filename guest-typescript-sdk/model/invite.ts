/**
 * Traction Guest API
 * The leader in enterprise visitor management, empowers businesses across five continents and dozens of industries to keep people safe while creating connection in the contactless world.
 *
 * The version of the OpenAPI document: 0.11.7
 * Contact: bmckay@tractionguest.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */
import { GroupVisitGuest } from './groupVisit';
import { HostGuest } from './host';
import { InviteWatchlistGuest } from './inviteWatchlist';
import { LocationGuest } from './location';
import { RegistrationGuest } from './registration';


/**
 * The root of the Invite type\'s schema.
 */
export interface InviteGuest { 
    id: number;
    registration?: RegistrationGuest;
    /**
     * 
     */
    mobileNumber?: string;
    /**
     * 
     */
    email: string;
    /**
     * 
     */
    endDate?: Date;
    inviteWatchlist?: InviteWatchlistGuest;
    hosts?: Array<HostGuest>;
    watchlistColour?: InviteGuest.WatchlistColourGuestEnum;
    location?: LocationGuest;
    startDate?: Date;
    lastName: string;
    firstName: string;
    groupVisit?: GroupVisitGuest;
}
export namespace InviteGuest {
    export type WatchlistColourGuestEnum = 'RED' | 'GREEN' | 'YELLOW' | 'ORANGE';
    export const WatchlistColourGuestEnum = {
        RED: 'RED' as WatchlistColourGuestEnum,
        GREEN: 'GREEN' as WatchlistColourGuestEnum,
        YELLOW: 'YELLOW' as WatchlistColourGuestEnum,
        ORANGE: 'ORANGE' as WatchlistColourGuestEnum
    };
}


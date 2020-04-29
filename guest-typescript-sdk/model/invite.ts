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
import { HostGuest } from './host';
import { InviteWatchlistGuest } from './inviteWatchlist';
import { LocationGuest } from './location';
import { RegistrationGuest } from './registration';


/**
 * The root of the Invite type\'s schema.
 */
export interface InviteGuest { 
    id: number;
    firstName: string;
    lastName: string;
    startDate?: Date;
    location?: LocationGuest;
    watchlistColour?: InviteGuest.WatchlistColourGuestEnum;
    hosts?: Array<HostGuest>;
    inviteWatchlist?: InviteWatchlistGuest;
    endDate?: Date;
    email: string;
    mobileNumber?: string;
    registration?: RegistrationGuest;
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


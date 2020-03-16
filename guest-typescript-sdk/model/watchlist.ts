/**
 * Traction Guest API
 * A compelling story about a lone device, on a quest for its data.
 *
 * The version of the OpenAPI document: 0.10.0
 * Contact: bmckay@tractionguest.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


/**
 * The root of the Watchlist type\'s schema.
 */
export interface WatchlistGuest { 
    id: number;
    colour?: WatchlistGuest.ColourGuestEnum;
    email?: string;
    firstName?: string;
    lastName?: string;
    notes?: string;
    photo?: string;
    aliases?: Array<string>;
}
export namespace WatchlistGuest {
    export type ColourGuestEnum = 'RED' | 'YELLOW' | 'GREEN' | 'ORANGE';
    export const ColourGuestEnum = {
        RED: 'RED' as ColourGuestEnum,
        YELLOW: 'YELLOW' as ColourGuestEnum,
        GREEN: 'GREEN' as ColourGuestEnum,
        ORANGE: 'ORANGE' as ColourGuestEnum
    };
}


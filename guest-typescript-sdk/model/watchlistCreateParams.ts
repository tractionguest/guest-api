/**
 * Traction Guest API
 * A compelling story about a lone device, on a quest for its data.
 *
 * The version of the OpenAPI document: 0.11.3
 * Contact: bmckay@tractionguest.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


/**
 * Parameters required for updating or creating watchlist records
 */
export interface WatchlistCreateParamsGuest { 
    colour?: WatchlistCreateParamsGuest.ColourGuestEnum;
    email?: string;
    firstName?: string;
    lastName?: string;
    notes?: string;
    aliases?: Array<string>;
}
export namespace WatchlistCreateParamsGuest {
    export type ColourGuestEnum = 'RED' | 'YELLOW' | 'GREEN' | 'ORANGE';
    export const ColourGuestEnum = {
        RED: 'RED' as ColourGuestEnum,
        YELLOW: 'YELLOW' as ColourGuestEnum,
        GREEN: 'GREEN' as ColourGuestEnum,
        ORANGE: 'ORANGE' as ColourGuestEnum
    };
}


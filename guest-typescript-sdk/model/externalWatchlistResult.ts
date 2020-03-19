/**
 * Traction Guest API
 * A compelling story about a lone device, on a quest for its data.
 *
 * The version of the OpenAPI document: 0.10.3
 * Contact: bmckay@tractionguest.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */
import { WatchlistMatchGuest } from './watchlistMatch';
import { WatchlistSearchGuest } from './watchlistSearch';


export interface ExternalWatchlistResultGuest { 
    searchTerms?: WatchlistSearchGuest;
    integration?: string;
    colour?: ExternalWatchlistResultGuest.ColourGuestEnum;
    matches?: Array<WatchlistMatchGuest>;
}
export namespace ExternalWatchlistResultGuest {
    export type ColourGuestEnum = 'RED' | 'GREEN' | 'YELLOW' | 'ORANGE';
    export const ColourGuestEnum = {
        RED: 'RED' as ColourGuestEnum,
        GREEN: 'GREEN' as ColourGuestEnum,
        YELLOW: 'YELLOW' as ColourGuestEnum,
        ORANGE: 'ORANGE' as ColourGuestEnum
    };
}


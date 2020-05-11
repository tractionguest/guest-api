/**
 * Traction Guest API
 * The leader in enterprise visitor management, empowers businesses across five continents and dozens of industries to keep people safe while creating connection in the contactless world.
 *
 * The version of the OpenAPI document: 0.11.6
 * Contact: bmckay@tractionguest.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */
import { WatchlistMatchGuest } from './watchlistMatch';
import { WatchlistSearchGuest } from './watchlistSearch';


/**
 * 
 */
export interface ExternalWatchlistResultGuest { 
    matches?: Array<WatchlistMatchGuest>;
    /**
     * 
     */
    colour?: ExternalWatchlistResultGuest.ColourGuestEnum;
    /**
     * 
     */
    integration?: string;
    searchTerms?: WatchlistSearchGuest;
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


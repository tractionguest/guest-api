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
import { HostGuest } from './host';
import { SigninWatchlistGuest } from './signinWatchlist';


export interface SigninGuest { 
    id: number;
    /**
     * 
     */
    mobileNumber?: string;
    signinWatchlist?: SigninWatchlistGuest;
    hosts: Array<HostGuest>;
    signinTimestamp?: Date;
    signinPhotoUrl?: string;
    signedOutTimestamp?: Date;
    locationName?: string;
    lastName?: string;
    isAcknowledged?: boolean;
    isAccountedFor?: boolean;
    firstName?: string;
    email?: string;
    company?: string;
}


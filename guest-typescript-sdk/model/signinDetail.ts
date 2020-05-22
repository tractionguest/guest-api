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
import { HostGuest } from './host';
import { SignableDocumentGuest } from './signableDocument';
import { SigninAcknowledgementGuest } from './signinAcknowledgement';
import { SigninDataGuest } from './signinData';
import { SigninWatchlistGuest } from './signinWatchlist';


/**
 * The root of the Signin type\'s schema.
 */
export interface SigninDetailGuest { 
    id: number;
    documents?: Array<SignableDocumentGuest>;
    signinWatchlist?: SigninWatchlistGuest;
    hosts?: Array<HostGuest>;
    signinData?: Array<SigninDataGuest>;
    signinAcknowledgement?: SigninAcknowledgementGuest;
    note?: string;
    /**
     * A one-way method of Signing out a Signin
     */
    isSignedOut?: boolean;
    signinTimestamp?: Date;
    signinPhotoUrl?: string;
    signedOutTimestamp?: Date;
    mobileNumber?: string;
    locationName?: string;
    lastName?: string;
    /**
     * Whether this Signin has been acknowledged yet. Can also be used as a one-way method of setting the Signin as acknowledged.
     */
    isAcknowledged?: boolean;
    isAccountedFor?: boolean;
    firstName?: string;
    email?: string;
    company?: string;
}


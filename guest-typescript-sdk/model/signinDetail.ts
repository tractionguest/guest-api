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
    company?: string;
    email?: string;
    firstName?: string;
    isAccountedFor?: boolean;
    /**
     * Whether this Signin has been acknowledged yet. Can also be used as a one-way method of setting the Signin as acknowledged.
     */
    isAcknowledged?: boolean;
    lastName?: string;
    locationName?: string;
    mobileNumber?: string;
    signedOutTimestamp?: Date;
    signinPhotoUrl?: string;
    signinTimestamp?: Date;
    /**
     * A one-way method of Signing out a Signin
     */
    isSignedOut?: boolean;
    note?: string;
    signinAcknowledgement?: SigninAcknowledgementGuest;
    signinData?: Array<SigninDataGuest>;
    hosts?: Array<HostGuest>;
    signinWatchlist?: SigninWatchlistGuest;
    documents?: Array<SignableDocumentGuest>;
}


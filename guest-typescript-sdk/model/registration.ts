/**
 * Traction Guest API
 * A compelling story about a lone device, on a quest for its data.
 *
 * The version of the OpenAPI document: 0.11.1
 * Contact: bmckay@tractionguest.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */
import { GuestResponseGuest } from './guestResponse';
import { InviteGuest } from './invite';
import { VisitorGuest } from './visitor';


/**
 * The data of a Registration
 */
export interface RegistrationGuest { 
    /**
     * Registration unique identifier
     */
    id?: string;
    /**
     * Datetime when registration was created
     */
    createdAt?: Date;
    /**
     * Guest\'s name
     */
    name?: string;
    /**
     * E-mail
     */
    email?: string;
    /**
     * Company\'s name
     */
    company?: string;
    /**
     * URL of the uploaded photo
     */
    photoUrl?: string;
    invite?: InviteGuest;
    visitor?: VisitorGuest;
    /**
     * Response given by the guest
     */
    guestResponses?: Array<GuestResponseGuest>;
}


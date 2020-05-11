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
    visitor?: VisitorGuest;
    invite?: InviteGuest;
    /**
     * Response given by the guest
     */
    guestResponses?: Array<GuestResponseGuest>;
    /**
     * URL of the uploaded photo
     */
    photoUrl?: string;
    /**
     * Company\'s name
     */
    company?: string;
    /**
     * E-mail
     */
    email?: string;
    /**
     * Guest\'s name
     */
    name?: string;
    /**
     * Datetime when registration was created
     */
    createdAt?: Date;
}


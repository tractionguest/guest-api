/**
 * Traction Guest API
 * The leader in enterprise visitor management, empowers businesses across five continents and dozens of industries to keep people safe while creating connection in the contactless world.
 *
 * The version of the OpenAPI document: 0.11.12
 * Contact: bmckay@tractionguest.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */
import { HostGuest } from './host';
import { LocationGuest } from './location';


export interface GroupVisitGuest { 
    id?: number;
    location?: LocationGuest;
    hosts?: Array<HostGuest>;
    name?: string;
    startTime?: string;
    endTime?: string;
    createdAt?: string;
    updatedAt?: string;
}


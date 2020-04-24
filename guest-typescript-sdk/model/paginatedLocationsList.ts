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
import { LocationGuest } from './location';
import { PaginationGuest } from './pagination';


export interface PaginatedLocationsListGuest { 
    pagination: PaginationGuest;
    locations: Array<LocationGuest>;
}


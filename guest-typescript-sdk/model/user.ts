/**
 * Traction Guest API
 * A compelling story about a lone device, on a quest for its data.
 *
 * The version of the OpenAPI document: 0.11.2
 * Contact: bmckay@tractionguest.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */
import { PermissionGroupGuest } from './permissionGroup';


/**
 * The root of the User type\'s schema.
 */
export interface UserGuest { 
    id: number;
    firstName?: string;
    lastName?: string;
    email: string;
    permissionGroups?: Array<PermissionGroupGuest>;
    /**
     * Identifies if user has access to mobile app features.
     */
    mobileAccessEnabled: boolean;
}


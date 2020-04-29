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
import { AuditLogChangeGuest } from './auditLogChange';


/**
 * The root of the AuditLog type\'s schema.
 */
export interface AuditLogGuest { 
    id: number;
    auditableId?: number;
    auditableType?: string;
    userId?: number;
    username?: string;
    action?: string;
    auditedChanges?: Array<AuditLogChangeGuest>;
    version?: number;
    comment?: string;
    remoteAddress?: string;
    requestUuid?: string;
    createdAt?: string;
}


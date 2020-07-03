/**
 * Traction Guest API
 * The leader in enterprise visitor management, empowers businesses across five continents and dozens of industries to keep people safe while creating connection in the contactless world.
 *
 * The version of the OpenAPI document: 0.11.11
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
    /**
     * 
     */
    id: number;
    /**
     * 
     */
    createdAt?: string;
    /**
     * 
     */
    requestUuid?: string;
    /**
     * 
     */
    remoteAddress?: string;
    /**
     * 
     */
    comment?: string;
    /**
     * 
     */
    version?: number;
    auditedChanges?: Array<AuditLogChangeGuest>;
    /**
     * 
     */
    action?: string;
    /**
     * 
     */
    username?: string;
    /**
     * 
     */
    userId?: number;
    /**
     * 
     */
    auditableType?: string;
    /**
     * 
     */
    auditableId?: number;
}


/**
 * Traction Guest API
 * A compelling story about a lone device, on a quest for its data.
 *
 * The version of the OpenAPI document: 0.10.3
 * Contact: bmckay@tractionguest.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */
import { AuditLogGuest } from './auditLog';
import { PaginationGuest } from './pagination';


export interface PaginatedAuditLogsListGuest { 
    auditLogs: Array<AuditLogGuest>;
    pagination: PaginationGuest;
}

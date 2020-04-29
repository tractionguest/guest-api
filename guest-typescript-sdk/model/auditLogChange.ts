/**
 * Traction Guest API
 * A compelling story about a lone device, on a quest for its data.
 *
 * The version of the OpenAPI document: 0.11.4
 * Contact: bmckay@tractionguest.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


export interface AuditLogChangeGuest { 
    /**
     * What the field should be displayed/labeled as
     */
    fieldName?: string;
    /**
     * The value to be displayed for the field before changes
     */
    fieldValueBefore?: string;
    /**
     * The value to be displayed for the field after changes
     */
    fieldValueAfter?: string;
    /**
     * The format type of the field
     */
    format?: AuditLogChangeGuest.FormatGuestEnum;
}
export namespace AuditLogChangeGuest {
    export type FormatGuestEnum = 'string' | 'boolean' | 'integer' | 'json' | 'no_value';
    export const FormatGuestEnum = {
        String: 'string' as FormatGuestEnum,
        Boolean: 'boolean' as FormatGuestEnum,
        Integer: 'integer' as FormatGuestEnum,
        Json: 'json' as FormatGuestEnum,
        NoValue: 'no_value' as FormatGuestEnum
    };
}


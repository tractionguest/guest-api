/**
 * Traction Guest API
 * A compelling story about a lone device, on a quest for its data.
 *
 * The version of the OpenAPI document: 0.9.31
 * Contact: bmckay@tractionguest.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


/**
 * The root of the CustomField type\'s schema.
 */
export interface CustomFieldGuest { 
    /**
     * The format type of the field
     */
    format?: CustomFieldGuest.FormatGuestEnum;
    /**
     * What the field should be displayed/labeled as
     */
    fieldName: string;
    /**
     * The value to be displayed for the field
     */
    fieldValue: string;
}
export namespace CustomFieldGuest {
    export type FormatGuestEnum = 'string';
    export const FormatGuestEnum = {
        String: 'string' as FormatGuestEnum
    };
}


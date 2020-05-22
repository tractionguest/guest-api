/**
 * Traction Guest API
 * The leader in enterprise visitor management, empowers businesses across five continents and dozens of industries to keep people safe while creating connection in the contactless world.
 *
 * The version of the OpenAPI document: 0.11.7
 * Contact: bmckay@tractionguest.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


/**
 * The root of the NotificationTrigger type\'s schema.
 */
export interface NotificationTriggerCreateParamsGuest { 
    /**
     * Whether the offset should be calculated as `days` or `hours`
     */
    offsetUnit: NotificationTriggerCreateParamsGuest.OffsetUnitGuestEnum;
    /**
     * An array made of only `INVITEE`, `HOSTS, or `LEP` as possible string values
     */
    notificationGroups: Array<string>;
    emailTemplateId: number;
    /**
     * Whether the offset should be calculated from the start, or finish of the event
     */
    offsetOrigin: NotificationTriggerCreateParamsGuest.OffsetOriginGuestEnum;
    /**
     * The amount to offset the notification from the event
     */
    offsetAmount: number;
    /**
     * Whether the offset should be calculated for before, or after the event
     */
    offsetDirection: NotificationTriggerCreateParamsGuest.OffsetDirectionGuestEnum;
}
export namespace NotificationTriggerCreateParamsGuest {
    export type OffsetUnitGuestEnum = 'days' | 'hours';
    export const OffsetUnitGuestEnum = {
        Days: 'days' as OffsetUnitGuestEnum,
        Hours: 'hours' as OffsetUnitGuestEnum
    };
    export type OffsetOriginGuestEnum = 'START' | 'END';
    export const OffsetOriginGuestEnum = {
        START: 'START' as OffsetOriginGuestEnum,
        END: 'END' as OffsetOriginGuestEnum
    };
    export type OffsetDirectionGuestEnum = 'BEFORE' | 'AFTER';
    export const OffsetDirectionGuestEnum = {
        BEFORE: 'BEFORE' as OffsetDirectionGuestEnum,
        AFTER: 'AFTER' as OffsetDirectionGuestEnum
    };
}


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
 * 
 */
export interface GuestAlertDetailGuest { 
    /**
     * pending, success, partial success, or failure 
     */
    deliveryStatus: GuestAlertDetailGuest.DeliveryStatusGuestEnum;
    /**
     * Count of pending messages 
     */
    pendingCount: number;
    /**
     * Count of successfully sent messages 
     */
    sentCount: number;
    /**
     * Count of messages that failed to be sent
     */
    failedCount: number;
    /**
     * 
     */
    message: string;
    /**
     * The uuid of the guest_alert object
     */
    uuid: string;
    /**
     * Channel used to send the message
     */
    channels: Array<string>;
}
export namespace GuestAlertDetailGuest {
    export type DeliveryStatusGuestEnum = 'pending' | 'success' | 'partial_success' | 'failure';
    export const DeliveryStatusGuestEnum = {
        Pending: 'pending' as DeliveryStatusGuestEnum,
        Success: 'success' as DeliveryStatusGuestEnum,
        PartialSuccess: 'partial_success' as DeliveryStatusGuestEnum,
        Failure: 'failure' as DeliveryStatusGuestEnum
    };
}


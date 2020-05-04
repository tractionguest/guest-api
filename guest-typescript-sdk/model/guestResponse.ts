/**
 * Traction Guest API
 * The leader in enterprise visitor management, empowers businesses across five continents and dozens of industries to keep people safe while creating connection in the contactless world.
 *
 * The version of the OpenAPI document: 0.11.5
 * Contact: bmckay@tractionguest.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */
import { FlexFieldGuest } from './flexField';


/**
 * The data collected from the response on a Registration
 */
export interface GuestResponseGuest { 
    /**
     * UUID
     */
    id?: string;
    /**
     * Flex fields
     */
    customFields?: Array<FlexFieldGuest>;
    /**
     * Enum
     */
    pageType?: GuestResponseGuest.PageTypeGuestEnum;
    sequence?: number;
    /**
     * Page title
     */
    title?: string;
}
export namespace GuestResponseGuest {
    export type PageTypeGuestEnum = 'form_page' | 'video_page' | 'branch_page' | 'docusign_page' | 'guest_sign_page' | 'identity_page';
    export const PageTypeGuestEnum = {
        FormPage: 'form_page' as PageTypeGuestEnum,
        VideoPage: 'video_page' as PageTypeGuestEnum,
        BranchPage: 'branch_page' as PageTypeGuestEnum,
        DocusignPage: 'docusign_page' as PageTypeGuestEnum,
        GuestSignPage: 'guest_sign_page' as PageTypeGuestEnum,
        IdentityPage: 'identity_page' as PageTypeGuestEnum
    };
}


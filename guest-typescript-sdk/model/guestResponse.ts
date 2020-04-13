/**
 * Traction Guest API
 * A compelling story about a lone device, on a quest for its data.
 *
 * The version of the OpenAPI document: 0.11.0
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
     * Page title
     */
    title?: string;
    sequence?: number;
    /**
     * UUID
     */
    id?: string;
    /**
     * Enum
     */
    pageType?: GuestResponseGuest.PageTypeGuestEnum;
    /**
     * Flex fields
     */
    customFields?: Array<FlexFieldGuest>;
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

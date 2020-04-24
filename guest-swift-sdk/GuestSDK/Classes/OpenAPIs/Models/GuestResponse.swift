//
// GuestResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

/** The data collected from the response on a Registration */
public struct GuestResponse: Codable { 


    public enum PageType: String, Codable, CaseIterable {
        case formPage = "form_page"
        case videoPage = "video_page"
        case branchPage = "branch_page"
        case docusignPage = "docusign_page"
        case guestSignPage = "guest_sign_page"
        case identityPage = "identity_page"
    }
    /** Page title */
    public var title: String?
    public var sequence: Int?
    /** UUID */
    public var id: String?
    /** Enum */
    public var pageType: PageType?
    /** Flex fields */
    public var customFields: [FlexField]?

    public init(title: String?, sequence: Int?, id: String?, pageType: PageType?, customFields: [FlexField]?) {
        self.title = title
        self.sequence = sequence
        self.id = id
        self.pageType = pageType
        self.customFields = customFields
    }

    public enum CodingKeys: String, CodingKey, CaseIterable { 
        case title
        case sequence
        case id
        case pageType = "page_type"
        case customFields = "custom_fields"
    }

}

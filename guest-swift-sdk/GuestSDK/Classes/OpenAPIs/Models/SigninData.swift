//
// SigninData.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct SigninData: Codable { 


    public var name: String?
    public var customFields: [CustomField]?

    public init(name: String?, customFields: [CustomField]?) {
        self.name = name
        self.customFields = customFields
    }

    public enum CodingKeys: String, CodingKey, CaseIterable { 
        case name
        case customFields = "custom_fields"
    }

}
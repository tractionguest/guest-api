//
// CustomField.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

/** The root of the CustomField type&#39;s schema. */
public struct CustomField: Codable { 


    public enum Format: String, Codable, CaseIterable {
        case string = "string"
    }
    /** The format type of the field */
    public var format: Format?
    /** What the field should be displayed/labeled as */
    public var fieldName: String
    /** The value to be displayed for the field */
    public var fieldValue: String?
    public var id: Int?

    public init(format: Format?, fieldName: String, fieldValue: String?, id: Int?) {
        self.format = format
        self.fieldName = fieldName
        self.fieldValue = fieldValue
        self.id = id
    }

    public enum CodingKeys: String, CodingKey, CaseIterable { 
        case format
        case fieldName = "field_name"
        case fieldValue = "field_value"
        case id
    }

}

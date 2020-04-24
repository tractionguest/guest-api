//
// Watchlist.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

/** The root of the Watchlist type&#39;s schema. */
public struct Watchlist: Codable { 


    public enum Colour: String, Codable, CaseIterable {
        case red = "RED"
        case yellow = "YELLOW"
        case green = "GREEN"
        case orange = "ORANGE"
    }
    public var id: Int
    public var colour: Colour?
    public var email: String?
    public var firstName: String?
    public var lastName: String?
    public var notes: String?
    public var photo: String?
    public var aliases: [String]?

    public init(id: Int, colour: Colour?, email: String?, firstName: String?, lastName: String?, notes: String?, photo: String?, aliases: [String]?) {
        self.id = id
        self.colour = colour
        self.email = email
        self.firstName = firstName
        self.lastName = lastName
        self.notes = notes
        self.photo = photo
        self.aliases = aliases
    }

    public enum CodingKeys: String, CodingKey, CaseIterable { 
        case id
        case colour
        case email
        case firstName = "first_name"
        case lastName = "last_name"
        case notes
        case photo
        case aliases
    }

}

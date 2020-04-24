//
// WatchlistCreateParams.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

/** Parameters required for updating or creating watchlist records */
public struct WatchlistCreateParams: Codable { 


    public enum Colour: String, Codable, CaseIterable {
        case red = "RED"
        case yellow = "YELLOW"
        case green = "GREEN"
        case orange = "ORANGE"
    }
    public var colour: Colour?
    public var email: String?
    public var firstName: String?
    public var lastName: String?
    public var notes: String?
    public var aliases: [String]?

    public init(colour: Colour?, email: String?, firstName: String?, lastName: String?, notes: String?, aliases: [String]?) {
        self.colour = colour
        self.email = email
        self.firstName = firstName
        self.lastName = lastName
        self.notes = notes
        self.aliases = aliases
    }

    public enum CodingKeys: String, CodingKey, CaseIterable { 
        case colour
        case email
        case firstName = "first_name"
        case lastName = "last_name"
        case notes
        case aliases
    }

}
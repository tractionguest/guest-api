//
// InternalWatchlistResult.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

/**  */
public struct InternalWatchlistResult: Codable { 


    /**  */
    public var id: Int?
    /**  */
    public var email: String?
    /**  */
    public var colour: String
    /**  */
    public var lastName: String?
    /**  */
    public var firstName: String?

    public init(id: Int?, email: String?, colour: String, lastName: String?, firstName: String?) {
        self.id = id
        self.email = email
        self.colour = colour
        self.lastName = lastName
        self.firstName = firstName
    }

    public enum CodingKeys: String, CodingKey, CaseIterable { 
        case id
        case email
        case colour
        case lastName = "last_name"
        case firstName = "first_name"
    }

}

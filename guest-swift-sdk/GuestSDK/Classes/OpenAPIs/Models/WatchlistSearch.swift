//
// WatchlistSearch.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct WatchlistSearch: Codable { 


    public var name: String?
    public var company: String?
    public var city: String?
    public var country: String?
    public var state: String?

    public init(name: String?, company: String?, city: String?, country: String?, state: String?) {
        self.name = name
        self.company = company
        self.city = city
        self.country = country
        self.state = state
    }

}

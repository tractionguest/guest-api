//
// InviteWatchlist.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

/** The root of the InviteWatchlist type&#39;s schema. */
public struct InviteWatchlist: Codable { 


    public var id: Int
    /** Deprecated */
    public var externalColours: [String]?
    /** Deprecated */
    public var internalColours: [String]?
    public var external: [ExternalWatchlistResult]?
    public var _internal: [InternalWatchlistResult]?

    public init(id: Int, externalColours: [String]?, internalColours: [String]?, external: [ExternalWatchlistResult]?, _internal: [InternalWatchlistResult]?) {
        self.id = id
        self.externalColours = externalColours
        self.internalColours = internalColours
        self.external = external
        self._internal = _internal
    }

    public enum CodingKeys: String, CodingKey, CaseIterable { 
        case id
        case externalColours = "external_colours"
        case internalColours = "internal_colours"
        case external
        case _internal = "internal"
    }

}

//
// SigninWatchlist.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

/** The root of the SigninWatchlist type&#39;s schema. */
public struct SigninWatchlist: Codable { 


    public var id: Int
    public var _internal: [InternalWatchlistResult]?
    public var external: [ExternalWatchlistResult]?

    public init(id: Int, _internal: [InternalWatchlistResult]?, external: [ExternalWatchlistResult]?) {
        self.id = id
        self._internal = _internal
        self.external = external
    }

    public enum CodingKeys: String, CodingKey, CaseIterable { 
        case id
        case _internal = "internal"
        case external
    }

}

//
// WatchlistBatchCreateParams.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct WatchlistBatchCreateParams: Codable { 


    public var watchlists: [WatchlistCreateParams]?

    public init(watchlists: [WatchlistCreateParams]?) {
        self.watchlists = watchlists
    }

}
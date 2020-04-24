//
// PaginatedHostsList.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct PaginatedHostsList: Codable { 


    public var hosts: [Host]
    public var pagination: Pagination

    public init(hosts: [Host], pagination: Pagination) {
        self.hosts = hosts
        self.pagination = pagination
    }

}

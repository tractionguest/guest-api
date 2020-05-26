//
// GroupVisit.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct GroupVisit: Codable { 


    public var id: Int?
    public var location: Location?
    public var hosts: [Host]?
    public var name: String?
    public var startTime: String?
    public var endTime: String?
    public var createdAt: String?
    public var updatedAt: String?

    public init(id: Int?, location: Location?, hosts: [Host]?, name: String?, startTime: String?, endTime: String?, createdAt: String?, updatedAt: String?) {
        self.id = id
        self.location = location
        self.hosts = hosts
        self.name = name
        self.startTime = startTime
        self.endTime = endTime
        self.createdAt = createdAt
        self.updatedAt = updatedAt
    }

    public enum CodingKeys: String, CodingKey, CaseIterable { 
        case id
        case location
        case hosts
        case name
        case startTime = "start_time"
        case endTime = "end_time"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
    }

}
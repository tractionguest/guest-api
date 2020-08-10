//
// CapacityResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

/** The root of the CapacityResponse&#39;s schema. */
public struct CapacityResponse: Codable { 


    public var invitesByHour: [CapacityByHourResponse]?

    public init(invitesByHour: [CapacityByHourResponse]?) {
        self.invitesByHour = invitesByHour
    }

    public enum CodingKeys: String, CodingKey, CaseIterable { 
        case invitesByHour = "invites_by_hour"
    }

}
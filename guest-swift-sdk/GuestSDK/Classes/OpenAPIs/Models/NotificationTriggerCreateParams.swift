//
// NotificationTriggerCreateParams.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

/** The root of the NotificationTrigger type&#39;s schema. */
public struct NotificationTriggerCreateParams: Codable { 


    public enum OffsetDirection: String, Codable, CaseIterable {
        case before = "BEFORE"
        case after = "AFTER"
    }
    public enum OffsetOrigin: String, Codable, CaseIterable {
        case start = "START"
        case end = "END"
    }
    public enum OffsetUnit: String, Codable, CaseIterable {
        case days = "days"
        case hours = "hours"
    }
    /** Whether the offset should be calculated for before, or after the event */
    public var offsetDirection: OffsetDirection
    /** The amount to offset the notification from the event */
    public var offsetAmount: Int
    /** Whether the offset should be calculated from the start, or finish of the event */
    public var offsetOrigin: OffsetOrigin
    public var emailTemplateId: Int
    /** An array made of only &#x60;INVITEE&#x60;, &#x60;HOSTS, or &#x60;LEP&#x60; as possible string values */
    public var notificationGroups: [String]
    /** Whether the offset should be calculated as &#x60;days&#x60; or &#x60;hours&#x60; */
    public var offsetUnit: OffsetUnit

    public init(offsetDirection: OffsetDirection, offsetAmount: Int, offsetOrigin: OffsetOrigin, emailTemplateId: Int, notificationGroups: [String], offsetUnit: OffsetUnit) {
        self.offsetDirection = offsetDirection
        self.offsetAmount = offsetAmount
        self.offsetOrigin = offsetOrigin
        self.emailTemplateId = emailTemplateId
        self.notificationGroups = notificationGroups
        self.offsetUnit = offsetUnit
    }

    public enum CodingKeys: String, CodingKey, CaseIterable { 
        case offsetDirection = "offset_direction"
        case offsetAmount = "offset_amount"
        case offsetOrigin = "offset_origin"
        case emailTemplateId = "email_template_id"
        case notificationGroups = "notification_groups"
        case offsetUnit = "offset_unit"
    }

}
//
// GuestAlertDetail.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct GuestAlertDetail: Codable { 


    public enum DeliveryStatus: String, Codable, CaseIterable {
        case pending = "pending"
        case success = "success"
        case partialSuccess = "partial_success"
        case failure = "failure"
    }
    /** pending, success, partial success, or failure   */
    public var deliveryStatus: DeliveryStatus
    /** Count of pending messages  */
    public var pendingCount: Int
    /** Count of successfully sent messages  */
    public var sentCount: Int
    /** Count of messages that failed to be sent */
    public var failedCount: Int
    public var message: String
    /** The uuid of the guest_alert object */
    public var uuid: String
    /** Channel used to send the message */
    public var channels: [String]

    public init(deliveryStatus: DeliveryStatus, pendingCount: Int, sentCount: Int, failedCount: Int, message: String, uuid: String, channels: [String]) {
        self.deliveryStatus = deliveryStatus
        self.pendingCount = pendingCount
        self.sentCount = sentCount
        self.failedCount = failedCount
        self.message = message
        self.uuid = uuid
        self.channels = channels
    }

    public enum CodingKeys: String, CodingKey, CaseIterable { 
        case deliveryStatus = "delivery_status"
        case pendingCount = "pending_count"
        case sentCount = "sent_count"
        case failedCount = "failed_count"
        case message
        case uuid
        case channels
    }

}
//
// SigninDetail.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

/** The root of the Signin type&#39;s schema. */
public struct SigninDetail: Codable { 


    public var id: Int
    public var company: String?
    public var email: String?
    public var firstName: String?
    public var isAccountedFor: Bool?
    /** Whether this Signin has been acknowledged yet. Can also be used as a one-way method of setting the Signin as acknowledged. */
    public var isAcknowledged: Bool?
    public var lastName: String?
    public var locationName: String?
    public var mobileNumber: String?
    public var signedOutTimestamp: Date?
    public var signinPhotoUrl: String?
    public var signinTimestamp: Date?
    /** A one-way method of Signing out a Signin */
    public var isSignedOut: Bool?
    public var note: String?
    public var signinAcknowledgement: SigninAcknowledgement?
    public var signinData: [SigninData]?
    public var hosts: [Host]?
    public var signinWatchlist: SigninWatchlist?
    public var documents: [SignableDocument]?

    public init(id: Int, company: String?, email: String?, firstName: String?, isAccountedFor: Bool?, isAcknowledged: Bool?, lastName: String?, locationName: String?, mobileNumber: String?, signedOutTimestamp: Date?, signinPhotoUrl: String?, signinTimestamp: Date?, isSignedOut: Bool?, note: String?, signinAcknowledgement: SigninAcknowledgement?, signinData: [SigninData]?, hosts: [Host]?, signinWatchlist: SigninWatchlist?, documents: [SignableDocument]?) {
        self.id = id
        self.company = company
        self.email = email
        self.firstName = firstName
        self.isAccountedFor = isAccountedFor
        self.isAcknowledged = isAcknowledged
        self.lastName = lastName
        self.locationName = locationName
        self.mobileNumber = mobileNumber
        self.signedOutTimestamp = signedOutTimestamp
        self.signinPhotoUrl = signinPhotoUrl
        self.signinTimestamp = signinTimestamp
        self.isSignedOut = isSignedOut
        self.note = note
        self.signinAcknowledgement = signinAcknowledgement
        self.signinData = signinData
        self.hosts = hosts
        self.signinWatchlist = signinWatchlist
        self.documents = documents
    }

    public enum CodingKeys: String, CodingKey, CaseIterable { 
        case id
        case company
        case email
        case firstName = "first_name"
        case isAccountedFor = "is_accounted_for"
        case isAcknowledged = "is_acknowledged"
        case lastName = "last_name"
        case locationName = "location_name"
        case mobileNumber = "mobile_number"
        case signedOutTimestamp = "signed_out_timestamp"
        case signinPhotoUrl = "signin_photo_url"
        case signinTimestamp = "signin_timestamp"
        case isSignedOut = "is_signed_out"
        case note
        case signinAcknowledgement = "signin_acknowledgement"
        case signinData = "signin_data"
        case hosts
        case signinWatchlist = "signin_watchlist"
        case documents
    }

}
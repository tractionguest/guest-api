//
// RegistrationAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation



open class RegistrationAPI {
    /**
     Get a Registration
     
     - parameter registrationId: (path)  
     - parameter include: (query) A list of comma-separated related models to include (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    open class func getRegistration(registrationId: String, include: String? = nil, apiResponseQueue: DispatchQueue = GuestSDKAPI.apiResponseQueue, completion: @escaping ((_ result: Result<Registration, Error>) -> Void)) {
        getRegistrationWithRequestBuilder(registrationId: registrationId, include: include).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(.success(response.body!))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Get a Registration
     - GET /registrations/{registration_id}
     - Gets the details of a single instance of a `Registration`
     - :
       - type: openIdConnect
       - name: TractionGuestAuth
     - parameter registrationId: (path)  
     - parameter include: (query) A list of comma-separated related models to include (optional)
     - returns: RequestBuilder<Registration> 
     */
    open class func getRegistrationWithRequestBuilder(registrationId: String, include: String? = nil) -> RequestBuilder<Registration> {
        var path = "/registrations/{registration_id}"
        let registrationIdPreEscape = "\(APIHelper.mapValueToPathItem(registrationId))"
        let registrationIdPostEscape = registrationIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{registration_id}", with: registrationIdPostEscape, options: .literal, range: nil)
        let URLString = GuestSDKAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "include": include?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<Registration>.Type = GuestSDKAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     List all Registrations
     
     - parameter limit: (query) Limits the results to a specified number, defaults to 50 (optional)
     - parameter offset: (query) Offsets the results to a specified number, defaults to 0 (optional)
     - parameter locationIds: (query) A comma separated list of Location IDs (optional)
     - parameter createdBefore: (query) Restricts results to only those that were created before the provided date (optional)
     - parameter createdAfter: (query) Restricts results to only those that were created after the provided date (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    open class func getRegistrations(limit: Int? = nil, offset: Int? = nil, locationIds: String? = nil, createdBefore: String? = nil, createdAfter: String? = nil, apiResponseQueue: DispatchQueue = GuestSDKAPI.apiResponseQueue, completion: @escaping ((_ result: Result<PaginatedRegistrationsList, Error>) -> Void)) {
        getRegistrationsWithRequestBuilder(limit: limit, offset: offset, locationIds: locationIds, createdBefore: createdBefore, createdAfter: createdAfter).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(.success(response.body!))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     List all Registrations
     - GET /registrations
     - Gets a list of all `Registration` entities.
     - :
       - type: openIdConnect
       - name: TractionGuestAuth
     - parameter limit: (query) Limits the results to a specified number, defaults to 50 (optional)
     - parameter offset: (query) Offsets the results to a specified number, defaults to 0 (optional)
     - parameter locationIds: (query) A comma separated list of Location IDs (optional)
     - parameter createdBefore: (query) Restricts results to only those that were created before the provided date (optional)
     - parameter createdAfter: (query) Restricts results to only those that were created after the provided date (optional)
     - returns: RequestBuilder<PaginatedRegistrationsList> 
     */
    open class func getRegistrationsWithRequestBuilder(limit: Int? = nil, offset: Int? = nil, locationIds: String? = nil, createdBefore: String? = nil, createdAfter: String? = nil) -> RequestBuilder<PaginatedRegistrationsList> {
        let path = "/registrations"
        let URLString = GuestSDKAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "limit": limit?.encodeToJSON(), 
            "offset": offset?.encodeToJSON(), 
            "location_ids": locationIds?.encodeToJSON(), 
            "created_before": createdBefore?.encodeToJSON(), 
            "created_after": createdAfter?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<PaginatedRegistrationsList>.Type = GuestSDKAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}

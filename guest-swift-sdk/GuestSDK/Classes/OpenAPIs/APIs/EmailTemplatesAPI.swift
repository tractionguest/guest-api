//
// EmailTemplatesAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation



open class EmailTemplatesAPI {
    /**
     List All EmailTemplates
     
     - parameter limit: (query) Limits the results to a specified number, defaults to 50 (optional)
     - parameter offset: (query) Offsets the results to a specified number, defaults to 0 (optional)
     - parameter include: (query) A list of comma-separated related models to include (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    open class func getEmailTemplates(limit: Int? = nil, offset: Int? = nil, include: String? = nil, apiResponseQueue: DispatchQueue = GuestSDKAPI.apiResponseQueue, completion: @escaping ((_ result: Result<PaginatedEmailTemplatesList, Error>) -> Void)) {
        getEmailTemplatesWithRequestBuilder(limit: limit, offset: offset, include: include).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(.success(response.body!))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     List All EmailTemplates
     - GET /email_templates
     - Gets a list of all `EmailTemplate` entities.
     - :
       - type: openIdConnect
       - name: TractionGuestAuth
     - parameter limit: (query) Limits the results to a specified number, defaults to 50 (optional)
     - parameter offset: (query) Offsets the results to a specified number, defaults to 0 (optional)
     - parameter include: (query) A list of comma-separated related models to include (optional)
     - returns: RequestBuilder<PaginatedEmailTemplatesList> 
     */
    open class func getEmailTemplatesWithRequestBuilder(limit: Int? = nil, offset: Int? = nil, include: String? = nil) -> RequestBuilder<PaginatedEmailTemplatesList> {
        let path = "/email_templates"
        let URLString = GuestSDKAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "limit": limit?.encodeToJSON(), 
            "offset": offset?.encodeToJSON(), 
            "include": include?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<PaginatedEmailTemplatesList>.Type = GuestSDKAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}

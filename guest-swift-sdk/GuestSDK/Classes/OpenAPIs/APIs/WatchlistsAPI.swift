//
// WatchlistsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation



open class WatchlistsAPI {
    /**
     Create watchlist
     
     - parameter watchlistCreateParams: (body) The new &#x60;Watchlist&#x60; to create 
     - parameter idempotencyKey: (header) An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it&#39;s submitted. We store idempotency keys for only 24 hours. Any &#x60;Idempotency-Key&#x60; shorter than 10 characters will be ignored (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    open class func createWatchlist(watchlistCreateParams: WatchlistCreateParams, idempotencyKey: String? = nil, apiResponseQueue: DispatchQueue = GuestSDKAPI.apiResponseQueue, completion: @escaping ((_ result: Result<Watchlist, Error>) -> Void)) {
        createWatchlistWithRequestBuilder(watchlistCreateParams: watchlistCreateParams, idempotencyKey: idempotencyKey).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(.success(response.body!))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Create watchlist
     - POST /watchlists
     - Create a new `Watchlist` record. Please note, every action taken against this endpoint is recorded in the audit log.
     - :
       - type: openIdConnect
       - name: TractionGuestAuth
     - parameter watchlistCreateParams: (body) The new &#x60;Watchlist&#x60; to create 
     - parameter idempotencyKey: (header) An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it&#39;s submitted. We store idempotency keys for only 24 hours. Any &#x60;Idempotency-Key&#x60; shorter than 10 characters will be ignored (optional)
     - returns: RequestBuilder<Watchlist> 
     */
    open class func createWatchlistWithRequestBuilder(watchlistCreateParams: WatchlistCreateParams, idempotencyKey: String? = nil) -> RequestBuilder<Watchlist> {
        let path = "/watchlists"
        let URLString = GuestSDKAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: watchlistCreateParams)

        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "Idempotency-Key": idempotencyKey?.encodeToJSON()
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Watchlist>.Type = GuestSDKAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

    /**
     Deletes a Watchlist
     
     - parameter watchlistId: (path)  
     - parameter idempotencyKey: (header) An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it&#39;s submitted. We store idempotency keys for only 24 hours. Any &#x60;Idempotency-Key&#x60; shorter than 10 characters will be ignored (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    open class func deleteWatchlist(watchlistId: String, idempotencyKey: String? = nil, apiResponseQueue: DispatchQueue = GuestSDKAPI.apiResponseQueue, completion: @escaping ((_ result: Result<Void, Error>) -> Void)) {
        deleteWatchlistWithRequestBuilder(watchlistId: watchlistId, idempotencyKey: idempotencyKey).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion(.success(()))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Deletes a Watchlist
     - DELETE /watchlists/{watchlist_id}
     - Deletes a single instance of `Watchlist`
     - :
       - type: openIdConnect
       - name: TractionGuestAuth
     - parameter watchlistId: (path)  
     - parameter idempotencyKey: (header) An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it&#39;s submitted. We store idempotency keys for only 24 hours. Any &#x60;Idempotency-Key&#x60; shorter than 10 characters will be ignored (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func deleteWatchlistWithRequestBuilder(watchlistId: String, idempotencyKey: String? = nil) -> RequestBuilder<Void> {
        var path = "/watchlists/{watchlist_id}"
        let watchlistIdPreEscape = "\(APIHelper.mapValueToPathItem(watchlistId))"
        let watchlistIdPostEscape = watchlistIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{watchlist_id}", with: watchlistIdPostEscape, options: .literal, range: nil)
        let URLString = GuestSDKAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "Idempotency-Key": idempotencyKey?.encodeToJSON()
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = GuestSDKAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Get a Watchlist
     
     - parameter watchlistId: (path)  
     - parameter include: (query) A list of comma-separated related models to include (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    open class func getWatchlist(watchlistId: String, include: String? = nil, apiResponseQueue: DispatchQueue = GuestSDKAPI.apiResponseQueue, completion: @escaping ((_ result: Result<Watchlist, Error>) -> Void)) {
        getWatchlistWithRequestBuilder(watchlistId: watchlistId, include: include).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(.success(response.body!))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Get a Watchlist
     - GET /watchlists/{watchlist_id}
     - Gets the details of a single instance of a `Watchlist`.
     - :
       - type: openIdConnect
       - name: TractionGuestAuth
     - parameter watchlistId: (path)  
     - parameter include: (query) A list of comma-separated related models to include (optional)
     - returns: RequestBuilder<Watchlist> 
     */
    open class func getWatchlistWithRequestBuilder(watchlistId: String, include: String? = nil) -> RequestBuilder<Watchlist> {
        var path = "/watchlists/{watchlist_id}"
        let watchlistIdPreEscape = "\(APIHelper.mapValueToPathItem(watchlistId))"
        let watchlistIdPostEscape = watchlistIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{watchlist_id}", with: watchlistIdPostEscape, options: .literal, range: nil)
        let URLString = GuestSDKAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "include": include?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<Watchlist>.Type = GuestSDKAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     List All Watchlists
     
     - parameter limit: (query) Limits the results to a specified number, defaults to 50 (optional)
     - parameter offset: (query) Offsets the results to a specified number, defaults to 0 (optional)
     - parameter query: (query) Query the results by &#x60;first_name&#x60;, &#x60;last_name&#x60;, &#x60;email&#x60;, &#x60;colour&#x60;, and &#x60;notes&#x60; all at once. (optional)
     - parameter withColours: (query) A comma separated list of case-insensitive colour values. i.e., &#x60;red&#x60;, &#x60;green&#x60;, &#x60;yellow&#x60;, and &#x60;orange&#x60; (optional)
     - parameter include: (query) A list of comma-separated related models to include (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    open class func getWatchlists(limit: Int? = nil, offset: Int? = nil, query: String? = nil, withColours: String? = nil, include: String? = nil, apiResponseQueue: DispatchQueue = GuestSDKAPI.apiResponseQueue, completion: @escaping ((_ result: Result<PaginatedWatchlistList, Error>) -> Void)) {
        getWatchlistsWithRequestBuilder(limit: limit, offset: offset, query: query, withColours: withColours, include: include).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(.success(response.body!))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     List All Watchlists
     - GET /watchlists
     - Gets a list of all `Watchlist` entities.
     - :
       - type: openIdConnect
       - name: TractionGuestAuth
     - parameter limit: (query) Limits the results to a specified number, defaults to 50 (optional)
     - parameter offset: (query) Offsets the results to a specified number, defaults to 0 (optional)
     - parameter query: (query) Query the results by &#x60;first_name&#x60;, &#x60;last_name&#x60;, &#x60;email&#x60;, &#x60;colour&#x60;, and &#x60;notes&#x60; all at once. (optional)
     - parameter withColours: (query) A comma separated list of case-insensitive colour values. i.e., &#x60;red&#x60;, &#x60;green&#x60;, &#x60;yellow&#x60;, and &#x60;orange&#x60; (optional)
     - parameter include: (query) A list of comma-separated related models to include (optional)
     - returns: RequestBuilder<PaginatedWatchlistList> 
     */
    open class func getWatchlistsWithRequestBuilder(limit: Int? = nil, offset: Int? = nil, query: String? = nil, withColours: String? = nil, include: String? = nil) -> RequestBuilder<PaginatedWatchlistList> {
        let path = "/watchlists"
        let URLString = GuestSDKAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "limit": limit?.encodeToJSON(), 
            "offset": offset?.encodeToJSON(), 
            "query": query?.encodeToJSON(), 
            "with_colours": withColours?.encodeToJSON(), 
            "include": include?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<PaginatedWatchlistList>.Type = GuestSDKAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     Update a watchlist record
     
     - parameter watchlistId: (path)  
     - parameter watchlistCreateParams: (body) The watchlist record attributes to update 
     - parameter idempotencyKey: (header) An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it&#39;s submitted. We store idempotency keys for only 24 hours. Any &#x60;Idempotency-Key&#x60; shorter than 10 characters will be ignored (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    open class func updateWatchlist(watchlistId: String, watchlistCreateParams: WatchlistCreateParams, idempotencyKey: String? = nil, apiResponseQueue: DispatchQueue = GuestSDKAPI.apiResponseQueue, completion: @escaping ((_ result: Result<Watchlist, Error>) -> Void)) {
        updateWatchlistWithRequestBuilder(watchlistId: watchlistId, watchlistCreateParams: watchlistCreateParams, idempotencyKey: idempotencyKey).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(.success(response.body!))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Update a watchlist record
     - PUT /watchlists/{watchlist_id}
     - Update an existing `Watchlist` record. Every operation against this endpoint is recorded in the audit log.
     - :
       - type: openIdConnect
       - name: TractionGuestAuth
     - parameter watchlistId: (path)  
     - parameter watchlistCreateParams: (body) The watchlist record attributes to update 
     - parameter idempotencyKey: (header) An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it&#39;s submitted. We store idempotency keys for only 24 hours. Any &#x60;Idempotency-Key&#x60; shorter than 10 characters will be ignored (optional)
     - returns: RequestBuilder<Watchlist> 
     */
    open class func updateWatchlistWithRequestBuilder(watchlistId: String, watchlistCreateParams: WatchlistCreateParams, idempotencyKey: String? = nil) -> RequestBuilder<Watchlist> {
        var path = "/watchlists/{watchlist_id}"
        let watchlistIdPreEscape = "\(APIHelper.mapValueToPathItem(watchlistId))"
        let watchlistIdPostEscape = watchlistIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{watchlist_id}", with: watchlistIdPostEscape, options: .literal, range: nil)
        let URLString = GuestSDKAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: watchlistCreateParams)

        let url = URLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "Idempotency-Key": idempotencyKey?.encodeToJSON()
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Watchlist>.Type = GuestSDKAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

}

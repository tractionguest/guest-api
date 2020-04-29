/**
 * Traction Guest API
 * A compelling story about a lone device, on a quest for its data.
 *
 * The version of the OpenAPI document: 0.11.2
 * Contact: bmckay@tractionguest.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */
/* tslint:disable:no-unused-variable member-ordering */

import { Inject, Injectable, Optional }                      from '@angular/core';
import { HttpClient, HttpHeaders, HttpParams,
         HttpResponse, HttpEvent }                           from '@angular/common/http';
import { CustomHttpUrlEncodingCodec }                        from '../encoder';

import { Observable }                                        from 'rxjs';

import { ErrorsListGuest } from '../model/errorsList';
import { PaginatedWatchlistListGuest } from '../model/paginatedWatchlistList';
import { WatchlistCreateParamsGuest } from '../model/watchlistCreateParams';
import { WatchlistGuest } from '../model/watchlist';

import { BASE_PATH, COLLECTION_FORMATS }                     from '../variables';
import { Configuration }                                     from '../configuration';


@Injectable({
  providedIn: 'root'
})
export class WatchlistsService {

    protected basePath = 'https://mobile-api-refactor-admin.tractionguest.ca/api/v3';
    public defaultHeaders = new HttpHeaders();
    public configuration = new Configuration();

    constructor(protected httpClient: HttpClient, @Optional()@Inject(BASE_PATH) basePath: string, @Optional() configuration: Configuration) {

        if (configuration) {
            this.configuration = configuration;
            this.configuration.basePath = configuration.basePath || basePath || this.basePath;

        } else {
            this.configuration.basePath = basePath || this.basePath;
        }
    }

    /**
     * @param consumes string[] mime-types
     * @return true: consumes contains 'multipart/form-data', false: otherwise
     */
    private canConsumeForm(consumes: string[]): boolean {
        const form = 'multipart/form-data';
        for (const consume of consumes) {
            if (form === consume) {
                return true;
            }
        }
        return false;
    }


    /**
     * Create watchlist
     * Create a new &#x60;Watchlist&#x60; record. Please note, every action taken against this endpoint is recorded in the audit log.
     * @param watchlistCreateParamsGuest The new &#x60;Watchlist&#x60; to create
     * @param idempotencyKey An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it\&#39;s submitted. We store idempotency keys for only 24 hours. Any &#x60;Idempotency-Key&#x60; shorter than 10 characters will be ignored
     * @param observe set whether or not to return the data Observable as the body, response or events. defaults to returning the body.
     * @param reportProgress flag to report request and response progress.
     */
    public createWatchlist(watchlistCreateParamsGuest: WatchlistCreateParamsGuest, idempotencyKey?: string, observe?: 'body', reportProgress?: boolean): Observable<WatchlistGuest>;
    public createWatchlist(watchlistCreateParamsGuest: WatchlistCreateParamsGuest, idempotencyKey?: string, observe?: 'response', reportProgress?: boolean): Observable<HttpResponse<WatchlistGuest>>;
    public createWatchlist(watchlistCreateParamsGuest: WatchlistCreateParamsGuest, idempotencyKey?: string, observe?: 'events', reportProgress?: boolean): Observable<HttpEvent<WatchlistGuest>>;
    public createWatchlist(watchlistCreateParamsGuest: WatchlistCreateParamsGuest, idempotencyKey?: string, observe: any = 'body', reportProgress: boolean = false ): Observable<any> {
        if (watchlistCreateParamsGuest === null || watchlistCreateParamsGuest === undefined) {
            throw new Error('Required parameter watchlistCreateParamsGuest was null or undefined when calling createWatchlist.');
        }

        let headers = this.defaultHeaders;
        if (idempotencyKey !== undefined && idempotencyKey !== null) {
            headers = headers.set('Idempotency-Key', String(idempotencyKey));
        }

        // authentication (TractionGuestAuth) required
        // to determine the Accept header
        const httpHeaderAccepts: string[] = [
            'application/json'
        ];
        const httpHeaderAcceptSelected: string | undefined = this.configuration.selectHeaderAccept(httpHeaderAccepts);
        if (httpHeaderAcceptSelected !== undefined) {
            headers = headers.set('Accept', httpHeaderAcceptSelected);
        }

        // to determine the Content-Type header
        const consumes: string[] = [
            'application/json'
        ];
        const httpContentTypeSelected: string | undefined = this.configuration.selectHeaderContentType(consumes);
        if (httpContentTypeSelected !== undefined) {
            headers = headers.set('Content-Type', httpContentTypeSelected);
        }

        return this.httpClient.post<WatchlistGuest>(`${this.configuration.basePath}/watchlists`,
            watchlistCreateParamsGuest,
            {
                withCredentials: this.configuration.withCredentials,
                headers: headers,
                observe: observe,
                reportProgress: reportProgress
            }
        );
    }

    /**
     * Deletes a Watchlist
     * Deletes a single instance of &#x60;Watchlist&#x60;
     * @param watchlistId A unique identifier for a &#x60;Watchlist&#x60;.
     * @param idempotencyKey An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it\&#39;s submitted. We store idempotency keys for only 24 hours. Any &#x60;Idempotency-Key&#x60; shorter than 10 characters will be ignored
     * @param observe set whether or not to return the data Observable as the body, response or events. defaults to returning the body.
     * @param reportProgress flag to report request and response progress.
     */
    public deleteWatchlist(watchlistId: string, idempotencyKey?: string, observe?: 'body', reportProgress?: boolean): Observable<any>;
    public deleteWatchlist(watchlistId: string, idempotencyKey?: string, observe?: 'response', reportProgress?: boolean): Observable<HttpResponse<any>>;
    public deleteWatchlist(watchlistId: string, idempotencyKey?: string, observe?: 'events', reportProgress?: boolean): Observable<HttpEvent<any>>;
    public deleteWatchlist(watchlistId: string, idempotencyKey?: string, observe: any = 'body', reportProgress: boolean = false ): Observable<any> {
        if (watchlistId === null || watchlistId === undefined) {
            throw new Error('Required parameter watchlistId was null or undefined when calling deleteWatchlist.');
        }

        let headers = this.defaultHeaders;
        if (idempotencyKey !== undefined && idempotencyKey !== null) {
            headers = headers.set('Idempotency-Key', String(idempotencyKey));
        }

        // authentication (TractionGuestAuth) required
        // to determine the Accept header
        const httpHeaderAccepts: string[] = [
            'application/json'
        ];
        const httpHeaderAcceptSelected: string | undefined = this.configuration.selectHeaderAccept(httpHeaderAccepts);
        if (httpHeaderAcceptSelected !== undefined) {
            headers = headers.set('Accept', httpHeaderAcceptSelected);
        }

        // to determine the Content-Type header
        const consumes: string[] = [
        ];

        return this.httpClient.delete<any>(`${this.configuration.basePath}/watchlists/${encodeURIComponent(String(watchlistId))}`,
            {
                withCredentials: this.configuration.withCredentials,
                headers: headers,
                observe: observe,
                reportProgress: reportProgress
            }
        );
    }

    /**
     * Get a Watchlist
     * Gets the details of a single instance of a &#x60;Watchlist&#x60;.
     * @param watchlistId A unique identifier for a &#x60;Watchlist&#x60;.
     * @param include A list of comma-separated related models to include
     * @param observe set whether or not to return the data Observable as the body, response or events. defaults to returning the body.
     * @param reportProgress flag to report request and response progress.
     */
    public getWatchlist(watchlistId: string, include?: string, observe?: 'body', reportProgress?: boolean): Observable<WatchlistGuest>;
    public getWatchlist(watchlistId: string, include?: string, observe?: 'response', reportProgress?: boolean): Observable<HttpResponse<WatchlistGuest>>;
    public getWatchlist(watchlistId: string, include?: string, observe?: 'events', reportProgress?: boolean): Observable<HttpEvent<WatchlistGuest>>;
    public getWatchlist(watchlistId: string, include?: string, observe: any = 'body', reportProgress: boolean = false ): Observable<any> {
        if (watchlistId === null || watchlistId === undefined) {
            throw new Error('Required parameter watchlistId was null or undefined when calling getWatchlist.');
        }

        let queryParameters = new HttpParams({encoder: new CustomHttpUrlEncodingCodec()});
        if (include !== undefined && include !== null) {
            queryParameters = queryParameters.set('include', <any>include);
        }

        let headers = this.defaultHeaders;

        // authentication (TractionGuestAuth) required
        // to determine the Accept header
        const httpHeaderAccepts: string[] = [
            'application/json'
        ];
        const httpHeaderAcceptSelected: string | undefined = this.configuration.selectHeaderAccept(httpHeaderAccepts);
        if (httpHeaderAcceptSelected !== undefined) {
            headers = headers.set('Accept', httpHeaderAcceptSelected);
        }

        // to determine the Content-Type header
        const consumes: string[] = [
        ];

        return this.httpClient.get<WatchlistGuest>(`${this.configuration.basePath}/watchlists/${encodeURIComponent(String(watchlistId))}`,
            {
                params: queryParameters,
                withCredentials: this.configuration.withCredentials,
                headers: headers,
                observe: observe,
                reportProgress: reportProgress
            }
        );
    }

    /**
     * List All Watchlists
     * Gets a list of all &#x60;Watchlist&#x60; entities.
     * @param limit Limits the results to a specified number, defaults to 50
     * @param offset Offsets the results to a specified number, defaults to 0
     * @param query Query the results by &#x60;first_name&#x60;, &#x60;last_name&#x60;, &#x60;email&#x60;, &#x60;colour&#x60;, and &#x60;notes&#x60; all at once.
     * @param withColours A comma separated list of case-insensitive colour values. i.e., &#x60;red&#x60;, &#x60;green&#x60;, &#x60;yellow&#x60;, and &#x60;orange&#x60;
     * @param include A list of comma-separated related models to include
     * @param observe set whether or not to return the data Observable as the body, response or events. defaults to returning the body.
     * @param reportProgress flag to report request and response progress.
     */
    public getWatchlists(limit?: number, offset?: number, query?: string, withColours?: string, include?: string, observe?: 'body', reportProgress?: boolean): Observable<PaginatedWatchlistListGuest>;
    public getWatchlists(limit?: number, offset?: number, query?: string, withColours?: string, include?: string, observe?: 'response', reportProgress?: boolean): Observable<HttpResponse<PaginatedWatchlistListGuest>>;
    public getWatchlists(limit?: number, offset?: number, query?: string, withColours?: string, include?: string, observe?: 'events', reportProgress?: boolean): Observable<HttpEvent<PaginatedWatchlistListGuest>>;
    public getWatchlists(limit?: number, offset?: number, query?: string, withColours?: string, include?: string, observe: any = 'body', reportProgress: boolean = false ): Observable<any> {

        let queryParameters = new HttpParams({encoder: new CustomHttpUrlEncodingCodec()});
        if (limit !== undefined && limit !== null) {
            queryParameters = queryParameters.set('limit', <any>limit);
        }
        if (offset !== undefined && offset !== null) {
            queryParameters = queryParameters.set('offset', <any>offset);
        }
        if (query !== undefined && query !== null) {
            queryParameters = queryParameters.set('query', <any>query);
        }
        if (withColours !== undefined && withColours !== null) {
            queryParameters = queryParameters.set('with_colours', <any>withColours);
        }
        if (include !== undefined && include !== null) {
            queryParameters = queryParameters.set('include', <any>include);
        }

        let headers = this.defaultHeaders;

        // authentication (TractionGuestAuth) required
        // to determine the Accept header
        const httpHeaderAccepts: string[] = [
            'application/json'
        ];
        const httpHeaderAcceptSelected: string | undefined = this.configuration.selectHeaderAccept(httpHeaderAccepts);
        if (httpHeaderAcceptSelected !== undefined) {
            headers = headers.set('Accept', httpHeaderAcceptSelected);
        }

        // to determine the Content-Type header
        const consumes: string[] = [
        ];

        return this.httpClient.get<PaginatedWatchlistListGuest>(`${this.configuration.basePath}/watchlists`,
            {
                params: queryParameters,
                withCredentials: this.configuration.withCredentials,
                headers: headers,
                observe: observe,
                reportProgress: reportProgress
            }
        );
    }

    /**
     * Update a watchlist record
     * Update an existing &#x60;Watchlist&#x60; record. Every operation against this endpoint is recorded in the audit log.
     * @param watchlistId A unique identifier for a &#x60;Watchlist&#x60;.
     * @param watchlistCreateParamsGuest The watchlist record attributes to update
     * @param idempotencyKey An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it\&#39;s submitted. We store idempotency keys for only 24 hours. Any &#x60;Idempotency-Key&#x60; shorter than 10 characters will be ignored
     * @param observe set whether or not to return the data Observable as the body, response or events. defaults to returning the body.
     * @param reportProgress flag to report request and response progress.
     */
    public updateWatchlist(watchlistId: string, watchlistCreateParamsGuest: WatchlistCreateParamsGuest, idempotencyKey?: string, observe?: 'body', reportProgress?: boolean): Observable<WatchlistGuest>;
    public updateWatchlist(watchlistId: string, watchlistCreateParamsGuest: WatchlistCreateParamsGuest, idempotencyKey?: string, observe?: 'response', reportProgress?: boolean): Observable<HttpResponse<WatchlistGuest>>;
    public updateWatchlist(watchlistId: string, watchlistCreateParamsGuest: WatchlistCreateParamsGuest, idempotencyKey?: string, observe?: 'events', reportProgress?: boolean): Observable<HttpEvent<WatchlistGuest>>;
    public updateWatchlist(watchlistId: string, watchlistCreateParamsGuest: WatchlistCreateParamsGuest, idempotencyKey?: string, observe: any = 'body', reportProgress: boolean = false ): Observable<any> {
        if (watchlistId === null || watchlistId === undefined) {
            throw new Error('Required parameter watchlistId was null or undefined when calling updateWatchlist.');
        }
        if (watchlistCreateParamsGuest === null || watchlistCreateParamsGuest === undefined) {
            throw new Error('Required parameter watchlistCreateParamsGuest was null or undefined when calling updateWatchlist.');
        }

        let headers = this.defaultHeaders;
        if (idempotencyKey !== undefined && idempotencyKey !== null) {
            headers = headers.set('Idempotency-Key', String(idempotencyKey));
        }

        // authentication (TractionGuestAuth) required
        // to determine the Accept header
        const httpHeaderAccepts: string[] = [
            'application/json'
        ];
        const httpHeaderAcceptSelected: string | undefined = this.configuration.selectHeaderAccept(httpHeaderAccepts);
        if (httpHeaderAcceptSelected !== undefined) {
            headers = headers.set('Accept', httpHeaderAcceptSelected);
        }

        // to determine the Content-Type header
        const consumes: string[] = [
            'application/json'
        ];
        const httpContentTypeSelected: string | undefined = this.configuration.selectHeaderContentType(consumes);
        if (httpContentTypeSelected !== undefined) {
            headers = headers.set('Content-Type', httpContentTypeSelected);
        }

        return this.httpClient.put<WatchlistGuest>(`${this.configuration.basePath}/watchlists/${encodeURIComponent(String(watchlistId))}`,
            watchlistCreateParamsGuest,
            {
                withCredentials: this.configuration.withCredentials,
                headers: headers,
                observe: observe,
                reportProgress: reportProgress
            }
        );
    }

}

/**
 * Traction Guest API
 * The leader in enterprise visitor management, empowers businesses across five continents and dozens of industries to keep people safe while creating connection in the contactless world.
 *
 * The version of the OpenAPI document: 0.11.12
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
import { InviteCreateParamsGuest } from '../model/inviteCreateParams';
import { InviteDetailGuest } from '../model/inviteDetail';
import { InviteUpdateParamsGuest } from '../model/inviteUpdateParams';
import { PaginatedInvitesListGuest } from '../model/paginatedInvitesList';

import { BASE_PATH, COLLECTION_FORMATS }                     from '../variables';
import { Configuration }                                     from '../configuration';


@Injectable({
  providedIn: 'root'
})
export class InvitesService {

    protected basePath = 'https://tractionguest.ca/api/v3';
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
     * Create an Invite
     * Creates a new &#x60;Invite&#x60; for a specific &#x60;Location&#x60;.
     * @param locationId 
     * @param inviteCreateParamsGuest 
     * @param idempotencyKey An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it\&#39;s submitted. We store idempotency keys for only 24 hours. Any &#x60;Idempotency-Key&#x60; shorter than 10 characters will be ignored
     * @param observe set whether or not to return the data Observable as the body, response or events. defaults to returning the body.
     * @param reportProgress flag to report request and response progress.
     */
    public createLocationInvite(locationId: string, inviteCreateParamsGuest: InviteCreateParamsGuest, idempotencyKey?: string, observe?: 'body', reportProgress?: boolean): Observable<InviteDetailGuest>;
    public createLocationInvite(locationId: string, inviteCreateParamsGuest: InviteCreateParamsGuest, idempotencyKey?: string, observe?: 'response', reportProgress?: boolean): Observable<HttpResponse<InviteDetailGuest>>;
    public createLocationInvite(locationId: string, inviteCreateParamsGuest: InviteCreateParamsGuest, idempotencyKey?: string, observe?: 'events', reportProgress?: boolean): Observable<HttpEvent<InviteDetailGuest>>;
    public createLocationInvite(locationId: string, inviteCreateParamsGuest: InviteCreateParamsGuest, idempotencyKey?: string, observe: any = 'body', reportProgress: boolean = false ): Observable<any> {
        if (locationId === null || locationId === undefined) {
            throw new Error('Required parameter locationId was null or undefined when calling createLocationInvite.');
        }
        if (inviteCreateParamsGuest === null || inviteCreateParamsGuest === undefined) {
            throw new Error('Required parameter inviteCreateParamsGuest was null or undefined when calling createLocationInvite.');
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

        return this.httpClient.post<InviteDetailGuest>(`${this.configuration.basePath}/locations/${encodeURIComponent(String(locationId))}/invites`,
            inviteCreateParamsGuest,
            {
                withCredentials: this.configuration.withCredentials,
                headers: headers,
                observe: observe,
                reportProgress: reportProgress
            }
        );
    }

    /**
     * Deletes an Invite
     * Deletes a single instance of &#x60;Invite&#x60;
     * @param inviteId 
     * @param idempotencyKey An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it\&#39;s submitted. We store idempotency keys for only 24 hours. Any &#x60;Idempotency-Key&#x60; shorter than 10 characters will be ignored
     * @param observe set whether or not to return the data Observable as the body, response or events. defaults to returning the body.
     * @param reportProgress flag to report request and response progress.
     */
    public deleteInvite(inviteId: string, idempotencyKey?: string, observe?: 'body', reportProgress?: boolean): Observable<any>;
    public deleteInvite(inviteId: string, idempotencyKey?: string, observe?: 'response', reportProgress?: boolean): Observable<HttpResponse<any>>;
    public deleteInvite(inviteId: string, idempotencyKey?: string, observe?: 'events', reportProgress?: boolean): Observable<HttpEvent<any>>;
    public deleteInvite(inviteId: string, idempotencyKey?: string, observe: any = 'body', reportProgress: boolean = false ): Observable<any> {
        if (inviteId === null || inviteId === undefined) {
            throw new Error('Required parameter inviteId was null or undefined when calling deleteInvite.');
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

        return this.httpClient.delete<any>(`${this.configuration.basePath}/invites/${encodeURIComponent(String(inviteId))}`,
            {
                withCredentials: this.configuration.withCredentials,
                headers: headers,
                observe: observe,
                reportProgress: reportProgress
            }
        );
    }

    /**
     * Get an Invite
     * Gets the details of a single instance of a &#x60;Invite&#x60;.
     * @param inviteId 
     * @param include A list of comma-separated related models to include
     * @param observe set whether or not to return the data Observable as the body, response or events. defaults to returning the body.
     * @param reportProgress flag to report request and response progress.
     */
    public getInvite(inviteId: string, include?: string, observe?: 'body', reportProgress?: boolean): Observable<InviteDetailGuest>;
    public getInvite(inviteId: string, include?: string, observe?: 'response', reportProgress?: boolean): Observable<HttpResponse<InviteDetailGuest>>;
    public getInvite(inviteId: string, include?: string, observe?: 'events', reportProgress?: boolean): Observable<HttpEvent<InviteDetailGuest>>;
    public getInvite(inviteId: string, include?: string, observe: any = 'body', reportProgress: boolean = false ): Observable<any> {
        if (inviteId === null || inviteId === undefined) {
            throw new Error('Required parameter inviteId was null or undefined when calling getInvite.');
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

        return this.httpClient.get<InviteDetailGuest>(`${this.configuration.basePath}/invites/${encodeURIComponent(String(inviteId))}`,
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
     * List all Invites
     * Gets a list of all &#x60;Invite&#x60; entities.
     * @param limit Limits the results to a specified number, defaults to 50
     * @param offset Offsets the results to a specified number, defaults to 0
     * @param query Filters by &#x60;first_name&#x60;, &#x60;last_name&#x60;, &#x60;company&#x60;, and &#x60;email&#x60;
     * @param withColours A comma separated list of case-insensitive colour values. i.e., &#x60;red&#x60;, &#x60;green&#x60;, &#x60;yellow&#x60;, and &#x60;orange&#x60;
     * @param locationIds A comma separated list of Location IDs
     * @param sortBy Sorts by the field name and direction provided where the pattern is &#x60;FIELD_NAME_DIRECTION&#x60;
     * @param startsBefore Filters results to all those *before* the provided datetime
     * @param startsAfter Filters results to all those *after* the provided datetime
     * @param include A list of comma-separated related models to include
     * @param isApproved True to return approved and auto approved invites, False to return pending and rejected invites
     * @param activeAfter Checks that an invite hasn\&#39;t yet started, or has started and is still active after a specified time
     * @param activeBefore Checks that an invite hasn\&#39;t ended before a specified time
     * @param observe set whether or not to return the data Observable as the body, response or events. defaults to returning the body.
     * @param reportProgress flag to report request and response progress.
     */
    public getInvites(limit?: number, offset?: number, query?: string, withColours?: string, locationIds?: string, sortBy?: 'start_date_asc' | 'start_date_desc' | 'end_date_asc' | 'end_date_desc' | 'created_at_asc' | 'created_at_desc' | 'updated_at_asc' | 'updated_at_desc', startsBefore?: string, startsAfter?: string, include?: string, isApproved?: boolean, activeAfter?: Date, activeBefore?: Date, observe?: 'body', reportProgress?: boolean): Observable<PaginatedInvitesListGuest>;
    public getInvites(limit?: number, offset?: number, query?: string, withColours?: string, locationIds?: string, sortBy?: 'start_date_asc' | 'start_date_desc' | 'end_date_asc' | 'end_date_desc' | 'created_at_asc' | 'created_at_desc' | 'updated_at_asc' | 'updated_at_desc', startsBefore?: string, startsAfter?: string, include?: string, isApproved?: boolean, activeAfter?: Date, activeBefore?: Date, observe?: 'response', reportProgress?: boolean): Observable<HttpResponse<PaginatedInvitesListGuest>>;
    public getInvites(limit?: number, offset?: number, query?: string, withColours?: string, locationIds?: string, sortBy?: 'start_date_asc' | 'start_date_desc' | 'end_date_asc' | 'end_date_desc' | 'created_at_asc' | 'created_at_desc' | 'updated_at_asc' | 'updated_at_desc', startsBefore?: string, startsAfter?: string, include?: string, isApproved?: boolean, activeAfter?: Date, activeBefore?: Date, observe?: 'events', reportProgress?: boolean): Observable<HttpEvent<PaginatedInvitesListGuest>>;
    public getInvites(limit?: number, offset?: number, query?: string, withColours?: string, locationIds?: string, sortBy?: 'start_date_asc' | 'start_date_desc' | 'end_date_asc' | 'end_date_desc' | 'created_at_asc' | 'created_at_desc' | 'updated_at_asc' | 'updated_at_desc', startsBefore?: string, startsAfter?: string, include?: string, isApproved?: boolean, activeAfter?: Date, activeBefore?: Date, observe: any = 'body', reportProgress: boolean = false ): Observable<any> {

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
        if (locationIds !== undefined && locationIds !== null) {
            queryParameters = queryParameters.set('location_ids', <any>locationIds);
        }
        if (sortBy !== undefined && sortBy !== null) {
            queryParameters = queryParameters.set('sort_by', <any>sortBy);
        }
        if (startsBefore !== undefined && startsBefore !== null) {
            queryParameters = queryParameters.set('starts_before', <any>startsBefore);
        }
        if (startsAfter !== undefined && startsAfter !== null) {
            queryParameters = queryParameters.set('starts_after', <any>startsAfter);
        }
        if (include !== undefined && include !== null) {
            queryParameters = queryParameters.set('include', <any>include);
        }
        if (isApproved !== undefined && isApproved !== null) {
            queryParameters = queryParameters.set('is_approved', <any>isApproved);
        }
        if (activeAfter !== undefined && activeAfter !== null) {
            queryParameters = queryParameters.set('active_after', <any>activeAfter.toISOString());
        }
        if (activeBefore !== undefined && activeBefore !== null) {
            queryParameters = queryParameters.set('active_before', <any>activeBefore.toISOString());
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

        return this.httpClient.get<PaginatedInvitesListGuest>(`${this.configuration.basePath}/invites`,
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
     * Update an Invite
     * Updates an existing &#x60;Invite&#x60;.
     * @param inviteId 
     * @param inviteUpdateParamsGuest Updated &#x60;Invite&#x60; information.
     * @param idempotencyKey An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it\&#39;s submitted. We store idempotency keys for only 24 hours. Any &#x60;Idempotency-Key&#x60; shorter than 10 characters will be ignored
     * @param observe set whether or not to return the data Observable as the body, response or events. defaults to returning the body.
     * @param reportProgress flag to report request and response progress.
     */
    public updateInvite(inviteId: string, inviteUpdateParamsGuest: InviteUpdateParamsGuest, idempotencyKey?: string, observe?: 'body', reportProgress?: boolean): Observable<InviteDetailGuest>;
    public updateInvite(inviteId: string, inviteUpdateParamsGuest: InviteUpdateParamsGuest, idempotencyKey?: string, observe?: 'response', reportProgress?: boolean): Observable<HttpResponse<InviteDetailGuest>>;
    public updateInvite(inviteId: string, inviteUpdateParamsGuest: InviteUpdateParamsGuest, idempotencyKey?: string, observe?: 'events', reportProgress?: boolean): Observable<HttpEvent<InviteDetailGuest>>;
    public updateInvite(inviteId: string, inviteUpdateParamsGuest: InviteUpdateParamsGuest, idempotencyKey?: string, observe: any = 'body', reportProgress: boolean = false ): Observable<any> {
        if (inviteId === null || inviteId === undefined) {
            throw new Error('Required parameter inviteId was null or undefined when calling updateInvite.');
        }
        if (inviteUpdateParamsGuest === null || inviteUpdateParamsGuest === undefined) {
            throw new Error('Required parameter inviteUpdateParamsGuest was null or undefined when calling updateInvite.');
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

        return this.httpClient.put<InviteDetailGuest>(`${this.configuration.basePath}/invites/${encodeURIComponent(String(inviteId))}`,
            inviteUpdateParamsGuest,
            {
                withCredentials: this.configuration.withCredentials,
                headers: headers,
                observe: observe,
                reportProgress: reportProgress
            }
        );
    }

}

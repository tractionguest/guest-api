/**
 * Traction Guest API
 * The leader in enterprise visitor management, empowers businesses across five continents and dozens of industries to keep people safe while creating connection in the contactless world.
 *
 * The version of the OpenAPI document: 0.11.6
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

import { AuditLogGuest } from '../model/auditLog';
import { ErrorsListGuest } from '../model/errorsList';
import { PaginatedAuditLogsListGuest } from '../model/paginatedAuditLogsList';

import { BASE_PATH, COLLECTION_FORMATS }                     from '../variables';
import { Configuration }                                     from '../configuration';


@Injectable({
  providedIn: 'root'
})
export class AuditLogsService {

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
     * Get an AuditLog
     * Gets the details of a single instance of an &#x60;AuditLog&#x60;.
     * @param auditLogId 
     * @param observe set whether or not to return the data Observable as the body, response or events. defaults to returning the body.
     * @param reportProgress flag to report request and response progress.
     */
    public getAuditLog(auditLogId: string, observe?: 'body', reportProgress?: boolean): Observable<AuditLogGuest>;
    public getAuditLog(auditLogId: string, observe?: 'response', reportProgress?: boolean): Observable<HttpResponse<AuditLogGuest>>;
    public getAuditLog(auditLogId: string, observe?: 'events', reportProgress?: boolean): Observable<HttpEvent<AuditLogGuest>>;
    public getAuditLog(auditLogId: string, observe: any = 'body', reportProgress: boolean = false ): Observable<any> {
        if (auditLogId === null || auditLogId === undefined) {
            throw new Error('Required parameter auditLogId was null or undefined when calling getAuditLog.');
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

        return this.httpClient.get<AuditLogGuest>(`${this.configuration.basePath}/audit_logs/${encodeURIComponent(String(auditLogId))}`,
            {
                withCredentials: this.configuration.withCredentials,
                headers: headers,
                observe: observe,
                reportProgress: reportProgress
            }
        );
    }

    /**
     * List All AuditLogs
     * Gets a list of all &#x60;AuditLog&#x60; entities.
     * @param limit Limits the results to a specified number, defaults to 50
     * @param offset Offsets the results to a specified number, defaults to 0
     * @param sortBy Sorts by the field name and direction provided where the pattern is &#x60;FIELD_NAME_DIRECTION&#x60;
     * @param auditableId The unique ID of a model that has associated audit logs
     * @param auditableType The name of the model that has associated audit logs. Valid values include: - &#x60;user&#x60; - &#x60;device_configuration&#x60; - &#x60;signin&#x60; - &#x60;invite&#x60; - &#x60;watchlist_record&#x60; - &#x60;account_preference&#x60; - &#x60;signout&#x60; - &#x60;host&#x60; - &#x60;invite_watchlist&#x60; - &#x60;location_preference&#x60; - &#x60;parking_lot&#x60; - &#x60;parking_stall&#x60; - &#x60;permission_bundle&#x60; - &#x60;person&#x60; - &#x60;physical_access_grant&#x60; - &#x60;physical_access_provider&#x60; - &#x60;physical_access_rule&#x60; - &#x60;security_badge_type&#x60; - &#x60;signin_watchlist&#x60; - &#x60;user_group_physical_access_rule&#x60; - &#x60;visitor&#x60; - &#x60;bulk_data_batch&#x60; 
     * @param actionType The action performed by the user. Valid values include: - &#x60;create&#x60; - &#x60;update&#x60; - &#x60;destroy&#x60; 
     * @param userId The ID of the user who performed the database change
     * @param observe set whether or not to return the data Observable as the body, response or events. defaults to returning the body.
     * @param reportProgress flag to report request and response progress.
     */
    public getAuditLogs(limit?: number, offset?: number, sortBy?: string, auditableId?: number, auditableType?: string, actionType?: string, userId?: number, observe?: 'body', reportProgress?: boolean): Observable<PaginatedAuditLogsListGuest>;
    public getAuditLogs(limit?: number, offset?: number, sortBy?: string, auditableId?: number, auditableType?: string, actionType?: string, userId?: number, observe?: 'response', reportProgress?: boolean): Observable<HttpResponse<PaginatedAuditLogsListGuest>>;
    public getAuditLogs(limit?: number, offset?: number, sortBy?: string, auditableId?: number, auditableType?: string, actionType?: string, userId?: number, observe?: 'events', reportProgress?: boolean): Observable<HttpEvent<PaginatedAuditLogsListGuest>>;
    public getAuditLogs(limit?: number, offset?: number, sortBy?: string, auditableId?: number, auditableType?: string, actionType?: string, userId?: number, observe: any = 'body', reportProgress: boolean = false ): Observable<any> {

        let queryParameters = new HttpParams({encoder: new CustomHttpUrlEncodingCodec()});
        if (limit !== undefined && limit !== null) {
            queryParameters = queryParameters.set('limit', <any>limit);
        }
        if (offset !== undefined && offset !== null) {
            queryParameters = queryParameters.set('offset', <any>offset);
        }
        if (sortBy !== undefined && sortBy !== null) {
            queryParameters = queryParameters.set('sort_by', <any>sortBy);
        }
        if (auditableId !== undefined && auditableId !== null) {
            queryParameters = queryParameters.set('auditable_id', <any>auditableId);
        }
        if (auditableType !== undefined && auditableType !== null) {
            queryParameters = queryParameters.set('auditable_type', <any>auditableType);
        }
        if (actionType !== undefined && actionType !== null) {
            queryParameters = queryParameters.set('action_type', <any>actionType);
        }
        if (userId !== undefined && userId !== null) {
            queryParameters = queryParameters.set('user_id', <any>userId);
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

        return this.httpClient.get<PaginatedAuditLogsListGuest>(`${this.configuration.basePath}/audit_logs`,
            {
                params: queryParameters,
                withCredentials: this.configuration.withCredentials,
                headers: headers,
                observe: observe,
                reportProgress: reportProgress
            }
        );
    }

}

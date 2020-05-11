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

import { ErrorsListGuest } from '../model/errorsList';
import { GuestAlertCreateParamsGuest } from '../model/guestAlertCreateParams';
import { GuestAlertDetailGuest } from '../model/guestAlertDetail';

import { BASE_PATH, COLLECTION_FORMATS }                     from '../variables';
import { Configuration }                                     from '../configuration';


@Injectable({
  providedIn: 'root'
})
export class GuestAlertsService {

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
     * Create Guest Alert
     * Enqueues guest alerts via specified channels
     * @param guestAlertCreateParamsGuest 
     * @param observe set whether or not to return the data Observable as the body, response or events. defaults to returning the body.
     * @param reportProgress flag to report request and response progress.
     */
    public createGuestAlert(guestAlertCreateParamsGuest: GuestAlertCreateParamsGuest, observe?: 'body', reportProgress?: boolean): Observable<GuestAlertDetailGuest>;
    public createGuestAlert(guestAlertCreateParamsGuest: GuestAlertCreateParamsGuest, observe?: 'response', reportProgress?: boolean): Observable<HttpResponse<GuestAlertDetailGuest>>;
    public createGuestAlert(guestAlertCreateParamsGuest: GuestAlertCreateParamsGuest, observe?: 'events', reportProgress?: boolean): Observable<HttpEvent<GuestAlertDetailGuest>>;
    public createGuestAlert(guestAlertCreateParamsGuest: GuestAlertCreateParamsGuest, observe: any = 'body', reportProgress: boolean = false ): Observable<any> {
        if (guestAlertCreateParamsGuest === null || guestAlertCreateParamsGuest === undefined) {
            throw new Error('Required parameter guestAlertCreateParamsGuest was null or undefined when calling createGuestAlert.');
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
            'application/json'
        ];
        const httpContentTypeSelected: string | undefined = this.configuration.selectHeaderContentType(consumes);
        if (httpContentTypeSelected !== undefined) {
            headers = headers.set('Content-Type', httpContentTypeSelected);
        }

        return this.httpClient.post<GuestAlertDetailGuest>(`${this.configuration.basePath}/guest_alerts`,
            guestAlertCreateParamsGuest,
            {
                withCredentials: this.configuration.withCredentials,
                headers: headers,
                observe: observe,
                reportProgress: reportProgress
            }
        );
    }

}

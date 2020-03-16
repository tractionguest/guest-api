/**
 * Traction Guest API
 * A compelling story about a lone device, on a quest for its data.
 *
 * The version of the OpenAPI document: 0.10.0
 * Contact: bmckay@tractionguest.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


/**
 * The root of the Error type\'s schema.
 */
export interface ModelErrorGuest { 
    /**
     * The name of the model with the error, or global if it is something outside a model
     */
    domain: string;
    /**
     * The model attribute where the error occured
     */
    attribute?: string;
    /**
     * An error code reference for the specific error that occured
     */
    code: string;
    /**
     * A human readable error message that can be discarded for internationalization purposes
     */
    message?: string;
}


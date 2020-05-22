/**
 * Traction Guest API
 * The leader in enterprise visitor management, empowers businesses across five continents and dozens of industries to keep people safe while creating connection in the contactless world.
 *
 * The version of the OpenAPI document: 0.11.7
 * Contact: bmckay@tractionguest.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


/**
 * The root of the Pagination type\'s schema.
 */
export interface PaginationGuest { 
    totalRecords?: number;
    currentOffset?: number;
    nextOffset?: number;
    /**
     * The last ID rendered, if the request included the \'after_id\' param.
     */
    lastId?: number;
}


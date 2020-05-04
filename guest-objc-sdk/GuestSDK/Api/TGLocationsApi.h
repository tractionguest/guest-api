#import <Foundation/Foundation.h>
#import "TGErrorsList.h"
#import "TGPaginatedLocationsList.h"
#import "TGApi.h"

/**
* Traction Guest API
* The leader in enterprise visitor management, empowers businesses across five continents and dozens of industries to keep people safe while creating connection in the contactless world.
*
* The version of the OpenAPI document: 0.11.5
* Contact: bmckay@tractionguest.com
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/



@interface TGLocationsApi: NSObject <TGApi>

extern NSString* kTGLocationsApiErrorDomain;
extern NSInteger kTGLocationsApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(TGApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// List All Locations
/// Gets a list of all `Location` entities.
///
/// @param limit Limits the results to a specified number, defaults to 50 (optional)
/// @param offset Offsets the results to a specified number, defaults to 0 (optional)
/// @param query Queries by Location &#x60;name&#x60; (optional)
/// @param include A list of comma-separated related models to include (optional)
/// 
///  code:200 message:"Successful response - returns an array of `Location` entities.",
///  code:400 message:"A generic error",
///  code:401 message:"You don't have permission to view these Locations",
///  code:403 message:"You do not have permission for this action"
///
/// @return TGPaginatedLocationsList*
-(NSURLSessionTask*) getLocationsWithLimit: (NSNumber*) limit
    offset: (NSNumber*) offset
    query: (NSString*) query
    include: (NSString*) include
    completionHandler: (void (^)(TGPaginatedLocationsList* output, NSError* error)) handler;



@end

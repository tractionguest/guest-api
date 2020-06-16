#import <Foundation/Foundation.h>
#import "TGObject.h"

/**
* Traction Guest API
* The leader in enterprise visitor management, empowers businesses across five continents and dozens of industries to keep people safe while creating connection in the contactless world.
*
* The version of the OpenAPI document: 0.11.9
* Contact: bmckay@tractionguest.com
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/





@protocol TGInternalWatchlistResult
@end

@interface TGInternalWatchlistResult : TGObject

/*  [optional]
 */
@property(nonatomic) NSNumber* _id;
/*  [optional]
 */
@property(nonatomic) NSString* email;
/*  
 */
@property(nonatomic) NSString* colour;
/*  [optional]
 */
@property(nonatomic) NSString* lastName;
/*  [optional]
 */
@property(nonatomic) NSString* firstName;

@end

#import <Foundation/Foundation.h>
#import "TGObject.h"

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





@protocol TGVisitor
@end

@interface TGVisitor : TGObject

/* UUID [optional]
 */
@property(nonatomic) NSString* _id;

@property(nonatomic) NSNumber* active;

@property(nonatomic) NSString* company;

@property(nonatomic) NSString* createdVia;

@property(nonatomic) NSString* email;

@property(nonatomic) NSString* firstName;

@property(nonatomic) NSString* lastName;

@property(nonatomic) NSString* mobile;

@property(nonatomic) NSString* note;

@property(nonatomic) NSString* profilePicContentType;

@property(nonatomic) NSString* profilePicFileName;

@property(nonatomic) NSString* profilePicFileSize;

@property(nonatomic) NSString* profilePicUpdatedAt;

@property(nonatomic) NSString* watchlistLevel;

@property(nonatomic) NSDate* createdAt;

@property(nonatomic) NSDate* updatedAt;

@end

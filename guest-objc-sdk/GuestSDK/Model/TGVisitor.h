#import <Foundation/Foundation.h>
#import "TGObject.h"

/**
* Traction Guest API
* A compelling story about a lone device, on a quest for its data.
*
* The version of the OpenAPI document: 0.11.1
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

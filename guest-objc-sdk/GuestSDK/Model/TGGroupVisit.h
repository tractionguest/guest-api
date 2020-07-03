#import <Foundation/Foundation.h>
#import "TGObject.h"

/**
* Traction Guest API
* The leader in enterprise visitor management, empowers businesses across five continents and dozens of industries to keep people safe while creating connection in the contactless world.
*
* The version of the OpenAPI document: 0.11.11
* Contact: bmckay@tractionguest.com
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/


#import "TGHost.h"
#import "TGLocation.h"
@protocol TGHost;
@class TGHost;
@protocol TGLocation;
@class TGLocation;



@protocol TGGroupVisit
@end

@interface TGGroupVisit : TGObject


@property(nonatomic) NSNumber* _id;

@property(nonatomic) TGLocation* location;

@property(nonatomic) NSArray<TGHost>* hosts;

@property(nonatomic) NSString* name;

@property(nonatomic) NSString* startTime;

@property(nonatomic) NSString* endTime;

@property(nonatomic) NSString* createdAt;

@property(nonatomic) NSString* updatedAt;

@end

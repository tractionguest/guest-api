#import <Foundation/Foundation.h>
#import "TGObject.h"

/**
* Traction Guest API
* The leader in enterprise visitor management, empowers businesses across five continents and dozens of industries to keep people safe while creating connection in the contactless world.
*
* The version of the OpenAPI document: 0.11.10
* Contact: bmckay@tractionguest.com
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/





@protocol TGWatchlist
@end

@interface TGWatchlist : TGObject


@property(nonatomic) NSNumber* _id;

@property(nonatomic) NSArray<NSString*>* aliases;

@property(nonatomic) NSString* photo;

@property(nonatomic) NSString* notes;

@property(nonatomic) NSString* lastName;

@property(nonatomic) NSString* firstName;

@property(nonatomic) NSString* email;

@property(nonatomic) NSString* colour;

@end

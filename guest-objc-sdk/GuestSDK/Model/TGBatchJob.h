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


#import "TGUser.h"
@protocol TGUser;
@class TGUser;



@protocol TGBatchJob
@end

@interface TGBatchJob : TGObject


@property(nonatomic) NSString* bid;

@property(nonatomic) NSString* createdAt;

@property(nonatomic) NSString* status;

@property(nonatomic) NSNumber* totalRecords;

@property(nonatomic) NSString* workerName;

@property(nonatomic) TGUser* user;

@end

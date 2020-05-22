#import <Foundation/Foundation.h>
#import "TGObject.h"

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


#import "TGCustomField.h"
@protocol TGCustomField;
@class TGCustomField;



@protocol TGSigninData
@end

@interface TGSigninData : TGObject


@property(nonatomic) NSArray<TGCustomField>* customFields;

@property(nonatomic) NSString* name;

@end

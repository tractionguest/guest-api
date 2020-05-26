#import <Foundation/Foundation.h>
#import "TGObject.h"

/**
* Traction Guest API
* The leader in enterprise visitor management, empowers businesses across five continents and dozens of industries to keep people safe while creating connection in the contactless world.
*
* The version of the OpenAPI document: 0.11.8
* Contact: bmckay@tractionguest.com
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/


#import "TGInvite.h"
#import "TGPagination.h"
@protocol TGInvite;
@class TGInvite;
@protocol TGPagination;
@class TGPagination;



@protocol TGPaginatedInvitesList
@end

@interface TGPaginatedInvitesList : TGObject


@property(nonatomic) NSArray<TGInvite>* invites;

@property(nonatomic) TGPagination* pagination;

@end

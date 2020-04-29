#import <Foundation/Foundation.h>
#import "TGObject.h"

/**
* Traction Guest API
* A compelling story about a lone device, on a quest for its data.
*
* The version of the OpenAPI document: 0.11.3
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


@property(nonatomic) TGPagination* pagination;

@property(nonatomic) NSArray<TGInvite>* invites;

@end

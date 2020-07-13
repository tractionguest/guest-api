#import <Foundation/Foundation.h>
#import "TGObject.h"

/**
* Traction Guest API
* The leader in enterprise visitor management, empowers businesses across five continents and dozens of industries to keep people safe while creating connection in the contactless world.
*
* The version of the OpenAPI document: 0.11.12
* Contact: bmckay@tractionguest.com
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/





@protocol TGWatchlistMatch
@end

@interface TGWatchlistMatch : TGObject


@property(nonatomic) NSString* _id;

@property(nonatomic) NSArray<NSString*>* altNames;

@property(nonatomic) NSString* federalRegisterNotice;

@property(nonatomic) NSString* name;

@property(nonatomic) NSString* sourceInformationUrl;

@property(nonatomic) NSString* sourceListUrl;

@property(nonatomic) NSString* list;
/*  [optional]
 */
@property(nonatomic) NSString* type;
/*  [optional]
 */
@property(nonatomic) NSString* category;
/*  [optional]
 */
@property(nonatomic) NSString* street1;
/*  [optional]
 */
@property(nonatomic) NSString* street2;
/*  [optional]
 */
@property(nonatomic) NSString* city;
/*  [optional]
 */
@property(nonatomic) NSString* state;
/*  [optional]
 */
@property(nonatomic) NSString* country;
/*  [optional]
 */
@property(nonatomic) NSString* notes;
/*  [optional]
 */
@property(nonatomic) NSString* frc;
/*  [optional]
 */
@property(nonatomic) NSString* start;
/*  [optional]
 */
@property(nonatomic) NSString* end;
/*  [optional]
 */
@property(nonatomic) NSString* frserve;
/*  [optional]
 */
@property(nonatomic) NSString* optionalID;
/*  [optional]
 */
@property(nonatomic) NSString* alertType;
/*  [optional]
 */
@property(nonatomic) NSString* pairStatus;
/*  [optional]
 */
@property(nonatomic) NSString* pairReason;
/*  [optional]
 */
@property(nonatomic) NSString* pairComments;
/*  [optional]
 */
@property(nonatomic) NSString* applicationDisplayName;
/*  [optional]
 */
@property(nonatomic) NSString* applicationId;
/*  [optional]
 */
@property(nonatomic) NSString* clientId;
/*  [optional]
 */
@property(nonatomic) NSString* clientKey;
/*  [optional]
 */
@property(nonatomic) NSString* clientFullName;
/*  [optional]
 */
@property(nonatomic) NSString* listKey;
/*  [optional]
 */
@property(nonatomic) NSString* listName;
/*  [optional]
 */
@property(nonatomic) NSString* listId;
/*  [optional]
 */
@property(nonatomic) NSString* listVersion;
/*  [optional]
 */
@property(nonatomic) NSString* listModifyDate;
/*  [optional]
 */
@property(nonatomic) NSString* listProfileId;
/*  [optional]
 */
@property(nonatomic) NSString* listProfileKey;
/*  [optional]
 */
@property(nonatomic) NSString* linkSingleStringName;
/*  [optional]
 */
@property(nonatomic) NSString* listParentSingleStringName;
/*  [optional]
 */
@property(nonatomic) NSString* listCategory;
/*  [optional]
 */
@property(nonatomic) NSString* listPepCategory;
/*  [optional]
 */
@property(nonatomic) NSString* listDoBs;
/*  [optional]
 */
@property(nonatomic) NSString* listCountries;
/*  [optional]
 */
@property(nonatomic) NSString* rankString;
/*  [optional]
 */
@property(nonatomic) NSString* ranktype;
/*  [optional]
 */
@property(nonatomic) NSString* rankweight;
/*  [optional]
 */
@property(nonatomic) NSString* pairLoadDate;
/*  [optional]
 */
@property(nonatomic) NSString* eAddressTo;
/*  [optional]
 */
@property(nonatomic) NSString* eAddressCc;
/*  [optional]
 */
@property(nonatomic) NSString* origin;
/*  [optional]
 */
@property(nonatomic) NSString* secondsviewed;
/*  [optional]
 */
@property(nonatomic) NSString* initialUser;
/*  [optional]
 */
@property(nonatomic) NSString* isPairParentFlag;
/*  [optional]
 */
@property(nonatomic) NSString* pairMetSearchCriteriaFlag;
/*  [optional]
 */
@property(nonatomic) NSString* editableDueToAssignmentFlag;
/*  [optional]
 */
@property(nonatomic) NSString* modifyDate;
/*  [optional]
 */
@property(nonatomic) NSString* modifiedByUser;
/*  [optional]
 */
@property(nonatomic) NSString* pairReportType;
/*  [optional]
 */
@property(nonatomic) NSString* finscanCategory;
/*  [optional]
 */
@property(nonatomic) NSString* wrapperStatus;
/*  [optional]
 */
@property(nonatomic) NSString* sourceLists;

@end

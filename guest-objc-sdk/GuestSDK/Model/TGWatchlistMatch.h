#import <Foundation/Foundation.h>
#import "TGObject.h"

/**
* Traction Guest API
* The Traction Guest API is currently in **closed beta**. We're still building, testing, and fixing bugs.  If you're interested in helping us get to version 1.0.0, contact your CS team representative. Only paid accounts are elligible.  # Slack  Do you have Slack? Want faster answers to Traction Guest API questions?  Ask to be added to the Traction Guest API Slack channel!  Talk to your CS team representative, or send an email to the API support email above, and we'll add you.  # Versioning  This API follows [semantic versioning](https://semver.org/), which follows the `Major`.`Minor`.`Patch` format. In short:  * The `Major` number increments when potentially incompatible changes are made. * The `Minor` number increments when backwards-compatible additions are made. * The `Patch` number increments when backwards-compatible bug-fixes are made.  So, once the API is out of closed beta, and has reached version 1.0.0, some things may change.  **However**, the developers at Traction Guest strive to keep things running smoothly for our clients. We plan to **deprecate and warn** before making any potentially breaking changes; you may receive messages that follow the format \"this is deprecated, and will be removed in version X.X.X, which is scheduled for release on or after 20XX-01-01.\" Please note that the deprecation message format and content may change.  At this time, we are not planning to make older or 'legacy' versions of the API available, going forward.  # Getting Started  Would you like your team to be a part of closed beta testing? Talk to your CS team representative. We'll walk you through the process of enabling API access and provisioning your account. 
*
* The version of the OpenAPI document: 0.11.12
* Contact: support@tractionguest.com
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

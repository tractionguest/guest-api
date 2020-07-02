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


#import "TGInvite.h"
#import "TGSignin.h"
#import "TGVisitor.h"
@protocol TGInvite;
@class TGInvite;
@protocol TGSignin;
@class TGSignin;
@protocol TGVisitor;
@class TGVisitor;



@protocol TGRegistration
@end

@interface TGRegistration : TGObject

/* Registration unique identifier 
 */
@property(nonatomic) NSString* _id;

@property(nonatomic) TGVisitor* visitor;

@property(nonatomic) TGInvite* invite;
/* URL of the uploaded photo [optional]
 */
@property(nonatomic) NSString* photoUrl;
/* Company's name [optional]
 */
@property(nonatomic) NSString* company;
/* E-mail [optional]
 */
@property(nonatomic) NSString* email;
/* Guest's name [optional]
 */
@property(nonatomic) NSString* name;
/* Datetime when registration was created 
 */
@property(nonatomic) NSDate* createdAt;

@property(nonatomic) TGSignin* signin;

@end

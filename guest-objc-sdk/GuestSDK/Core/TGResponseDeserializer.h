#import <Foundation/Foundation.h>

/**
* Traction Guest API
* A compelling story about a lone device, on a quest for its data.
*
* The version of the OpenAPI document: 0.11.4
* Contact: bmckay@tractionguest.com
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/


/**
 * A key for deserialization ErrorDomain
 */
extern NSString *const TGDeserializationErrorDomainKey;

/**
 * Code for deserialization type mismatch error
 */
extern NSInteger const TGTypeMismatchErrorCode;

/**
 * Code for deserialization empty value error
 */
extern NSInteger const TGEmptyValueOccurredErrorCode;

/**
 * Error code for unknown response
 */
extern NSInteger const TGUnknownResponseObjectErrorCode;

@protocol TGResponseDeserializer <NSObject>

/**
 * Deserializes the given data to Objective-C object.
 *
 * @param data The data will be deserialized.
 * @param className The type of objective-c object.
 * @param error The error
 */
- (id) deserialize:(id) data class:(NSString *) className error:(NSError**)error;

@end

@interface TGResponseDeserializer : NSObject <TGResponseDeserializer>

/**
 *  If a null value occurs in dictionary or array if set to YES whole response will be invalid else will be ignored
 *  @default NO
 */
@property (nonatomic, assign) BOOL treatNullAsError;

@end

#import <Foundation/Foundation.h>
#import "TGConfiguration.h"

/**
* Traction Guest API
* The Traction Guest API is currently in **closed beta**. We're still building, testing, and fixing bugs.  If you're interested in helping us get to version 1.0.0, contact your CS team representative. Only paid accounts are elligible.  # Slack  Do you have Slack? Want faster answers to Traction Guest API questions?  Ask to be added to the Traction Guest API Slack channel!  Talk to your CS team representative, or send an email to the API support email above, and we'll add you.  # Versioning  This API follows [semantic versioning](https://semver.org/), which follows the `Major`.`Minor`.`Patch` format. In short:  * The `Major` number increments when potentially incompatible changes are made. * The `Minor` number increments when backwards-compatible additions are made. * The `Patch` number increments when backwards-compatible bug-fixes are made.  So, once the API is out of closed beta, and has reached version 1.0.0, some things may change.  **However**, the developers at Traction Guest strive to keep things running smoothly for our clients. We plan to **deprecate and warn** before making any potentially breaking changes; you may receive messages that follow the format \"this is deprecated, and will be removed in version X.X.X, which is scheduled for release on or after 20XX-01-01.\" Please note that the deprecation message format and content may change.  At this time, we are not planning to make older or 'legacy' versions of the API available, going forward.  # Getting Started  Would you like your team to be a part of closed beta testing? Talk to your CS team representative. We'll walk you through the process of enabling API access and provisioning your account. 
*
* The version of the OpenAPI document: 0.12.2
* Contact: support@tractionguest.com
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/


@class TGApiClient;

@interface TGDefaultConfiguration : NSObject <TGConfiguration>


/**
 * Default api logger
 */
@property (nonatomic, strong) TGLogger * logger;

/**
 * Default base url
 */
@property (nonatomic) NSString *host;

/**
 * Api key values for Api Key type Authentication
 *
 * To add or remove api key, use `setApiKey:forApiKeyIdentifier:`.
 */
@property (readonly, nonatomic, strong) NSDictionary *apiKey;

/**
 * Api key prefix values to be prepend to the respective api key
 *
 * To add or remove prefix, use `setApiKeyPrefix:forApiKeyPrefixIdentifier:`.
 */
@property (readonly, nonatomic, strong) NSDictionary *apiKeyPrefix;

/**
 * Username for HTTP Basic Authentication
 */
 @property (nonatomic) NSString *username;

/**
 * Password for HTTP Basic Authentication
 */
@property (nonatomic) NSString *password;

/**
 * Access token for OAuth
 */
@property (nonatomic) NSString *accessToken;

/**
 * Temp folder for file download
 */
@property (nonatomic) NSString *tempFolderPath;

/**
 * Debug switch, default false
 */
@property (nonatomic) BOOL debug;

/**
 * Gets configuration singleton instance
 */
+ (instancetype) sharedConfig;

/**
 * SSL/TLS verification
 * Set this to NO to skip verifying SSL certificate when calling API from https server
 */
@property (nonatomic) BOOL verifySSL;

/**
 * SSL/TLS verification
 * Set this to customize the certificate file to verify the peer
 */
@property (nonatomic) NSString *sslCaCert;

/**
 * The time zone to use for date serialization
 */
@property (nonatomic) NSTimeZone *serializationTimeZone;

/**
 * Sets API key
 *
 * To remove an apiKey for an identifier, just set the apiKey to nil.
 *
 * @param apiKey     API key or token.
 * @param identifier API key identifier (authentication schema).
 *
 */
- (void) setApiKey:(NSString *)apiKey forApiKeyIdentifier:(NSString*)identifier;

/**
 * Removes api key
 *
 * @param identifier API key identifier.
 */
- (void) removeApiKey:(NSString *)identifier;

/**
 * Sets the prefix for API key
 *
 * @param prefix API key prefix.
 * @param identifier   API key identifier.
 */
- (void) setApiKeyPrefix:(NSString *)prefix forApiKeyPrefixIdentifier:(NSString *)identifier;

/**
 * Removes api key prefix
 *
 * @param identifier API key identifier.
 */
- (void) removeApiKeyPrefix:(NSString *)identifier;

/**
 * Gets API key (with prefix if set)
 */
- (NSString *) getApiKeyWithPrefix:(NSString *) key;

/**
 * Gets Basic Auth token
 */
- (NSString *) getBasicAuthToken;

/**
 * Gets OAuth access token
 */
- (NSString *) getAccessToken;

/**
 * Gets Authentication Settings
 */
- (NSDictionary *) authSettings;

/**
* Default headers for all services
*/
@property (readonly, nonatomic, strong) NSDictionary *defaultHeaders;

/**
* Removes header from defaultHeaders
*
* @param key Header name.
*/
-(void) removeDefaultHeaderForKey:(NSString*)key;

/**
* Sets the header for key
*
* @param value         Value for header name
* @param key           Header name
*/
-(void) setDefaultHeaderValue:(NSString*) value forKey:(NSString*)key;

/**
* @param key Header key name.
*/
-(NSString*) defaultHeaderForKey:(NSString*)key;

@end

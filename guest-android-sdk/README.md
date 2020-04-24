# guest-sdk

## Requirements

Building the API client library requires [Maven](https://maven.apache.org/) to be installed.

## Installation

To install the API client library to your local Maven repository, simply execute:

```shell
mvn install
```

To deploy it to a remote Maven repository instead, configure the settings of the repository and execute:

```shell
mvn deploy
```

Refer to the [official documentation](https://maven.apache.org/plugins/maven-deploy-plugin/usage.html) for more information.

### Maven users

Add this dependency to your project's POM:

```xml
<dependency>
    <groupId>org.openapitools</groupId>
    <artifactId>guest-sdk</artifactId>
    <version>1.0.0</version>
    <scope>compile</scope>
</dependency>
```

### Gradle users

Add this dependency to your project's build file:

```groovy
compile "org.openapitools:guest-sdk:1.0.0"
```

### Others

At first generate the JAR by executing:

    mvn package

Then manually install the following JARs:

- target/guest-sdk-1.0.0.jar
- target/lib/*.jar

## Getting Started

Please follow the [installation](#installation) instruction and execute the following Java code:

```java

import GuestSDK.AuditLogsApi;

public class AuditLogsApiExample {

    public static void main(String[] args) {
        AuditLogsApi apiInstance = new AuditLogsApi();
        String auditLogId = null; // String | A unique identifier for an `AuditLog`.
        try {
            AuditLog result = apiInstance.getAuditLog(auditLogId);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling AuditLogsApi#getAuditLog");
            e.printStackTrace();
        }
    }
}

```

## Documentation for API Endpoints

All URIs are relative to *https://mobile-api-refactor-admin.tractionguest.ca/api/v3*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AuditLogsApi* | [**getAuditLog**](docs/AuditLogsApi.md#getAuditLog) | **GET** /audit_logs/{auditLogId} | Get an AuditLog
*AuditLogsApi* | [**getAuditLogs**](docs/AuditLogsApi.md#getAuditLogs) | **GET** /audit_logs | List All AuditLogs
*EmailTemplatesApi* | [**getEmailTemplates**](docs/EmailTemplatesApi.md#getEmailTemplates) | **GET** /email_templates | List All EmailTemplates
*GuestAlertsApi* | [**createGuestAlert**](docs/GuestAlertsApi.md#createGuestAlert) | **POST** /guest_alerts | Create Guest Alert
*HostsApi* | [**createHost**](docs/HostsApi.md#createHost) | **POST** /hosts | Create a Host
*HostsApi* | [**getHosts**](docs/HostsApi.md#getHosts) | **GET** /hosts | List All Hosts
*InvitesApi* | [**createLocationInvite**](docs/InvitesApi.md#createLocationInvite) | **POST** /locations/{locationId}/invites | Creates an Invite
*InvitesApi* | [**deleteInvite**](docs/InvitesApi.md#deleteInvite) | **DELETE** /invites/{inviteId} | Deletes an Invite
*InvitesApi* | [**getInvite**](docs/InvitesApi.md#getInvite) | **GET** /invites/{inviteId} | Get a Invite
*InvitesApi* | [**getInvites**](docs/InvitesApi.md#getInvites) | **GET** /invites | List All Invites
*InvitesApi* | [**updateInvite**](docs/InvitesApi.md#updateInvite) | **PUT** /invites/{inviteId} | Update a Invite
*LocationsApi* | [**getLocations**](docs/LocationsApi.md#getLocations) | **GET** /locations | List All Locations
*RegistrationApi* | [**getRegistration**](docs/RegistrationApi.md#getRegistration) | **GET** /registrations/{registrationId} | Get a Registration
*SigninsApi* | [**createSignin**](docs/SigninsApi.md#createSignin) | **POST** /signins | Create a Signin
*SigninsApi* | [**getSignin**](docs/SigninsApi.md#getSignin) | **GET** /signins/{signinId} | Get a Signin
*SigninsApi* | [**getSignins**](docs/SigninsApi.md#getSignins) | **GET** /signins | List All Signins
*SigninsApi* | [**updateSignin**](docs/SigninsApi.md#updateSignin) | **PUT** /signins/{signinId} | Update a Signin attribute
*UsersApi* | [**getCurrentUser**](docs/UsersApi.md#getCurrentUser) | **GET** /users/{userId} | Get the current User
*WatchlistsApi* | [**createWatchlist**](docs/WatchlistsApi.md#createWatchlist) | **POST** /watchlists | Create watchlist
*WatchlistsApi* | [**deleteWatchlist**](docs/WatchlistsApi.md#deleteWatchlist) | **DELETE** /watchlists/{watchlistId} | Deletes a Watchlist
*WatchlistsApi* | [**getWatchlist**](docs/WatchlistsApi.md#getWatchlist) | **GET** /watchlists/{watchlistId} | Get a Watchlist
*WatchlistsApi* | [**getWatchlists**](docs/WatchlistsApi.md#getWatchlists) | **GET** /watchlists | List All Watchlists
*WatchlistsApi* | [**updateWatchlist**](docs/WatchlistsApi.md#updateWatchlist) | **PUT** /watchlists/{watchlistId} | Update a watchlist record


## Documentation for Models

 - [AuditLog](docs/AuditLog.md)
 - [AuditLogChange](docs/AuditLogChange.md)
 - [CustomField](docs/CustomField.md)
 - [Docusign](docs/Docusign.md)
 - [EmailTemplate](docs/EmailTemplate.md)
 - [Error](docs/Error.md)
 - [ErrorsList](docs/ErrorsList.md)
 - [ExternalWatchlistResult](docs/ExternalWatchlistResult.md)
 - [FlexField](docs/FlexField.md)
 - [GuestAlertCreateParams](docs/GuestAlertCreateParams.md)
 - [GuestAlertDetail](docs/GuestAlertDetail.md)
 - [GuestAlertSigninSelectors](docs/GuestAlertSigninSelectors.md)
 - [GuestResponse](docs/GuestResponse.md)
 - [Host](docs/Host.md)
 - [InternalWatchlistResult](docs/InternalWatchlistResult.md)
 - [Invite](docs/Invite.md)
 - [InviteCreateParams](docs/InviteCreateParams.md)
 - [InviteDetail](docs/InviteDetail.md)
 - [InviteUpdateParams](docs/InviteUpdateParams.md)
 - [InviteWatchlist](docs/InviteWatchlist.md)
 - [Location](docs/Location.md)
 - [NotificationTrigger](docs/NotificationTrigger.md)
 - [NotificationTriggerCreateParams](docs/NotificationTriggerCreateParams.md)
 - [PaginatedAuditLogsList](docs/PaginatedAuditLogsList.md)
 - [PaginatedEmailTemplatesList](docs/PaginatedEmailTemplatesList.md)
 - [PaginatedHostsList](docs/PaginatedHostsList.md)
 - [PaginatedInvitesList](docs/PaginatedInvitesList.md)
 - [PaginatedLocationsList](docs/PaginatedLocationsList.md)
 - [PaginatedSigninsList](docs/PaginatedSigninsList.md)
 - [PaginatedWatchlistList](docs/PaginatedWatchlistList.md)
 - [Pagination](docs/Pagination.md)
 - [PermissionGroup](docs/PermissionGroup.md)
 - [Registration](docs/Registration.md)
 - [SignableDocument](docs/SignableDocument.md)
 - [Signin](docs/Signin.md)
 - [SigninAcknowledgement](docs/SigninAcknowledgement.md)
 - [SigninCreateParams](docs/SigninCreateParams.md)
 - [SigninData](docs/SigninData.md)
 - [SigninDetail](docs/SigninDetail.md)
 - [SigninUpdateParams](docs/SigninUpdateParams.md)
 - [SigninWatchlist](docs/SigninWatchlist.md)
 - [SimpleSignature](docs/SimpleSignature.md)
 - [User](docs/User.md)
 - [Visitor](docs/Visitor.md)
 - [Watchlist](docs/Watchlist.md)
 - [WatchlistCreateParams](docs/WatchlistCreateParams.md)
 - [WatchlistMatch](docs/WatchlistMatch.md)
 - [WatchlistSearch](docs/WatchlistSearch.md)


## Documentation for Authorization

Authentication schemes defined for the API:
### TractionGuestAuth



## Recommendation

It's recommended to create an instance of `ApiClient` per thread in a multithreaded environment to avoid any potential issues.

## Author

bmckay@tractionguest.com

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
        String auditLogId = null; // String | 
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

All URIs are relative to *https://tractionguest.ca/api/v3*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AuditLogsApi* | [**getAuditLog**](docs/AuditLogsApi.md#getAuditLog) | **GET** /audit_logs/{audit_log_id} | Get an AuditLog
*AuditLogsApi* | [**getAuditLogs**](docs/AuditLogsApi.md#getAuditLogs) | **GET** /audit_logs | List all AuditLogs
*CapacitiesApi* | [**getCapacity**](docs/CapacitiesApi.md#getCapacity) | **GET** /locations/{location_id}/capacities | Get the current capacity details for a location
*CapacitiesApi* | [**getCapacityForecast**](docs/CapacitiesApi.md#getCapacityForecast) | **GET** /locations/{location_id}/capacity_forecasts | Get the capacity details for a location
*EmailTemplatesApi* | [**getEmailTemplates**](docs/EmailTemplatesApi.md#getEmailTemplates) | **GET** /email_templates | List all EmailTemplates
*GuestAlertsApi* | [**createGuestAlert**](docs/GuestAlertsApi.md#createGuestAlert) | **POST** /guest_alerts | Create GuestAlert
*HostsApi* | [**createHost**](docs/HostsApi.md#createHost) | **POST** /hosts | Create a Host
*HostsApi* | [**createHosts**](docs/HostsApi.md#createHosts) | **POST** /hosts/batch | Create multiple Hosts
*HostsApi* | [**getHosts**](docs/HostsApi.md#getHosts) | **GET** /hosts | List all Hosts
*InvitesApi* | [**createLocationInvite**](docs/InvitesApi.md#createLocationInvite) | **POST** /locations/{location_id}/invites | Create an Invite
*InvitesApi* | [**createRegistrationInvite**](docs/InvitesApi.md#createRegistrationInvite) | **POST** /registrations/{registration_id}/invites | Create an Invite from a Registration
*InvitesApi* | [**deleteInvite**](docs/InvitesApi.md#deleteInvite) | **DELETE** /invites/{invite_id} | Deletes an Invite
*InvitesApi* | [**getInvite**](docs/InvitesApi.md#getInvite) | **GET** /invites/{invite_id} | Get an Invite
*InvitesApi* | [**getInvites**](docs/InvitesApi.md#getInvites) | **GET** /invites | List all Invites
*InvitesApi* | [**updateInvite**](docs/InvitesApi.md#updateInvite) | **PUT** /invites/{invite_id} | Update an Invite
*LocationsApi* | [**getLocation**](docs/LocationsApi.md#getLocation) | **GET** /locations/{location_id} | Get the details of a location
*LocationsApi* | [**getLocations**](docs/LocationsApi.md#getLocations) | **GET** /locations | List all Locations
*PackagesApi* | [**createPackage**](docs/PackagesApi.md#createPackage) | **POST** /packages | Create package
*PackagesApi* | [**deletePackage**](docs/PackagesApi.md#deletePackage) | **DELETE** /packages/{package_id} | 
*PackagesApi* | [**getPackage**](docs/PackagesApi.md#getPackage) | **GET** /packages/{package_id} | Get Package
*PackagesApi* | [**getPackages**](docs/PackagesApi.md#getPackages) | **GET** /packages | Get packages
*PackagesApi* | [**updatePackage**](docs/PackagesApi.md#updatePackage) | **PUT** /packages/{package_id} | Update Package
*RegistrationsApi* | [**getRegistration**](docs/RegistrationsApi.md#getRegistration) | **GET** /registrations/{registration_id} | Get a Registration
*RegistrationsApi* | [**getRegistrations**](docs/RegistrationsApi.md#getRegistrations) | **GET** /registrations | List all Registrations
*SigninsApi* | [**createSignin**](docs/SigninsApi.md#createSignin) | **POST** /signins | Create Signin
*SigninsApi* | [**getSignin**](docs/SigninsApi.md#getSignin) | **GET** /signins/{signin_id} | Get a Signin
*SigninsApi* | [**getSignins**](docs/SigninsApi.md#getSignins) | **GET** /signins | List all Signins
*SigninsApi* | [**updateSignin**](docs/SigninsApi.md#updateSignin) | **PUT** /signins/{signin_id} | Update a Signin
*UsersApi* | [**getCurrentUser**](docs/UsersApi.md#getCurrentUser) | **GET** /users/{user_id} | Get the current User
*WatchlistsApi* | [**createWatchlist**](docs/WatchlistsApi.md#createWatchlist) | **POST** /watchlists | Create Watchlist
*WatchlistsApi* | [**deleteWatchlist**](docs/WatchlistsApi.md#deleteWatchlist) | **DELETE** /watchlists/{watchlist_id} | Deletes a Watchlist
*WatchlistsApi* | [**getWatchlist**](docs/WatchlistsApi.md#getWatchlist) | **GET** /watchlists/{watchlist_id} | Get a Watchlist
*WatchlistsApi* | [**getWatchlists**](docs/WatchlistsApi.md#getWatchlists) | **GET** /watchlists | List all Watchlists
*WatchlistsApi* | [**updateWatchlist**](docs/WatchlistsApi.md#updateWatchlist) | **PUT** /watchlists/{watchlist_id} | Update a Watchlist


## Documentation for Models

 - [AuditLog](docs/AuditLog.md)
 - [AuditLogChange](docs/AuditLogChange.md)
 - [BatchJob](docs/BatchJob.md)
 - [Capacity](docs/Capacity.md)
 - [CapacityByHourResponse](docs/CapacityByHourResponse.md)
 - [CapacityForecast](docs/CapacityForecast.md)
 - [CustomField](docs/CustomField.md)
 - [Docusign](docs/Docusign.md)
 - [EmailTemplate](docs/EmailTemplate.md)
 - [Error](docs/Error.md)
 - [ErrorsList](docs/ErrorsList.md)
 - [ExternalWatchlistResult](docs/ExternalWatchlistResult.md)
 - [GroupVisit](docs/GroupVisit.md)
 - [GuestAlertCreateParams](docs/GuestAlertCreateParams.md)
 - [GuestAlertDetail](docs/GuestAlertDetail.md)
 - [GuestAlertSigninSelectors](docs/GuestAlertSigninSelectors.md)
 - [GuestResponse](docs/GuestResponse.md)
 - [Host](docs/Host.md)
 - [HostBatchCreateParams](docs/HostBatchCreateParams.md)
 - [HostCreateParams](docs/HostCreateParams.md)
 - [Image](docs/Image.md)
 - [InternalWatchlistResult](docs/InternalWatchlistResult.md)
 - [Invite](docs/Invite.md)
 - [InviteCreateParams](docs/InviteCreateParams.md)
 - [InviteDetail](docs/InviteDetail.md)
 - [InviteUpdateParams](docs/InviteUpdateParams.md)
 - [InviteWatchlist](docs/InviteWatchlist.md)
 - [Location](docs/Location.md)
 - [ModelPackage](docs/ModelPackage.md)
 - [NotificationTrigger](docs/NotificationTrigger.md)
 - [NotificationTriggerCreateParams](docs/NotificationTriggerCreateParams.md)
 - [PackageCreateParams](docs/PackageCreateParams.md)
 - [PackageUpdateParams](docs/PackageUpdateParams.md)
 - [PaginatedAuditLogsList](docs/PaginatedAuditLogsList.md)
 - [PaginatedEmailTemplatesList](docs/PaginatedEmailTemplatesList.md)
 - [PaginatedHostsList](docs/PaginatedHostsList.md)
 - [PaginatedInvitesList](docs/PaginatedInvitesList.md)
 - [PaginatedLocationsList](docs/PaginatedLocationsList.md)
 - [PaginatedPackagesList](docs/PaginatedPackagesList.md)
 - [PaginatedRegistrationsList](docs/PaginatedRegistrationsList.md)
 - [PaginatedSigninsList](docs/PaginatedSigninsList.md)
 - [PaginatedWatchlistList](docs/PaginatedWatchlistList.md)
 - [Pagination](docs/Pagination.md)
 - [PermissionGroup](docs/PermissionGroup.md)
 - [Registration](docs/Registration.md)
 - [RegistrationDetail](docs/RegistrationDetail.md)
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

support@tractionguest.com


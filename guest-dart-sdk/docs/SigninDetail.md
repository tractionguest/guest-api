# guest_sdk.model.SigninDetail

## Load the model package
```dart
import 'package:guest_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [default to null]
**company** | **String** |  | [optional] [default to null]
**email** | **String** |  | [optional] [default to null]
**firstName** | **String** |  | [optional] [default to null]
**isAccountedFor** | **bool** |  | [optional] [default to null]
**isAcknowledged** | **bool** | Whether this Signin has been acknowledged yet. Can also be used as a one-way method of setting the Signin as acknowledged. | [optional] [default to null]
**lastName** | **String** |  | [optional] [default to null]
**locationName** | **String** |  | [optional] [default to null]
**mobileNumber** | **String** |  | [optional] [default to null]
**signedOutTimestamp** | [**DateTime**](DateTime.md) |  | [optional] [default to null]
**signinPhotoUrl** | **String** |  | [optional] [default to null]
**signinTimestamp** | [**DateTime**](DateTime.md) |  | [optional] [default to null]
**watchlist** | [**SigninWatchlist**](SigninWatchlist.md) |  | [optional] [default to null]
**isSignedOut** | **bool** | A one-way method of Signing out a Signin | [optional] [default to null]
**note** | **String** |  | [optional] [default to null]
**signinAcknowledgement** | [**SigninAcknowledgement**](SigninAcknowledgement.md) |  | [optional] [default to null]
**signinData** | [**List&lt;SigninData&gt;**](SigninData.md) |  | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



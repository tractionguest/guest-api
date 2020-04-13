# guest_sdk.model.Registration

## Load the model package
```dart
import 'package:guest_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Registration unique identifier | [optional] [default to null]
**createdAt** | [**DateTime**](DateTime.md) | Datetime when registration was created | [optional] [default to null]
**name** | **String** | Guest&#39;s name | [optional] [default to null]
**email** | **String** | E-mail | [optional] [default to null]
**company** | **String** | Company&#39;s name | [optional] [default to null]
**photoUrl** | **String** | URL of the uploaded photo | [optional] [default to null]
**guestReponses** | [**List&lt;GuestResponse&gt;**](GuestResponse.md) | Response given by the guest | [optional] [default to []]
**invite** | [**Invite**](Invite.md) |  | [optional] [default to null]
**visitor** | [**Visitor**](Visitor.md) |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


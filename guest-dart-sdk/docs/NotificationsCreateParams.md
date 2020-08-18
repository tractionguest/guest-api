# guest_sdk.model.NotificationsCreateParams

## Load the model package
```dart
import 'package:guest_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**message** | **String** | Notification body  | [default to null]
**signinFilters** | [**NotificationsSigninFilterParams**](NotificationsSigninFilterParams.md) |  | [optional] [default to null]
**channels** | **String** | Specify the broadcast channel, such as &#39;SMS&#39; or &#39;EMAIL&#39; | [default to null]
**hostFilters** | [**NotificationsHostFilterParams**](NotificationsHostFilterParams.md) |  | [optional] [default to null]
**target** | **String** | The type of object that will receive the notification such as, &#39;signin&#39; or &#39;host&#39; | [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



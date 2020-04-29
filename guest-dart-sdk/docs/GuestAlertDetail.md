# guest_sdk.model.GuestAlertDetail

## Load the model package
```dart
import 'package:guest_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**deliveryStatus** | **String** | pending, success, partial success, or failure  | [default to null]
**pendingCount** | **int** | Count of pending messages  | [default to null]
**sentCount** | **int** | Count of successfully sent messages  | [default to null]
**failedCount** | **int** | Count of messages that failed to be sent | [default to null]
**message** | **String** |  | [default to null]
**uuid** | **String** | The uuid of the guest_alert object | [default to null]
**channels** | **List&lt;String&gt;** | Channel used to send the message | [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



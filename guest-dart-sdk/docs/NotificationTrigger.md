# guest_sdk.model.NotificationTrigger

## Load the model package
```dart
import 'package:guest_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**offsetDirection** | **String** | Whether the offset should be calculated for before, or after the event | [default to null]
**offsetAmount** | **int** | The amount to offset the notification from the event | [default to null]
**offsetOrigin** | [**Object**](.md) | Whether the offset should be calculated from the start, or finish of the event | [default to null]
**emailTemplateId** | **int** |  | [default to null]
**notificationGroups** | **List&lt;String&gt;** | An array made of only &#x60;INVITEE&#x60;, &#x60;HOSTS, or &#x60;LEP&#x60; as possible string values | [default to []]
**offsetUnit** | **String** | Whether the offset should be calculated as &#x60;days&#x60; or &#x60;hours&#x60; | [default to null]
**emailTemplateName** | **String** | The name of the EmailTemplate associated with the NotificationTrigger. This is only given from the server, not used as a create param. | [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



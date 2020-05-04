# guest_sdk.model.SigninCreateParams

## Load the model package
```dart
import 'package:guest_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**registrationId** | **String** | UUID of a Registration | [optional] [default to null]
**email** | **String** | E-mail, ignored if &#x60;registration_id&#x60; is included | [optional] [default to null]
**company** | **String** | Company name, ignored if &#x60;registration_id&#x60; is included | [optional] [default to null]
**lastName** | **String** | Last name, ignored if &#x60;registration_id&#x60; is included | [optional] [default to null]
**firstName** | **String** | First name, ignored if &#x60;registration_id&#x60; is included | [optional] [default to null]
**smsMessage** | **String** |  | [optional] [default to null]
**sendNotifications** | **bool** |  | [optional] [default to null]
**locationId** | **int** | ID of the Location where the Signin happened, ignored if &#x60;registration_id&#x60; is included | [optional] [default to null]
**hostIds** | **List&lt;int&gt;** | Array of Host ids, ignored if &#x60;registration_id&#x60; is included | [optional] [default to []]
**hostEmailTemplateId** | **int** |  | [optional] [default to null]
**guestEmailTemplateId** | **int** |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



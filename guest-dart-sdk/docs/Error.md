# guest_sdk.model.Error

## Load the model package
```dart
import 'package:guest_sdk/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**domain** | **String** | The name of the model with the error, or global if it is something outside a model | [default to null]
**attribute** | **String** | The model attribute where the error occured | [optional] [default to null]
**code** | **String** | An error code reference for the specific error that occured | [default to null]
**message** | **String** | A human readable error message that can be discarded for internationalization purposes | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



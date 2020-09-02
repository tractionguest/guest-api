

# NotificationTriggerCreateParams

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**offsetUnit** | [**OffsetUnitEnum**](#OffsetUnitEnum) | Whether the offset should be calculated as &#x60;days&#x60; or &#x60;hours&#x60; | 
**notificationGroups** | **List&lt;String&gt;** | An array made of only &#x60;INVITEE&#x60;, &#x60;HOSTS, or &#x60;LEP&#x60; as possible string values | 
**emailTemplateId** | **Integer** |  | 
**offsetOrigin** | [**OffsetOriginEnum**](#OffsetOriginEnum) | Whether the offset should be calculated from the start, or finish of the event | 
**offsetAmount** | **Integer** | The amount to offset the notification from the event | 
**offsetDirection** | [**OffsetDirectionEnum**](#OffsetDirectionEnum) | Whether the offset should be calculated for before, or after the event | 


## Enum: OffsetUnitEnum

Name | Value
---- | -----


## Enum: OffsetOriginEnum

Name | Value
---- | -----


## Enum: OffsetDirectionEnum

Name | Value
---- | -----





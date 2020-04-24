

# NotificationTriggerCreateParams

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**offsetDirection** | [**OffsetDirectionEnum**](#OffsetDirectionEnum) | Whether the offset should be calculated for before, or after the event | 
**offsetAmount** | **Integer** | The amount to offset the notification from the event | 
**offsetOrigin** | [**OffsetOriginEnum**](#OffsetOriginEnum) | Whether the offset should be calculated from the start, or finish of the event | 
**emailTemplateId** | **Integer** |  | 
**notificationGroups** | **List&lt;String&gt;** | An array made of only &#x60;INVITEE&#x60;, &#x60;HOSTS, or &#x60;LEP&#x60; as possible string values | 
**offsetUnit** | [**OffsetUnitEnum**](#OffsetUnitEnum) | Whether the offset should be calculated as &#x60;days&#x60; or &#x60;hours&#x60; | 


## Enum: OffsetDirectionEnum

Name | Value
---- | -----


## Enum: OffsetOriginEnum

Name | Value
---- | -----


## Enum: OffsetUnitEnum

Name | Value
---- | -----





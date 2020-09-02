

# SigninCreateParams

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**registrationId** | **String** | UUID of a Registration |  [optional]
**email** | **String** | E-mail, ignored if &#x60;registration_id&#x60; is included |  [optional]
**company** | **String** | Company name, ignored if &#x60;registration_id&#x60; is included |  [optional]
**lastName** | **String** | Last name, ignored if &#x60;registration_id&#x60; is included |  [optional]
**firstName** | **String** | First name, ignored if &#x60;registration_id&#x60; is included |  [optional]
**smsMessage** | **String** |  |  [optional]
**sendNotifications** | **Boolean** |  |  [optional]
**locationId** | **Integer** | ID of the Location where the Signin happened, ignored if &#x60;registration_id&#x60; is included |  [optional]
**hostIds** | **List&lt;Integer&gt;** | Array of Host ids, ignored if &#x60;registration_id&#x60; is included |  [optional]
**hostEmailTemplateId** | **Integer** |  |  [optional]
**guestEmailTemplateId** | **Integer** |  |  [optional]





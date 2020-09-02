

# ModelPackage

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** |  | 
**recipient** | [**Host**](Host.md) |  |  [optional]
**location** | [**Location**](Location.md) |  | 
**packageState** | [**PackageStateEnum**](#PackageStateEnum) | this can be one of the following states: &#39;processing&#39;, &#39;recipient_matched&#39;, &#39;needs_attention&#39; or &#39;picked_up&#39; | 
**carrierName** | **String** | A carrier name that gets detected on the shipping label. i.e. USPS, Purolator, DHL, Canada Post, Royal Mail, etc...  |  [optional]
**pickedUpAt** | [**Date**](Date.md) |  |  [optional]
**createdAt** | [**Date**](Date.md) |  | 
**image** | [**Image**](Image.md) |  |  [optional]


## Enum: PackageStateEnum

Name | Value
---- | -----





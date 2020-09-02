# Package

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Int** |  | 
**recipient** | [**Host**](Host.md) |  | [optional] 
**location** | [**Location**](Location.md) |  | 
**packageState** | **String** | this can be one of the following states: &#39;processing&#39;, &#39;recipient_matched&#39;, &#39;needs_attention&#39; or &#39;picked_up&#39; | 
**carrierName** | **String** | A carrier name that gets detected on the shipping label. i.e. USPS, Purolator, DHL, Canada Post, Royal Mail, etc...  | [optional] 
**pickedUpAt** | **Date** |  | [optional] 
**createdAt** | **Date** |  | 
**image** | [**Image**](Image.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



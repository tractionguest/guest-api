# TGPackage

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_id** | **NSNumber*** |  | 
**recipient** | [**TGHost***](TGHost.md) |  | [optional] 
**location** | [**TGLocation***](TGLocation.md) |  | 
**packageState** | **NSString*** | this can be one of the following states: &#39;processing&#39;, &#39;recipient_matched&#39;, &#39;needs_attention&#39; or &#39;picked_up&#39; | 
**carrierName** | **NSString*** | A carrier name that gets detected on the shipping label. i.e. USPS, Purolator, DHL, Canada Post, Royal Mail, etc...  | [optional] 
**pickedUpAt** | **NSDate*** |  | [optional] 
**createdAt** | **NSDate*** |  | 
**image** | [**TGImage***](TGImage.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



/**
 * Traction Guest API
 * The Traction Guest API is currently in **closed beta**. We're still building, testing, and fixing bugs.  If you're interested in helping us get to version 1.0.0, contact your CS team representative. Only paid accounts are elligible.  # Slack  Do you have Slack? Want faster answers to Traction Guest API questions?  Ask to be added to the Traction Guest API Slack channel!  Talk to your CS team representative, or send an email to the API support email above, and we'll add you.  # Versioning  This API follows [semantic versioning](https://semver.org/), which follows the `Major`.`Minor`.`Patch` format. In short:  * The `Major` number increments when potentially incompatible changes are made. * The `Minor` number increments when backwards-compatible additions are made. * The `Patch` number increments when backwards-compatible bug-fixes are made.  So, once the API is out of closed beta, and has reached version 1.0.0, some things may change.  **However**, the developers at Traction Guest strive to keep things running smoothly for our clients. We plan to **deprecate and warn** before making any potentially breaking changes; you may receive messages that follow the format \"this is deprecated, and will be removed in version X.X.X, which is scheduled for release on or after 20XX-01-01.\" Please note that the deprecation message format and content may change.  At this time, we are not planning to make older or 'legacy' versions of the API available, going forward.  # Getting Started  Would you like your team to be a part of closed beta testing? Talk to your CS team representative. We'll walk you through the process of enabling API access and provisioning your account. 
 *
 * The version of the OpenAPI document: 0.12.3
 * Contact: support@tractionguest.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

package GuestSDK;

import org.openapitools.client.ApiInvoker;
import org.openapitools.client.ApiException;
import org.openapitools.client.Pair;

import org.openapitools.client.model.*;

import java.util.*;

import com.android.volley.Response;
import com.android.volley.VolleyError;

import java.util.Date;
import org.openapitools.client.model.ErrorsList;
import org.openapitools.client.model.InviteCreateParams;
import org.openapitools.client.model.InviteDetail;
import org.openapitools.client.model.InviteUpdateParams;
import org.openapitools.client.model.PaginatedInvitesList;

import org.apache.http.HttpEntity;
import org.apache.http.entity.mime.MultipartEntityBuilder;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeoutException;

public class InvitesApi {
  String basePath = "https://tractionguest.ca/api/v3";
  ApiInvoker apiInvoker = ApiInvoker.getInstance();

  public void addHeader(String key, String value) {
    getInvoker().addDefaultHeader(key, value);
  }

  public ApiInvoker getInvoker() {
    return apiInvoker;
  }

  public void setBasePath(String basePath) {
    this.basePath = basePath;
  }

  public String getBasePath() {
    return basePath;
  }

  /**
  * Create an Invite
  * Creates a new &#x60;Invite&#x60; for a specific &#x60;Location&#x60;.
   * @param locationId 
   * @param inviteCreateParams 
   * @param idempotencyKey An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it&#39;s submitted. We store idempotency keys for only 24 hours. Any &#x60;Idempotency-Key&#x60; shorter than 10 characters will be ignored
   * @return InviteDetail
  */
  public InviteDetail createLocationInvite (String locationId, InviteCreateParams inviteCreateParams, String idempotencyKey) throws TimeoutException, ExecutionException, InterruptedException, ApiException {
    Object postBody = inviteCreateParams;
    // verify the required parameter 'locationId' is set
    if (locationId == null) {
      VolleyError error = new VolleyError("Missing the required parameter 'locationId' when calling createLocationInvite",
        new ApiException(400, "Missing the required parameter 'locationId' when calling createLocationInvite"));
    }
    // verify the required parameter 'inviteCreateParams' is set
    if (inviteCreateParams == null) {
      VolleyError error = new VolleyError("Missing the required parameter 'inviteCreateParams' when calling createLocationInvite",
        new ApiException(400, "Missing the required parameter 'inviteCreateParams' when calling createLocationInvite"));
    }

    // create path and map variables
    String path = "/locations/{location_id}/invites".replaceAll("\\{" + "location_id" + "\\}", apiInvoker.escapeString(locationId.toString()));

    // query params
    List<Pair> queryParams = new ArrayList<Pair>();
    // header params
    Map<String, String> headerParams = new HashMap<String, String>();
    // form params
    Map<String, String> formParams = new HashMap<String, String>();
    headerParams.put("Idempotency-Key", ApiInvoker.parameterToString(idempotencyKey));
    String[] contentTypes = {
      "application/json"
    };
    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    if (contentType.startsWith("multipart/form-data")) {
      // file uploading
      MultipartEntityBuilder localVarBuilder = MultipartEntityBuilder.create();
      HttpEntity httpEntity = localVarBuilder.build();
      postBody = httpEntity;
    } else {
      // normal form params
    }

    String[] authNames = new String[] { "TractionGuestAuth" };

    try {
      String localVarResponse = apiInvoker.invokeAPI (basePath, path, "POST", queryParams, postBody, headerParams, formParams, contentType, authNames);
      if (localVarResponse != null) {
         return (InviteDetail) ApiInvoker.deserialize(localVarResponse, "", InviteDetail.class);
      } else {
         return null;
      }
    } catch (ApiException ex) {
       throw ex;
    } catch (InterruptedException ex) {
       throw ex;
    } catch (ExecutionException ex) {
      if (ex.getCause() instanceof VolleyError) {
        VolleyError volleyError = (VolleyError)ex.getCause();
        if (volleyError.networkResponse != null) {
          throw new ApiException(volleyError.networkResponse.statusCode, volleyError.getMessage());
        }
      }
      throw ex;
    } catch (TimeoutException ex) {
      throw ex;
    }
  }

      /**
   * Create an Invite
   * Creates a new &#x60;Invite&#x60; for a specific &#x60;Location&#x60;.
   * @param locationId    * @param inviteCreateParams    * @param idempotencyKey An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it&#39;s submitted. We store idempotency keys for only 24 hours. Any &#x60;Idempotency-Key&#x60; shorter than 10 characters will be ignored
  */
  public void createLocationInvite (String locationId, InviteCreateParams inviteCreateParams, String idempotencyKey, final Response.Listener<InviteDetail> responseListener, final Response.ErrorListener errorListener) {
    Object postBody = inviteCreateParams;

    // verify the required parameter 'locationId' is set
    if (locationId == null) {
      VolleyError error = new VolleyError("Missing the required parameter 'locationId' when calling createLocationInvite",
        new ApiException(400, "Missing the required parameter 'locationId' when calling createLocationInvite"));
    }
    // verify the required parameter 'inviteCreateParams' is set
    if (inviteCreateParams == null) {
      VolleyError error = new VolleyError("Missing the required parameter 'inviteCreateParams' when calling createLocationInvite",
        new ApiException(400, "Missing the required parameter 'inviteCreateParams' when calling createLocationInvite"));
    }

    // create path and map variables
    String path = "/locations/{location_id}/invites".replaceAll("\\{format\\}","json").replaceAll("\\{" + "location_id" + "\\}", apiInvoker.escapeString(locationId.toString()));

    // query params
    List<Pair> queryParams = new ArrayList<Pair>();
    // header params
    Map<String, String> headerParams = new HashMap<String, String>();
    // form params
    Map<String, String> formParams = new HashMap<String, String>();


    headerParams.put("Idempotency-Key", ApiInvoker.parameterToString(idempotencyKey));

    String[] contentTypes = {
      "application/json"
    };
    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    if (contentType.startsWith("multipart/form-data")) {
      // file uploading
      MultipartEntityBuilder localVarBuilder = MultipartEntityBuilder.create();
      

      HttpEntity httpEntity = localVarBuilder.build();
      postBody = httpEntity;
    } else {
      // normal form params
          }

    String[] authNames = new String[] { "TractionGuestAuth" };

    try {
      apiInvoker.invokeAPI(basePath, path, "POST", queryParams, postBody, headerParams, formParams, contentType, authNames,
        new Response.Listener<String>() {
          @Override
          public void onResponse(String localVarResponse) {
            try {
              responseListener.onResponse((InviteDetail) ApiInvoker.deserialize(localVarResponse,  "", InviteDetail.class));
            } catch (ApiException exception) {
               errorListener.onErrorResponse(new VolleyError(exception));
            }
          }
      }, new Response.ErrorListener() {
          @Override
          public void onErrorResponse(VolleyError error) {
            errorListener.onErrorResponse(error);
          }
      });
    } catch (ApiException ex) {
      errorListener.onErrorResponse(new VolleyError(ex));
    }
  }
  /**
  * Deletes an Invite
  * Deletes a single instance of &#x60;Invite&#x60;
   * @param inviteId 
   * @param idempotencyKey An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it&#39;s submitted. We store idempotency keys for only 24 hours. Any &#x60;Idempotency-Key&#x60; shorter than 10 characters will be ignored
   * @return void
  */
  public void deleteInvite (String inviteId, String idempotencyKey) throws TimeoutException, ExecutionException, InterruptedException, ApiException {
    Object postBody = null;
    // verify the required parameter 'inviteId' is set
    if (inviteId == null) {
      VolleyError error = new VolleyError("Missing the required parameter 'inviteId' when calling deleteInvite",
        new ApiException(400, "Missing the required parameter 'inviteId' when calling deleteInvite"));
    }

    // create path and map variables
    String path = "/invites/{invite_id}".replaceAll("\\{" + "invite_id" + "\\}", apiInvoker.escapeString(inviteId.toString()));

    // query params
    List<Pair> queryParams = new ArrayList<Pair>();
    // header params
    Map<String, String> headerParams = new HashMap<String, String>();
    // form params
    Map<String, String> formParams = new HashMap<String, String>();
    headerParams.put("Idempotency-Key", ApiInvoker.parameterToString(idempotencyKey));
    String[] contentTypes = {
    };
    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    if (contentType.startsWith("multipart/form-data")) {
      // file uploading
      MultipartEntityBuilder localVarBuilder = MultipartEntityBuilder.create();
      HttpEntity httpEntity = localVarBuilder.build();
      postBody = httpEntity;
    } else {
      // normal form params
    }

    String[] authNames = new String[] { "TractionGuestAuth" };

    try {
      String localVarResponse = apiInvoker.invokeAPI (basePath, path, "DELETE", queryParams, postBody, headerParams, formParams, contentType, authNames);
      if (localVarResponse != null) {
         return ;
      } else {
         return ;
      }
    } catch (ApiException ex) {
       throw ex;
    } catch (InterruptedException ex) {
       throw ex;
    } catch (ExecutionException ex) {
      if (ex.getCause() instanceof VolleyError) {
        VolleyError volleyError = (VolleyError)ex.getCause();
        if (volleyError.networkResponse != null) {
          throw new ApiException(volleyError.networkResponse.statusCode, volleyError.getMessage());
        }
      }
      throw ex;
    } catch (TimeoutException ex) {
      throw ex;
    }
  }

      /**
   * Deletes an Invite
   * Deletes a single instance of &#x60;Invite&#x60;
   * @param inviteId    * @param idempotencyKey An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it&#39;s submitted. We store idempotency keys for only 24 hours. Any &#x60;Idempotency-Key&#x60; shorter than 10 characters will be ignored
  */
  public void deleteInvite (String inviteId, String idempotencyKey, final Response.Listener<String> responseListener, final Response.ErrorListener errorListener) {
    Object postBody = null;

    // verify the required parameter 'inviteId' is set
    if (inviteId == null) {
      VolleyError error = new VolleyError("Missing the required parameter 'inviteId' when calling deleteInvite",
        new ApiException(400, "Missing the required parameter 'inviteId' when calling deleteInvite"));
    }

    // create path and map variables
    String path = "/invites/{invite_id}".replaceAll("\\{format\\}","json").replaceAll("\\{" + "invite_id" + "\\}", apiInvoker.escapeString(inviteId.toString()));

    // query params
    List<Pair> queryParams = new ArrayList<Pair>();
    // header params
    Map<String, String> headerParams = new HashMap<String, String>();
    // form params
    Map<String, String> formParams = new HashMap<String, String>();


    headerParams.put("Idempotency-Key", ApiInvoker.parameterToString(idempotencyKey));

    String[] contentTypes = {
      
    };
    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    if (contentType.startsWith("multipart/form-data")) {
      // file uploading
      MultipartEntityBuilder localVarBuilder = MultipartEntityBuilder.create();
      

      HttpEntity httpEntity = localVarBuilder.build();
      postBody = httpEntity;
    } else {
      // normal form params
          }

    String[] authNames = new String[] { "TractionGuestAuth" };

    try {
      apiInvoker.invokeAPI(basePath, path, "DELETE", queryParams, postBody, headerParams, formParams, contentType, authNames,
        new Response.Listener<String>() {
          @Override
          public void onResponse(String localVarResponse) {
              responseListener.onResponse(localVarResponse);
          }
      }, new Response.ErrorListener() {
          @Override
          public void onErrorResponse(VolleyError error) {
            errorListener.onErrorResponse(error);
          }
      });
    } catch (ApiException ex) {
      errorListener.onErrorResponse(new VolleyError(ex));
    }
  }
  /**
  * Get an Invite
  * Gets the details of a single instance of a &#x60;Invite&#x60;.
   * @param inviteId 
   * @param include A list of comma-separated related models to include
   * @return InviteDetail
  */
  public InviteDetail getInvite (String inviteId, String include) throws TimeoutException, ExecutionException, InterruptedException, ApiException {
    Object postBody = null;
    // verify the required parameter 'inviteId' is set
    if (inviteId == null) {
      VolleyError error = new VolleyError("Missing the required parameter 'inviteId' when calling getInvite",
        new ApiException(400, "Missing the required parameter 'inviteId' when calling getInvite"));
    }

    // create path and map variables
    String path = "/invites/{invite_id}".replaceAll("\\{" + "invite_id" + "\\}", apiInvoker.escapeString(inviteId.toString()));

    // query params
    List<Pair> queryParams = new ArrayList<Pair>();
    // header params
    Map<String, String> headerParams = new HashMap<String, String>();
    // form params
    Map<String, String> formParams = new HashMap<String, String>();
    queryParams.addAll(ApiInvoker.parameterToPairs("", "include", include));
    String[] contentTypes = {
    };
    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    if (contentType.startsWith("multipart/form-data")) {
      // file uploading
      MultipartEntityBuilder localVarBuilder = MultipartEntityBuilder.create();
      HttpEntity httpEntity = localVarBuilder.build();
      postBody = httpEntity;
    } else {
      // normal form params
    }

    String[] authNames = new String[] { "TractionGuestAuth" };

    try {
      String localVarResponse = apiInvoker.invokeAPI (basePath, path, "GET", queryParams, postBody, headerParams, formParams, contentType, authNames);
      if (localVarResponse != null) {
         return (InviteDetail) ApiInvoker.deserialize(localVarResponse, "", InviteDetail.class);
      } else {
         return null;
      }
    } catch (ApiException ex) {
       throw ex;
    } catch (InterruptedException ex) {
       throw ex;
    } catch (ExecutionException ex) {
      if (ex.getCause() instanceof VolleyError) {
        VolleyError volleyError = (VolleyError)ex.getCause();
        if (volleyError.networkResponse != null) {
          throw new ApiException(volleyError.networkResponse.statusCode, volleyError.getMessage());
        }
      }
      throw ex;
    } catch (TimeoutException ex) {
      throw ex;
    }
  }

      /**
   * Get an Invite
   * Gets the details of a single instance of a &#x60;Invite&#x60;.
   * @param inviteId    * @param include A list of comma-separated related models to include
  */
  public void getInvite (String inviteId, String include, final Response.Listener<InviteDetail> responseListener, final Response.ErrorListener errorListener) {
    Object postBody = null;

    // verify the required parameter 'inviteId' is set
    if (inviteId == null) {
      VolleyError error = new VolleyError("Missing the required parameter 'inviteId' when calling getInvite",
        new ApiException(400, "Missing the required parameter 'inviteId' when calling getInvite"));
    }

    // create path and map variables
    String path = "/invites/{invite_id}".replaceAll("\\{format\\}","json").replaceAll("\\{" + "invite_id" + "\\}", apiInvoker.escapeString(inviteId.toString()));

    // query params
    List<Pair> queryParams = new ArrayList<Pair>();
    // header params
    Map<String, String> headerParams = new HashMap<String, String>();
    // form params
    Map<String, String> formParams = new HashMap<String, String>();

    queryParams.addAll(ApiInvoker.parameterToPairs("", "include", include));


    String[] contentTypes = {
      
    };
    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    if (contentType.startsWith("multipart/form-data")) {
      // file uploading
      MultipartEntityBuilder localVarBuilder = MultipartEntityBuilder.create();
      

      HttpEntity httpEntity = localVarBuilder.build();
      postBody = httpEntity;
    } else {
      // normal form params
          }

    String[] authNames = new String[] { "TractionGuestAuth" };

    try {
      apiInvoker.invokeAPI(basePath, path, "GET", queryParams, postBody, headerParams, formParams, contentType, authNames,
        new Response.Listener<String>() {
          @Override
          public void onResponse(String localVarResponse) {
            try {
              responseListener.onResponse((InviteDetail) ApiInvoker.deserialize(localVarResponse,  "", InviteDetail.class));
            } catch (ApiException exception) {
               errorListener.onErrorResponse(new VolleyError(exception));
            }
          }
      }, new Response.ErrorListener() {
          @Override
          public void onErrorResponse(VolleyError error) {
            errorListener.onErrorResponse(error);
          }
      });
    } catch (ApiException ex) {
      errorListener.onErrorResponse(new VolleyError(ex));
    }
  }
  /**
  * List all Invites
  * Gets a list of all &#x60;Invite&#x60; entities.
   * @param limit Limits the results to a specified number, defaults to 50
   * @param offset Offsets the results to a specified number, defaults to 0
   * @param query Filters by &#x60;first_name&#x60;, &#x60;last_name&#x60;, &#x60;company&#x60;, and &#x60;email&#x60;
   * @param withColours A comma separated list of case-insensitive colour values. i.e., &#x60;red&#x60;, &#x60;green&#x60;, &#x60;yellow&#x60;, and &#x60;orange&#x60;
   * @param locationIds A comma separated list of Location IDs
   * @param sortBy Sorts by the field name and direction provided where the pattern is &#x60;FIELD_NAME_DIRECTION&#x60;
   * @param startsBefore Filters results to all those *before* the provided datetime
   * @param startsAfter Filters results to all those *after* the provided datetime
   * @param include A list of comma-separated related models to include
   * @param isApproved True to return approved and auto approved invites, False to return pending and rejected invites
   * @param activeAfter Checks that an invite hasn&#39;t yet started, or has started and is still active after a specified time
   * @param activeBefore Checks that an invite hasn&#39;t ended before a specified time
   * @return PaginatedInvitesList
  */
  public PaginatedInvitesList getInvites (Integer limit, Integer offset, String query, String withColours, String locationIds, String sortBy, Date startsBefore, Date startsAfter, String include, Boolean isApproved, Date activeAfter, Date activeBefore) throws TimeoutException, ExecutionException, InterruptedException, ApiException {
    Object postBody = null;

    // create path and map variables
    String path = "/invites";

    // query params
    List<Pair> queryParams = new ArrayList<Pair>();
    // header params
    Map<String, String> headerParams = new HashMap<String, String>();
    // form params
    Map<String, String> formParams = new HashMap<String, String>();
    queryParams.addAll(ApiInvoker.parameterToPairs("", "limit", limit));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "offset", offset));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "query", query));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "with_colours", withColours));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "location_ids", locationIds));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "sort_by", sortBy));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "starts_before", startsBefore));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "starts_after", startsAfter));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "include", include));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "is_approved", isApproved));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "active_after", activeAfter));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "active_before", activeBefore));
    String[] contentTypes = {
    };
    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    if (contentType.startsWith("multipart/form-data")) {
      // file uploading
      MultipartEntityBuilder localVarBuilder = MultipartEntityBuilder.create();
      HttpEntity httpEntity = localVarBuilder.build();
      postBody = httpEntity;
    } else {
      // normal form params
    }

    String[] authNames = new String[] { "TractionGuestAuth" };

    try {
      String localVarResponse = apiInvoker.invokeAPI (basePath, path, "GET", queryParams, postBody, headerParams, formParams, contentType, authNames);
      if (localVarResponse != null) {
         return (PaginatedInvitesList) ApiInvoker.deserialize(localVarResponse, "", PaginatedInvitesList.class);
      } else {
         return null;
      }
    } catch (ApiException ex) {
       throw ex;
    } catch (InterruptedException ex) {
       throw ex;
    } catch (ExecutionException ex) {
      if (ex.getCause() instanceof VolleyError) {
        VolleyError volleyError = (VolleyError)ex.getCause();
        if (volleyError.networkResponse != null) {
          throw new ApiException(volleyError.networkResponse.statusCode, volleyError.getMessage());
        }
      }
      throw ex;
    } catch (TimeoutException ex) {
      throw ex;
    }
  }

      /**
   * List all Invites
   * Gets a list of all &#x60;Invite&#x60; entities.
   * @param limit Limits the results to a specified number, defaults to 50   * @param offset Offsets the results to a specified number, defaults to 0   * @param query Filters by &#x60;first_name&#x60;, &#x60;last_name&#x60;, &#x60;company&#x60;, and &#x60;email&#x60;   * @param withColours A comma separated list of case-insensitive colour values. i.e., &#x60;red&#x60;, &#x60;green&#x60;, &#x60;yellow&#x60;, and &#x60;orange&#x60;   * @param locationIds A comma separated list of Location IDs   * @param sortBy Sorts by the field name and direction provided where the pattern is &#x60;FIELD_NAME_DIRECTION&#x60;   * @param startsBefore Filters results to all those *before* the provided datetime   * @param startsAfter Filters results to all those *after* the provided datetime   * @param include A list of comma-separated related models to include   * @param isApproved True to return approved and auto approved invites, False to return pending and rejected invites   * @param activeAfter Checks that an invite hasn&#39;t yet started, or has started and is still active after a specified time   * @param activeBefore Checks that an invite hasn&#39;t ended before a specified time
  */
  public void getInvites (Integer limit, Integer offset, String query, String withColours, String locationIds, String sortBy, Date startsBefore, Date startsAfter, String include, Boolean isApproved, Date activeAfter, Date activeBefore, final Response.Listener<PaginatedInvitesList> responseListener, final Response.ErrorListener errorListener) {
    Object postBody = null;


    // create path and map variables
    String path = "/invites".replaceAll("\\{format\\}","json");

    // query params
    List<Pair> queryParams = new ArrayList<Pair>();
    // header params
    Map<String, String> headerParams = new HashMap<String, String>();
    // form params
    Map<String, String> formParams = new HashMap<String, String>();

    queryParams.addAll(ApiInvoker.parameterToPairs("", "limit", limit));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "offset", offset));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "query", query));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "with_colours", withColours));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "location_ids", locationIds));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "sort_by", sortBy));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "starts_before", startsBefore));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "starts_after", startsAfter));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "include", include));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "is_approved", isApproved));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "active_after", activeAfter));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "active_before", activeBefore));


    String[] contentTypes = {
      
    };
    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    if (contentType.startsWith("multipart/form-data")) {
      // file uploading
      MultipartEntityBuilder localVarBuilder = MultipartEntityBuilder.create();
      

      HttpEntity httpEntity = localVarBuilder.build();
      postBody = httpEntity;
    } else {
      // normal form params
          }

    String[] authNames = new String[] { "TractionGuestAuth" };

    try {
      apiInvoker.invokeAPI(basePath, path, "GET", queryParams, postBody, headerParams, formParams, contentType, authNames,
        new Response.Listener<String>() {
          @Override
          public void onResponse(String localVarResponse) {
            try {
              responseListener.onResponse((PaginatedInvitesList) ApiInvoker.deserialize(localVarResponse,  "", PaginatedInvitesList.class));
            } catch (ApiException exception) {
               errorListener.onErrorResponse(new VolleyError(exception));
            }
          }
      }, new Response.ErrorListener() {
          @Override
          public void onErrorResponse(VolleyError error) {
            errorListener.onErrorResponse(error);
          }
      });
    } catch (ApiException ex) {
      errorListener.onErrorResponse(new VolleyError(ex));
    }
  }
  /**
  * Update an Invite
  * Updates an existing &#x60;Invite&#x60;.
   * @param inviteId 
   * @param inviteUpdateParams Updated &#x60;Invite&#x60; information.
   * @param idempotencyKey An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it&#39;s submitted. We store idempotency keys for only 24 hours. Any &#x60;Idempotency-Key&#x60; shorter than 10 characters will be ignored
   * @return InviteDetail
  */
  public InviteDetail updateInvite (String inviteId, InviteUpdateParams inviteUpdateParams, String idempotencyKey) throws TimeoutException, ExecutionException, InterruptedException, ApiException {
    Object postBody = inviteUpdateParams;
    // verify the required parameter 'inviteId' is set
    if (inviteId == null) {
      VolleyError error = new VolleyError("Missing the required parameter 'inviteId' when calling updateInvite",
        new ApiException(400, "Missing the required parameter 'inviteId' when calling updateInvite"));
    }
    // verify the required parameter 'inviteUpdateParams' is set
    if (inviteUpdateParams == null) {
      VolleyError error = new VolleyError("Missing the required parameter 'inviteUpdateParams' when calling updateInvite",
        new ApiException(400, "Missing the required parameter 'inviteUpdateParams' when calling updateInvite"));
    }

    // create path and map variables
    String path = "/invites/{invite_id}".replaceAll("\\{" + "invite_id" + "\\}", apiInvoker.escapeString(inviteId.toString()));

    // query params
    List<Pair> queryParams = new ArrayList<Pair>();
    // header params
    Map<String, String> headerParams = new HashMap<String, String>();
    // form params
    Map<String, String> formParams = new HashMap<String, String>();
    headerParams.put("Idempotency-Key", ApiInvoker.parameterToString(idempotencyKey));
    String[] contentTypes = {
      "application/json"
    };
    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    if (contentType.startsWith("multipart/form-data")) {
      // file uploading
      MultipartEntityBuilder localVarBuilder = MultipartEntityBuilder.create();
      HttpEntity httpEntity = localVarBuilder.build();
      postBody = httpEntity;
    } else {
      // normal form params
    }

    String[] authNames = new String[] { "TractionGuestAuth" };

    try {
      String localVarResponse = apiInvoker.invokeAPI (basePath, path, "PUT", queryParams, postBody, headerParams, formParams, contentType, authNames);
      if (localVarResponse != null) {
         return (InviteDetail) ApiInvoker.deserialize(localVarResponse, "", InviteDetail.class);
      } else {
         return null;
      }
    } catch (ApiException ex) {
       throw ex;
    } catch (InterruptedException ex) {
       throw ex;
    } catch (ExecutionException ex) {
      if (ex.getCause() instanceof VolleyError) {
        VolleyError volleyError = (VolleyError)ex.getCause();
        if (volleyError.networkResponse != null) {
          throw new ApiException(volleyError.networkResponse.statusCode, volleyError.getMessage());
        }
      }
      throw ex;
    } catch (TimeoutException ex) {
      throw ex;
    }
  }

      /**
   * Update an Invite
   * Updates an existing &#x60;Invite&#x60;.
   * @param inviteId    * @param inviteUpdateParams Updated &#x60;Invite&#x60; information.   * @param idempotencyKey An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it&#39;s submitted. We store idempotency keys for only 24 hours. Any &#x60;Idempotency-Key&#x60; shorter than 10 characters will be ignored
  */
  public void updateInvite (String inviteId, InviteUpdateParams inviteUpdateParams, String idempotencyKey, final Response.Listener<InviteDetail> responseListener, final Response.ErrorListener errorListener) {
    Object postBody = inviteUpdateParams;

    // verify the required parameter 'inviteId' is set
    if (inviteId == null) {
      VolleyError error = new VolleyError("Missing the required parameter 'inviteId' when calling updateInvite",
        new ApiException(400, "Missing the required parameter 'inviteId' when calling updateInvite"));
    }
    // verify the required parameter 'inviteUpdateParams' is set
    if (inviteUpdateParams == null) {
      VolleyError error = new VolleyError("Missing the required parameter 'inviteUpdateParams' when calling updateInvite",
        new ApiException(400, "Missing the required parameter 'inviteUpdateParams' when calling updateInvite"));
    }

    // create path and map variables
    String path = "/invites/{invite_id}".replaceAll("\\{format\\}","json").replaceAll("\\{" + "invite_id" + "\\}", apiInvoker.escapeString(inviteId.toString()));

    // query params
    List<Pair> queryParams = new ArrayList<Pair>();
    // header params
    Map<String, String> headerParams = new HashMap<String, String>();
    // form params
    Map<String, String> formParams = new HashMap<String, String>();


    headerParams.put("Idempotency-Key", ApiInvoker.parameterToString(idempotencyKey));

    String[] contentTypes = {
      "application/json"
    };
    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";

    if (contentType.startsWith("multipart/form-data")) {
      // file uploading
      MultipartEntityBuilder localVarBuilder = MultipartEntityBuilder.create();
      

      HttpEntity httpEntity = localVarBuilder.build();
      postBody = httpEntity;
    } else {
      // normal form params
          }

    String[] authNames = new String[] { "TractionGuestAuth" };

    try {
      apiInvoker.invokeAPI(basePath, path, "PUT", queryParams, postBody, headerParams, formParams, contentType, authNames,
        new Response.Listener<String>() {
          @Override
          public void onResponse(String localVarResponse) {
            try {
              responseListener.onResponse((InviteDetail) ApiInvoker.deserialize(localVarResponse,  "", InviteDetail.class));
            } catch (ApiException exception) {
               errorListener.onErrorResponse(new VolleyError(exception));
            }
          }
      }, new Response.ErrorListener() {
          @Override
          public void onErrorResponse(VolleyError error) {
            errorListener.onErrorResponse(error);
          }
      });
    } catch (ApiException ex) {
      errorListener.onErrorResponse(new VolleyError(ex));
    }
  }
}

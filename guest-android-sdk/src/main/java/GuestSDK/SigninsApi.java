/**
 * Traction Guest API
 * The leader in enterprise visitor management, empowers businesses across five continents and dozens of industries to keep people safe while creating connection in the contactless world.
 *
 * The version of the OpenAPI document: 0.11.7
 * Contact: bmckay@tractionguest.com
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
import org.openapitools.client.model.PaginatedSigninsList;
import org.openapitools.client.model.Signin;
import org.openapitools.client.model.SigninCreateParams;
import org.openapitools.client.model.SigninDetail;
import org.openapitools.client.model.SigninUpdateParams;

import org.apache.http.HttpEntity;
import org.apache.http.entity.mime.MultipartEntityBuilder;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeoutException;

public class SigninsApi {
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
  * 
  * Creates a Signin
   * @param signinCreateParams Params for creating a Signin can omit certain fields if a &#x60;registration_id&#x60; is present.
   * @return Signin
  */
  public Signin createSignin (SigninCreateParams signinCreateParams) throws TimeoutException, ExecutionException, InterruptedException, ApiException {
    Object postBody = signinCreateParams;

    // create path and map variables
    String path = "/signins";

    // query params
    List<Pair> queryParams = new ArrayList<Pair>();
    // header params
    Map<String, String> headerParams = new HashMap<String, String>();
    // form params
    Map<String, String> formParams = new HashMap<String, String>();
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
         return (Signin) ApiInvoker.deserialize(localVarResponse, "", Signin.class);
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
   * 
   * Creates a Signin
   * @param signinCreateParams Params for creating a Signin can omit certain fields if a &#x60;registration_id&#x60; is present.
  */
  public void createSignin (SigninCreateParams signinCreateParams, final Response.Listener<Signin> responseListener, final Response.ErrorListener errorListener) {
    Object postBody = signinCreateParams;


    // create path and map variables
    String path = "/signins".replaceAll("\\{format\\}","json");

    // query params
    List<Pair> queryParams = new ArrayList<Pair>();
    // header params
    Map<String, String> headerParams = new HashMap<String, String>();
    // form params
    Map<String, String> formParams = new HashMap<String, String>();



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
              responseListener.onResponse((Signin) ApiInvoker.deserialize(localVarResponse,  "", Signin.class));
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
  * Get a Signin
  * Gets the details of a single instance of a &#x60;Signin&#x60;.
   * @param signinId 
   * @param include A list of comma-separated related models to include
   * @return SigninDetail
  */
  public SigninDetail getSignin (String signinId, String include) throws TimeoutException, ExecutionException, InterruptedException, ApiException {
    Object postBody = null;
    // verify the required parameter 'signinId' is set
    if (signinId == null) {
      VolleyError error = new VolleyError("Missing the required parameter 'signinId' when calling getSignin",
        new ApiException(400, "Missing the required parameter 'signinId' when calling getSignin"));
    }

    // create path and map variables
    String path = "/signins/{signin_id}".replaceAll("\\{" + "signin_id" + "\\}", apiInvoker.escapeString(signinId.toString()));

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
         return (SigninDetail) ApiInvoker.deserialize(localVarResponse, "", SigninDetail.class);
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
   * Get a Signin
   * Gets the details of a single instance of a &#x60;Signin&#x60;.
   * @param signinId    * @param include A list of comma-separated related models to include
  */
  public void getSignin (String signinId, String include, final Response.Listener<SigninDetail> responseListener, final Response.ErrorListener errorListener) {
    Object postBody = null;

    // verify the required parameter 'signinId' is set
    if (signinId == null) {
      VolleyError error = new VolleyError("Missing the required parameter 'signinId' when calling getSignin",
        new ApiException(400, "Missing the required parameter 'signinId' when calling getSignin"));
    }

    // create path and map variables
    String path = "/signins/{signin_id}".replaceAll("\\{format\\}","json").replaceAll("\\{" + "signin_id" + "\\}", apiInvoker.escapeString(signinId.toString()));

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
              responseListener.onResponse((SigninDetail) ApiInvoker.deserialize(localVarResponse,  "", SigninDetail.class));
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
  * List All Signins
  * Gets a list of all &#x60;Signin&#x60; entities.
   * @param locationIds A comma separated list of Location IDs
   * @param withColours A comma separated list of case-insensitive colour values. i.e., &#x60;red&#x60;, &#x60;green&#x60;, &#x60;yellow&#x60;, and &#x60;orange&#x60;
   * @param query Allows you to query by &#x60;company&#x60;, &#x60;email&#x60;, &#x60;first_name&#x60;, &#x60;last_name&#x60;, and &#x60;location_name&#x60;
   * @param withAcknowledged Filters to all those &#x60;Signin&#x60;s that have, or have not been acknowledged
   * @param withSignedIn Filters to all &#x60;Signin&#x60;s that are, or are not currently signed out.
   * @param signinBefore Filters results to all those *before* the provided datetime
   * @param signinAfter Filters results to all those *after* the provided datetime
   * @param limit Limits the results to a specified number, defaults to 50
   * @param offset Offsets the results to a specified number, defaults to 0
   * @param querySort Allows you to override ordering by most relevant results when querying
   * @param include A list of comma-separated related models to include
   * @return PaginatedSigninsList
  */
  public PaginatedSigninsList getSignins (String locationIds, String withColours, String query, Boolean withAcknowledged, Boolean withSignedIn, Date signinBefore, Date signinAfter, Integer limit, Integer offset, String querySort, String include) throws TimeoutException, ExecutionException, InterruptedException, ApiException {
    Object postBody = null;

    // create path and map variables
    String path = "/signins";

    // query params
    List<Pair> queryParams = new ArrayList<Pair>();
    // header params
    Map<String, String> headerParams = new HashMap<String, String>();
    // form params
    Map<String, String> formParams = new HashMap<String, String>();
    queryParams.addAll(ApiInvoker.parameterToPairs("", "location_ids", locationIds));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "with_colours", withColours));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "query", query));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "with_acknowledged", withAcknowledged));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "with_signed_in", withSignedIn));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "signin_before", signinBefore));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "signin_after", signinAfter));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "limit", limit));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "offset", offset));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "query_sort", querySort));
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
         return (PaginatedSigninsList) ApiInvoker.deserialize(localVarResponse, "", PaginatedSigninsList.class);
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
   * List All Signins
   * Gets a list of all &#x60;Signin&#x60; entities.
   * @param locationIds A comma separated list of Location IDs   * @param withColours A comma separated list of case-insensitive colour values. i.e., &#x60;red&#x60;, &#x60;green&#x60;, &#x60;yellow&#x60;, and &#x60;orange&#x60;   * @param query Allows you to query by &#x60;company&#x60;, &#x60;email&#x60;, &#x60;first_name&#x60;, &#x60;last_name&#x60;, and &#x60;location_name&#x60;   * @param withAcknowledged Filters to all those &#x60;Signin&#x60;s that have, or have not been acknowledged   * @param withSignedIn Filters to all &#x60;Signin&#x60;s that are, or are not currently signed out.   * @param signinBefore Filters results to all those *before* the provided datetime   * @param signinAfter Filters results to all those *after* the provided datetime   * @param limit Limits the results to a specified number, defaults to 50   * @param offset Offsets the results to a specified number, defaults to 0   * @param querySort Allows you to override ordering by most relevant results when querying   * @param include A list of comma-separated related models to include
  */
  public void getSignins (String locationIds, String withColours, String query, Boolean withAcknowledged, Boolean withSignedIn, Date signinBefore, Date signinAfter, Integer limit, Integer offset, String querySort, String include, final Response.Listener<PaginatedSigninsList> responseListener, final Response.ErrorListener errorListener) {
    Object postBody = null;


    // create path and map variables
    String path = "/signins".replaceAll("\\{format\\}","json");

    // query params
    List<Pair> queryParams = new ArrayList<Pair>();
    // header params
    Map<String, String> headerParams = new HashMap<String, String>();
    // form params
    Map<String, String> formParams = new HashMap<String, String>();

    queryParams.addAll(ApiInvoker.parameterToPairs("", "location_ids", locationIds));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "with_colours", withColours));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "query", query));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "with_acknowledged", withAcknowledged));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "with_signed_in", withSignedIn));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "signin_before", signinBefore));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "signin_after", signinAfter));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "limit", limit));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "offset", offset));
    queryParams.addAll(ApiInvoker.parameterToPairs("", "query_sort", querySort));
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
              responseListener.onResponse((PaginatedSigninsList) ApiInvoker.deserialize(localVarResponse,  "", PaginatedSigninsList.class));
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
  * Update a Signin attribute
  * Update, acknowledge, or &#x60;Signout&#x60; a &#x60;Signin&#x60;
   * @param signinId 
   * @param signinUpdateParams The only updatable values for a &#x60;Signin&#x60; are &#x60;badge_number&#x60;, &#x60;badge_returned&#x60;, &#x60;is_accounted_for&#x60;, &#x60;is_signed_out&#x60;, and &#x60;is_acknowledged&#x60;.  &#x60;is_signed_out&#x60; and &#x60;is_acknowledged&#x60; are pseudo attributes that once set to true, are irreversible.
   * @param idempotencyKey An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it&#39;s submitted. We store idempotency keys for only 24 hours. Any &#x60;Idempotency-Key&#x60; shorter than 10 characters will be ignored
   * @return SigninDetail
  */
  public SigninDetail updateSignin (String signinId, SigninUpdateParams signinUpdateParams, String idempotencyKey) throws TimeoutException, ExecutionException, InterruptedException, ApiException {
    Object postBody = signinUpdateParams;
    // verify the required parameter 'signinId' is set
    if (signinId == null) {
      VolleyError error = new VolleyError("Missing the required parameter 'signinId' when calling updateSignin",
        new ApiException(400, "Missing the required parameter 'signinId' when calling updateSignin"));
    }
    // verify the required parameter 'signinUpdateParams' is set
    if (signinUpdateParams == null) {
      VolleyError error = new VolleyError("Missing the required parameter 'signinUpdateParams' when calling updateSignin",
        new ApiException(400, "Missing the required parameter 'signinUpdateParams' when calling updateSignin"));
    }

    // create path and map variables
    String path = "/signins/{signin_id}".replaceAll("\\{" + "signin_id" + "\\}", apiInvoker.escapeString(signinId.toString()));

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
         return (SigninDetail) ApiInvoker.deserialize(localVarResponse, "", SigninDetail.class);
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
   * Update a Signin attribute
   * Update, acknowledge, or &#x60;Signout&#x60; a &#x60;Signin&#x60;
   * @param signinId    * @param signinUpdateParams The only updatable values for a &#x60;Signin&#x60; are &#x60;badge_number&#x60;, &#x60;badge_returned&#x60;, &#x60;is_accounted_for&#x60;, &#x60;is_signed_out&#x60;, and &#x60;is_acknowledged&#x60;.  &#x60;is_signed_out&#x60; and &#x60;is_acknowledged&#x60; are pseudo attributes that once set to true, are irreversible.   * @param idempotencyKey An optional idempotency key to allow for repeat API requests. Any API request with this key will only be executed once, no matter how many times it&#39;s submitted. We store idempotency keys for only 24 hours. Any &#x60;Idempotency-Key&#x60; shorter than 10 characters will be ignored
  */
  public void updateSignin (String signinId, SigninUpdateParams signinUpdateParams, String idempotencyKey, final Response.Listener<SigninDetail> responseListener, final Response.ErrorListener errorListener) {
    Object postBody = signinUpdateParams;

    // verify the required parameter 'signinId' is set
    if (signinId == null) {
      VolleyError error = new VolleyError("Missing the required parameter 'signinId' when calling updateSignin",
        new ApiException(400, "Missing the required parameter 'signinId' when calling updateSignin"));
    }
    // verify the required parameter 'signinUpdateParams' is set
    if (signinUpdateParams == null) {
      VolleyError error = new VolleyError("Missing the required parameter 'signinUpdateParams' when calling updateSignin",
        new ApiException(400, "Missing the required parameter 'signinUpdateParams' when calling updateSignin"));
    }

    // create path and map variables
    String path = "/signins/{signin_id}".replaceAll("\\{format\\}","json").replaceAll("\\{" + "signin_id" + "\\}", apiInvoker.escapeString(signinId.toString()));

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
              responseListener.onResponse((SigninDetail) ApiInvoker.deserialize(localVarResponse,  "", SigninDetail.class));
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

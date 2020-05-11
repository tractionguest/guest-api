/**
 * Traction Guest API
 * The leader in enterprise visitor management, empowers businesses across five continents and dozens of industries to keep people safe while creating connection in the contactless world.
 *
 * The version of the OpenAPI document: 0.11.6
 * Contact: bmckay@tractionguest.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

package org.openapitools.client.request;

import com.android.volley.AuthFailureError;
import com.android.volley.NetworkResponse;
import com.android.volley.Request;
import com.android.volley.Response;
import com.android.volley.VolleyLog;
import com.android.volley.toolbox.HttpHeaderParser;

import org.apache.http.HttpEntity;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public class DeleteRequest extends Request<String> {

  HttpEntity entity;

  private final Response.Listener<String> mListener;

  String contentType;
  Map<String, String> apiHeaders;
  public DeleteRequest(String url, Map<String, String> apiHeaders, String contentType, HttpEntity entity, Response.Listener<String> listener, Response.ErrorListener errorListener) {
    super(Method.DELETE, url, errorListener);
    mListener = listener;
    this.entity = entity;
    this.contentType = contentType;
    this.apiHeaders = apiHeaders;
  }

  @Override
  public String getBodyContentType() {
    if(entity == null) {
      return null;
    }
    return entity.getContentType().getValue();
  }

  @Override
  public byte[] getBody() throws AuthFailureError {
    if(entity == null) {
      return null;
    }
    ByteArrayOutputStream bos = new ByteArrayOutputStream();
    try {
      entity.writeTo(bos);
    }
    catch (IOException e) {
      VolleyLog.e("IOException writing to ByteArrayOutputStream");
    }
    return bos.toByteArray();
  }

  @Override
  protected Response<String> parseNetworkResponse(NetworkResponse response) {
    String parsed;
      try {
        parsed = new String(response.data, HttpHeaderParser.parseCharset(response.headers));
      } catch (UnsupportedEncodingException e) {
        parsed = new String(response.data);
      }
    return Response.success(parsed, HttpHeaderParser.parseCacheHeaders(response));
  }

  @Override
  protected void deliverResponse(String response) {
    mListener.onResponse(response);
  }

  /* (non-Javadoc)
   * @see com.android.volley.Request#getHeaders()
   */
  @Override
  public Map<String, String> getHeaders() throws AuthFailureError {
    Map<String, String> headers = super.getHeaders();
    if (headers == null || headers.equals(Collections.emptyMap())) {
      headers = new HashMap<String, String>();
    }
    if (apiHeaders != null && !apiHeaders.equals(Collections.emptyMap())) {
      headers.putAll(apiHeaders);
    }
    if(contentType != null) {
      headers.put("Content-Type", contentType);
    }

    return headers;
  }
}

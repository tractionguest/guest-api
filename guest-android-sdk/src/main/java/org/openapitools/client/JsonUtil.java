/**
 * Traction Guest API
 * A compelling story about a lone device, on a quest for its data.
 *
 * The version of the OpenAPI document: 0.11.1
 * Contact: bmckay@tractionguest.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

package org.openapitools.client;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonParseException;
import com.google.gson.reflect.TypeToken;
import java.lang.reflect.Type;
import java.util.List;
import java.util.Date;
import org.openapitools.client.model.*;

public class JsonUtil {
  public static GsonBuilder gsonBuilder;

  static {
    gsonBuilder = new GsonBuilder();
    gsonBuilder.serializeNulls();
    gsonBuilder.setDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSZ");
    gsonBuilder.registerTypeAdapter(Date.class, new JsonDeserializer<Date>() {
      public Date deserialize(JsonElement json, Type typeOfT, JsonDeserializationContext context) throws JsonParseException {
        return new Date(json.getAsJsonPrimitive().getAsLong());
      }
    });
  }

  public static Gson getGson() {
    return gsonBuilder.create();
  }

  public static String serialize(Object obj){
    return getGson().toJson(obj);
  }

  public static <T> T deserializeToList(String jsonString, Class cls){
    return getGson().fromJson(jsonString, getListTypeForDeserialization(cls));
  }

  public static <T> T deserializeToObject(String jsonString, Class cls){
    return getGson().fromJson(jsonString, getTypeForDeserialization(cls));
  }

  public static Type getListTypeForDeserialization(Class cls) {
    String className = cls.getSimpleName();
    
    if ("AuditLog".equalsIgnoreCase(className)) {
      return new TypeToken<List<AuditLog>>(){}.getType();
    }
    
    if ("AuditLogChange".equalsIgnoreCase(className)) {
      return new TypeToken<List<AuditLogChange>>(){}.getType();
    }
    
    if ("CustomField".equalsIgnoreCase(className)) {
      return new TypeToken<List<CustomField>>(){}.getType();
    }
    
    if ("Docusign".equalsIgnoreCase(className)) {
      return new TypeToken<List<Docusign>>(){}.getType();
    }
    
    if ("EmailTemplate".equalsIgnoreCase(className)) {
      return new TypeToken<List<EmailTemplate>>(){}.getType();
    }
    
    if ("Error".equalsIgnoreCase(className)) {
      return new TypeToken<List<Error>>(){}.getType();
    }
    
    if ("ErrorsList".equalsIgnoreCase(className)) {
      return new TypeToken<List<ErrorsList>>(){}.getType();
    }
    
    if ("ExternalWatchlistResult".equalsIgnoreCase(className)) {
      return new TypeToken<List<ExternalWatchlistResult>>(){}.getType();
    }
    
    if ("FlexField".equalsIgnoreCase(className)) {
      return new TypeToken<List<FlexField>>(){}.getType();
    }
    
    if ("GuestAlertCreateParams".equalsIgnoreCase(className)) {
      return new TypeToken<List<GuestAlertCreateParams>>(){}.getType();
    }
    
    if ("GuestAlertDetail".equalsIgnoreCase(className)) {
      return new TypeToken<List<GuestAlertDetail>>(){}.getType();
    }
    
    if ("GuestAlertSigninSelectors".equalsIgnoreCase(className)) {
      return new TypeToken<List<GuestAlertSigninSelectors>>(){}.getType();
    }
    
    if ("GuestResponse".equalsIgnoreCase(className)) {
      return new TypeToken<List<GuestResponse>>(){}.getType();
    }
    
    if ("Host".equalsIgnoreCase(className)) {
      return new TypeToken<List<Host>>(){}.getType();
    }
    
    if ("InternalWatchlistResult".equalsIgnoreCase(className)) {
      return new TypeToken<List<InternalWatchlistResult>>(){}.getType();
    }
    
    if ("Invite".equalsIgnoreCase(className)) {
      return new TypeToken<List<Invite>>(){}.getType();
    }
    
    if ("InviteCreateParams".equalsIgnoreCase(className)) {
      return new TypeToken<List<InviteCreateParams>>(){}.getType();
    }
    
    if ("InviteDetail".equalsIgnoreCase(className)) {
      return new TypeToken<List<InviteDetail>>(){}.getType();
    }
    
    if ("InviteUpdateParams".equalsIgnoreCase(className)) {
      return new TypeToken<List<InviteUpdateParams>>(){}.getType();
    }
    
    if ("InviteWatchlist".equalsIgnoreCase(className)) {
      return new TypeToken<List<InviteWatchlist>>(){}.getType();
    }
    
    if ("Location".equalsIgnoreCase(className)) {
      return new TypeToken<List<Location>>(){}.getType();
    }
    
    if ("NotificationTrigger".equalsIgnoreCase(className)) {
      return new TypeToken<List<NotificationTrigger>>(){}.getType();
    }
    
    if ("NotificationTriggerCreateParams".equalsIgnoreCase(className)) {
      return new TypeToken<List<NotificationTriggerCreateParams>>(){}.getType();
    }
    
    if ("PaginatedAuditLogsList".equalsIgnoreCase(className)) {
      return new TypeToken<List<PaginatedAuditLogsList>>(){}.getType();
    }
    
    if ("PaginatedEmailTemplatesList".equalsIgnoreCase(className)) {
      return new TypeToken<List<PaginatedEmailTemplatesList>>(){}.getType();
    }
    
    if ("PaginatedHostsList".equalsIgnoreCase(className)) {
      return new TypeToken<List<PaginatedHostsList>>(){}.getType();
    }
    
    if ("PaginatedInvitesList".equalsIgnoreCase(className)) {
      return new TypeToken<List<PaginatedInvitesList>>(){}.getType();
    }
    
    if ("PaginatedLocationsList".equalsIgnoreCase(className)) {
      return new TypeToken<List<PaginatedLocationsList>>(){}.getType();
    }
    
    if ("PaginatedSigninsList".equalsIgnoreCase(className)) {
      return new TypeToken<List<PaginatedSigninsList>>(){}.getType();
    }
    
    if ("PaginatedWatchlistList".equalsIgnoreCase(className)) {
      return new TypeToken<List<PaginatedWatchlistList>>(){}.getType();
    }
    
    if ("Pagination".equalsIgnoreCase(className)) {
      return new TypeToken<List<Pagination>>(){}.getType();
    }
    
    if ("PermissionGroup".equalsIgnoreCase(className)) {
      return new TypeToken<List<PermissionGroup>>(){}.getType();
    }
    
    if ("Registration".equalsIgnoreCase(className)) {
      return new TypeToken<List<Registration>>(){}.getType();
    }
    
    if ("SignableDocument".equalsIgnoreCase(className)) {
      return new TypeToken<List<SignableDocument>>(){}.getType();
    }
    
    if ("Signin".equalsIgnoreCase(className)) {
      return new TypeToken<List<Signin>>(){}.getType();
    }
    
    if ("SigninAcknowledgement".equalsIgnoreCase(className)) {
      return new TypeToken<List<SigninAcknowledgement>>(){}.getType();
    }
    
    if ("SigninCreateParams".equalsIgnoreCase(className)) {
      return new TypeToken<List<SigninCreateParams>>(){}.getType();
    }
    
    if ("SigninData".equalsIgnoreCase(className)) {
      return new TypeToken<List<SigninData>>(){}.getType();
    }
    
    if ("SigninDetail".equalsIgnoreCase(className)) {
      return new TypeToken<List<SigninDetail>>(){}.getType();
    }
    
    if ("SigninUpdateParams".equalsIgnoreCase(className)) {
      return new TypeToken<List<SigninUpdateParams>>(){}.getType();
    }
    
    if ("SigninWatchlist".equalsIgnoreCase(className)) {
      return new TypeToken<List<SigninWatchlist>>(){}.getType();
    }
    
    if ("SimpleSignature".equalsIgnoreCase(className)) {
      return new TypeToken<List<SimpleSignature>>(){}.getType();
    }
    
    if ("User".equalsIgnoreCase(className)) {
      return new TypeToken<List<User>>(){}.getType();
    }
    
    if ("Visitor".equalsIgnoreCase(className)) {
      return new TypeToken<List<Visitor>>(){}.getType();
    }
    
    if ("Watchlist".equalsIgnoreCase(className)) {
      return new TypeToken<List<Watchlist>>(){}.getType();
    }
    
    if ("WatchlistCreateParams".equalsIgnoreCase(className)) {
      return new TypeToken<List<WatchlistCreateParams>>(){}.getType();
    }
    
    if ("WatchlistMatch".equalsIgnoreCase(className)) {
      return new TypeToken<List<WatchlistMatch>>(){}.getType();
    }
    
    if ("WatchlistSearch".equalsIgnoreCase(className)) {
      return new TypeToken<List<WatchlistSearch>>(){}.getType();
    }
    
    return new TypeToken<List<Object>>(){}.getType();
  }

  public static Type getTypeForDeserialization(Class cls) {
    String className = cls.getSimpleName();
    
    if ("AuditLog".equalsIgnoreCase(className)) {
      return new TypeToken<AuditLog>(){}.getType();
    }
    
    if ("AuditLogChange".equalsIgnoreCase(className)) {
      return new TypeToken<AuditLogChange>(){}.getType();
    }
    
    if ("CustomField".equalsIgnoreCase(className)) {
      return new TypeToken<CustomField>(){}.getType();
    }
    
    if ("Docusign".equalsIgnoreCase(className)) {
      return new TypeToken<Docusign>(){}.getType();
    }
    
    if ("EmailTemplate".equalsIgnoreCase(className)) {
      return new TypeToken<EmailTemplate>(){}.getType();
    }
    
    if ("Error".equalsIgnoreCase(className)) {
      return new TypeToken<Error>(){}.getType();
    }
    
    if ("ErrorsList".equalsIgnoreCase(className)) {
      return new TypeToken<ErrorsList>(){}.getType();
    }
    
    if ("ExternalWatchlistResult".equalsIgnoreCase(className)) {
      return new TypeToken<ExternalWatchlistResult>(){}.getType();
    }
    
    if ("FlexField".equalsIgnoreCase(className)) {
      return new TypeToken<FlexField>(){}.getType();
    }
    
    if ("GuestAlertCreateParams".equalsIgnoreCase(className)) {
      return new TypeToken<GuestAlertCreateParams>(){}.getType();
    }
    
    if ("GuestAlertDetail".equalsIgnoreCase(className)) {
      return new TypeToken<GuestAlertDetail>(){}.getType();
    }
    
    if ("GuestAlertSigninSelectors".equalsIgnoreCase(className)) {
      return new TypeToken<GuestAlertSigninSelectors>(){}.getType();
    }
    
    if ("GuestResponse".equalsIgnoreCase(className)) {
      return new TypeToken<GuestResponse>(){}.getType();
    }
    
    if ("Host".equalsIgnoreCase(className)) {
      return new TypeToken<Host>(){}.getType();
    }
    
    if ("InternalWatchlistResult".equalsIgnoreCase(className)) {
      return new TypeToken<InternalWatchlistResult>(){}.getType();
    }
    
    if ("Invite".equalsIgnoreCase(className)) {
      return new TypeToken<Invite>(){}.getType();
    }
    
    if ("InviteCreateParams".equalsIgnoreCase(className)) {
      return new TypeToken<InviteCreateParams>(){}.getType();
    }
    
    if ("InviteDetail".equalsIgnoreCase(className)) {
      return new TypeToken<InviteDetail>(){}.getType();
    }
    
    if ("InviteUpdateParams".equalsIgnoreCase(className)) {
      return new TypeToken<InviteUpdateParams>(){}.getType();
    }
    
    if ("InviteWatchlist".equalsIgnoreCase(className)) {
      return new TypeToken<InviteWatchlist>(){}.getType();
    }
    
    if ("Location".equalsIgnoreCase(className)) {
      return new TypeToken<Location>(){}.getType();
    }
    
    if ("NotificationTrigger".equalsIgnoreCase(className)) {
      return new TypeToken<NotificationTrigger>(){}.getType();
    }
    
    if ("NotificationTriggerCreateParams".equalsIgnoreCase(className)) {
      return new TypeToken<NotificationTriggerCreateParams>(){}.getType();
    }
    
    if ("PaginatedAuditLogsList".equalsIgnoreCase(className)) {
      return new TypeToken<PaginatedAuditLogsList>(){}.getType();
    }
    
    if ("PaginatedEmailTemplatesList".equalsIgnoreCase(className)) {
      return new TypeToken<PaginatedEmailTemplatesList>(){}.getType();
    }
    
    if ("PaginatedHostsList".equalsIgnoreCase(className)) {
      return new TypeToken<PaginatedHostsList>(){}.getType();
    }
    
    if ("PaginatedInvitesList".equalsIgnoreCase(className)) {
      return new TypeToken<PaginatedInvitesList>(){}.getType();
    }
    
    if ("PaginatedLocationsList".equalsIgnoreCase(className)) {
      return new TypeToken<PaginatedLocationsList>(){}.getType();
    }
    
    if ("PaginatedSigninsList".equalsIgnoreCase(className)) {
      return new TypeToken<PaginatedSigninsList>(){}.getType();
    }
    
    if ("PaginatedWatchlistList".equalsIgnoreCase(className)) {
      return new TypeToken<PaginatedWatchlistList>(){}.getType();
    }
    
    if ("Pagination".equalsIgnoreCase(className)) {
      return new TypeToken<Pagination>(){}.getType();
    }
    
    if ("PermissionGroup".equalsIgnoreCase(className)) {
      return new TypeToken<PermissionGroup>(){}.getType();
    }
    
    if ("Registration".equalsIgnoreCase(className)) {
      return new TypeToken<Registration>(){}.getType();
    }
    
    if ("SignableDocument".equalsIgnoreCase(className)) {
      return new TypeToken<SignableDocument>(){}.getType();
    }
    
    if ("Signin".equalsIgnoreCase(className)) {
      return new TypeToken<Signin>(){}.getType();
    }
    
    if ("SigninAcknowledgement".equalsIgnoreCase(className)) {
      return new TypeToken<SigninAcknowledgement>(){}.getType();
    }
    
    if ("SigninCreateParams".equalsIgnoreCase(className)) {
      return new TypeToken<SigninCreateParams>(){}.getType();
    }
    
    if ("SigninData".equalsIgnoreCase(className)) {
      return new TypeToken<SigninData>(){}.getType();
    }
    
    if ("SigninDetail".equalsIgnoreCase(className)) {
      return new TypeToken<SigninDetail>(){}.getType();
    }
    
    if ("SigninUpdateParams".equalsIgnoreCase(className)) {
      return new TypeToken<SigninUpdateParams>(){}.getType();
    }
    
    if ("SigninWatchlist".equalsIgnoreCase(className)) {
      return new TypeToken<SigninWatchlist>(){}.getType();
    }
    
    if ("SimpleSignature".equalsIgnoreCase(className)) {
      return new TypeToken<SimpleSignature>(){}.getType();
    }
    
    if ("User".equalsIgnoreCase(className)) {
      return new TypeToken<User>(){}.getType();
    }
    
    if ("Visitor".equalsIgnoreCase(className)) {
      return new TypeToken<Visitor>(){}.getType();
    }
    
    if ("Watchlist".equalsIgnoreCase(className)) {
      return new TypeToken<Watchlist>(){}.getType();
    }
    
    if ("WatchlistCreateParams".equalsIgnoreCase(className)) {
      return new TypeToken<WatchlistCreateParams>(){}.getType();
    }
    
    if ("WatchlistMatch".equalsIgnoreCase(className)) {
      return new TypeToken<WatchlistMatch>(){}.getType();
    }
    
    if ("WatchlistSearch".equalsIgnoreCase(className)) {
      return new TypeToken<WatchlistSearch>(){}.getType();
    }
    
    return new TypeToken<Object>(){}.getType();
  }

};
library guest_sdk.api;

import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';

part 'api/credentials_api.dart';
part 'api/email_templates_api.dart';
part 'api/hosts_api.dart';
part 'api/invites_api.dart';
part 'api/locations_api.dart';
part 'api/signins_api.dart';
part 'api/users_api.dart';
part 'api/watchlists_api.dart';

part 'model/credential.dart';
part 'model/credential_create_params.dart';
part 'model/custom_field.dart';
part 'model/email_template.dart';
part 'model/error.dart';
part 'model/errors_list.dart';
part 'model/host.dart';
part 'model/invite.dart';
part 'model/invite_create_params.dart';
part 'model/invite_detail.dart';
part 'model/invite_update_params.dart';
part 'model/invite_watchlist.dart';
part 'model/location.dart';
part 'model/notification_trigger.dart';
part 'model/paginated_email_templates_list.dart';
part 'model/paginated_hosts_list.dart';
part 'model/paginated_invites_list.dart';
part 'model/paginated_locations_list.dart';
part 'model/paginated_signins_list.dart';
part 'model/paginated_watchlist_list.dart';
part 'model/pagination.dart';
part 'model/permission.dart';
part 'model/permission_bundle.dart';
part 'model/signin.dart';
part 'model/signin_acknowledgement.dart';
part 'model/signin_create_params.dart';
part 'model/signin_data.dart';
part 'model/signin_detail.dart';
part 'model/signin_update_params.dart';
part 'model/signin_watchlist.dart';
part 'model/user.dart';
part 'model/watchlist.dart';


ApiClient defaultApiClient = ApiClient();

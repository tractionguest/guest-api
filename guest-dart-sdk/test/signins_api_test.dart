import 'package:guest_sdk/api.dart';
import 'package:test/test.dart';


/// tests for SigninsApi
void main() {
  var instance = new SigninsApi();

  group('tests for SigninsApi', () {
    // Create Signin
    //
    // Creates a Signin
    //
    //Future<Signin> createSignin({ SigninCreateParams signinCreateParams }) async 
    test('test createSignin', () async {
      // TODO
    });

    // Get a Signin
    //
    // Gets the details of a single instance of a `Signin`.
    //
    //Future<SigninDetail> getSignin(String signinId, { String include }) async 
    test('test getSignin', () async {
      // TODO
    });

    // List all Signins
    //
    // Gets a list of all `Signin` entities.
    //
    //Future<PaginatedSigninsList> getSignins({ String locationIds, String withColours, String query, bool withAcknowledged, bool withSignedIn, DateTime signinBefore, DateTime signinAfter, int limit, int offset, String querySort, String include }) async 
    test('test getSignins', () async {
      // TODO
    });

    // Update a Signin
    //
    // Update, acknowledge, or `Signout` a `Signin`
    //
    //Future<SigninDetail> updateSignin(String signinId, SigninUpdateParams signinUpdateParams, { String idempotencyKey }) async 
    test('test updateSignin', () async {
      // TODO
    });

  });
}

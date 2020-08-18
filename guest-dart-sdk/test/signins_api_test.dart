import 'package:guest_sdk/api.dart';
import 'package:test/test.dart';


/// tests for SigninsApi
void main() {
  var instance = new SigninsApi();

  group('tests for SigninsApi', () {
    // Create a Signin
    //
    // Creates a new instance of a `Signin`.
    //
    //Future<Signin> createSignin(SigninCreateParams signinCreateParams) async 
    test('test createSignin', () async {
      // TODO
    });

    // Get a Signin
    //
    // Gets the details of a single instance of a `Signin`.
    //
    //Future<SigninDetail> getSignin(String signinId) async 
    test('test getSignin', () async {
      // TODO
    });

    // List All Signins
    //
    // Gets a list of all `Signin` entities.
    //
    //Future<PaginatedSigninsList> getSignins() async 
    test('test getSignins', () async {
      // TODO
    });

    // Update a Signin attribute
    //
    // Update, acknowledge, or `Signout` a `Signin`
    //
    //Future<SigninDetail> updateSignin(String signinId, SigninUpdateParams signinUpdateParams) async 
    test('test updateSignin', () async {
      // TODO
    });

  });
}

import 'package:guest_sdk/api.dart';
import 'package:test/test.dart';


/// tests for RegistrationApi
void main() {
  var instance = new RegistrationApi();

  group('tests for RegistrationApi', () {
    // Get a Registration
    //
    // Gets the details of a single instance of a `Registration`
    //
    //Future<Registration> getRegistration(String registrationId, { String include }) async 
    test('test getRegistration', () async {
      // TODO
    });

    // List all Registrations
    //
    // Gets a list of all `Registration` entities.
    //
    //Future<PaginatedRegistrationsList> getRegistrations({ int limit, int offset, String locationIds, String createdBefore, String createdAfter }) async 
    test('test getRegistrations', () async {
      // TODO
    });

  });
}

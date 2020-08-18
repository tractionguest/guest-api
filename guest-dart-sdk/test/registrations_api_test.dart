import 'package:guest_sdk/api.dart';
import 'package:test/test.dart';


/// tests for RegistrationsApi
void main() {
  var instance = new RegistrationsApi();

  group('tests for RegistrationsApi', () {
    // Get a Registration
    //
    // Gets the details of a single instance of a `Registration`
    //
    //Future<RegistrationDetail> getRegistration(String registrationId, { String include }) async 
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

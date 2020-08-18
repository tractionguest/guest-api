import 'package:guest_sdk/api.dart';
import 'package:test/test.dart';


/// tests for PackagesApi
void main() {
  var instance = new PackagesApi();

  group('tests for PackagesApi', () {
    // Create package
    //
    // Creates a [Package] entity by extracting information about the recipient and carrier from the given image file.
    //
    //Future<Package> createPackage({ PackageCreateParams packageCreateParams }) async 
    test('test createPackage', () async {
      // TODO
    });

    // Delete a pacakge
    //
    //Future deletePackage(String packageId, { String idempotencyKey }) async 
    test('test deletePackage', () async {
      // TODO
    });

    // Get Package
    //
    // Gets the details of a single instance of a Package
    //
    //Future<Package> getPackage(String packageId, { String include }) async 
    test('test getPackage', () async {
      // TODO
    });

    // Get packages
    //
    // Gets a list of [Package] entities.
    //
    //Future<PaginatedPackagesList> getPackages({ String locationIds, int limit, int offset, String include, bool pickedUp, String query }) async 
    test('test getPackages', () async {
      // TODO
    });

    // Update Package
    //
    // Update/Edit information about a Package.  picked_up - changes the package_state to picked up and assigns non null value to picked_up_at  recipient_id - update the package's intended recipient. Changes package_state to 'recipient_matched' if a match hasn't been found and notifies host about their package via email. A previous recipient will stop getting notifications  carrier_name - change/update the package's carrier/courier information    
    //
    //Future<Package> updatePackage(String packageId, { String idempotencyKey, PackageUpdateParams packageUpdateParams }) async 
    test('test updatePackage', () async {
      // TODO
    });

  });
}

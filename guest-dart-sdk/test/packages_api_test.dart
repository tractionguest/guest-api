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

    // Get packages
    //
    // Gets a list of [Package] entities.
    //
    //Future<PaginatedPackagesList> getPackages({ String locationIds, int limit, int offset }) async 
    test('test getPackages', () async {
      // TODO
    });

  });
}

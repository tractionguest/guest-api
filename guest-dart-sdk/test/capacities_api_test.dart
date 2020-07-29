import 'package:guest_sdk/api.dart';
import 'package:test/test.dart';


/// tests for CapacitiesApi
void main() {
  var instance = new CapacitiesApi();

  group('tests for CapacitiesApi', () {
    // Get the capacity details for a location
    //
    // Gets the details of the future capacity in a location.
    //
    //Future<CapacityResponse> getLocationCapacity(String locationId, { int hoursToCalculate, String timestamp }) async 
    test('test getLocationCapacity', () async {
      // TODO
    });

    // Get the current capacity details for a location
    //
    // Get details of current capacity in a location
    //
    //Future<CapacitySummary> getLocationCapacitySummary(String locationId) async 
    test('test getLocationCapacitySummary', () async {
      // TODO
    });

  });
}

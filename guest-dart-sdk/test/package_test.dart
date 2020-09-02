import 'package:guest_sdk/api.dart';
import 'package:test/test.dart';

// tests for Package
void main() {
  var instance = new Pet();

  group('test Package', () {
    // int id (default value: null)
    test('to test the property `id`', () async {
      // TODO
    });

    // Host recipient (default value: null)
    test('to test the property `recipient`', () async {
      // TODO
    });

    // Location location (default value: null)
    test('to test the property `location`', () async {
      // TODO
    });

    // this can be one of the following states: 'processing', 'recipient_matched', 'needs_attention' or 'picked_up'
    // String packageState (default value: null)
    test('to test the property `packageState`', () async {
      // TODO
    });

    // A carrier name that gets detected on the shipping label. i.e. USPS, Purolator, DHL, Canada Post, Royal Mail, etc... 
    // String carrierName (default value: null)
    test('to test the property `carrierName`', () async {
      // TODO
    });

    // DateTime pickedUpAt (default value: null)
    test('to test the property `pickedUpAt`', () async {
      // TODO
    });

    // DateTime createdAt (default value: null)
    test('to test the property `createdAt`', () async {
      // TODO
    });

    // Image image (default value: null)
    test('to test the property `image`', () async {
      // TODO
    });


  });

}

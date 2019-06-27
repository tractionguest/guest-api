import 'package:guest_sdk/api.dart';
import 'package:test/test.dart';

// tests for Error
void main() {
  var instance = new Pet();

  group('test Error', () {
    // The name of the model with the error, or global if it is something outside a model
    // String domain (default value: null)
    test('to test the property `domain`', () async {
      // TODO
    });

    // The model attribute where the error occured
    // String attribute (default value: null)
    test('to test the property `attribute`', () async {
      // TODO
    });

    // An error code reference for the specific error that occured
    // String code (default value: null)
    test('to test the property `code`', () async {
      // TODO
    });

    // A human readable error message that can be discarded for internationalization purposes
    // String message (default value: null)
    test('to test the property `message`', () async {
      // TODO
    });


  });

}

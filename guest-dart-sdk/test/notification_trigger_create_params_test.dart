import 'package:guest_sdk/api.dart';
import 'package:test/test.dart';

// tests for NotificationTriggerCreateParams
void main() {
  var instance = new Pet();

  group('test NotificationTriggerCreateParams', () {
    // Whether the offset should be calculated as `days` or `hours`
    // String offsetUnit (default value: null)
    test('to test the property `offsetUnit`', () async {
      // TODO
    });

    // An array made of only `INVITEE`, `HOSTS, or `LEP` as possible string values
    // List<String> notificationGroups (default value: [])
    test('to test the property `notificationGroups`', () async {
      // TODO
    });

    // int emailTemplateId (default value: null)
    test('to test the property `emailTemplateId`', () async {
      // TODO
    });

    // Whether the offset should be calculated from the start, or finish of the event
    // String offsetOrigin (default value: null)
    test('to test the property `offsetOrigin`', () async {
      // TODO
    });

    // The amount to offset the notification from the event
    // int offsetAmount (default value: null)
    test('to test the property `offsetAmount`', () async {
      // TODO
    });

    // Whether the offset should be calculated for before, or after the event
    // String offsetDirection (default value: null)
    test('to test the property `offsetDirection`', () async {
      // TODO
    });


  });

}

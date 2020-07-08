import 'package:guest_sdk/api.dart';
import 'package:test/test.dart';

// tests for NotificationTrigger
void main() {
  var instance = new Pet();

  group('test NotificationTrigger', () {
    // Whether the offset should be calculated for before, or after the event
    // String offsetDirection (default value: null)
    test('to test the property `offsetDirection`', () async {
      // TODO
    });

    // The amount to offset the notification from the event
    // int offsetAmount (default value: null)
    test('to test the property `offsetAmount`', () async {
      // TODO
    });

    // Whether the offset should be calculated from the start, or finish of the event
    // Object offsetOrigin (default value: null)
    test('to test the property `offsetOrigin`', () async {
      // TODO
    });

    // int emailTemplateId (default value: null)
    test('to test the property `emailTemplateId`', () async {
      // TODO
    });

    // An array made of only `INVITEE`, `HOSTS, or `LEP` as possible string values
    // List<String> notificationGroups (default value: [])
    test('to test the property `notificationGroups`', () async {
      // TODO
    });

    // Whether the offset should be calculated as `days` or `hours`
    // String offsetUnit (default value: null)
    test('to test the property `offsetUnit`', () async {
      // TODO
    });

    // The name of the EmailTemplate associated with the NotificationTrigger. This is only given from the server, not used as a create param.
    // String emailTemplateName (default value: null)
    test('to test the property `emailTemplateName`', () async {
      // TODO
    });


  });

}

import 'package:guest_sdk/api.dart';
import 'package:test/test.dart';


/// tests for InvitesApi
void main() {
  var instance = new InvitesApi();

  group('tests for InvitesApi', () {
    // Create an Invite
    //
    // Creates a new `Invite` for a specific `Location`.
    //
    //Future<InviteDetail> createLocationInvite(String locationId, InviteCreateParams inviteCreateParams, { String idempotencyKey }) async 
    test('test createLocationInvite', () async {
      // TODO
    });

    // Create an Invite from a Registration
    //
    // Creates a new `Invite` from `Registration` data.
    //
    //Future<InviteDetail> createRegistrationInvite(String registrationId, { String idempotencyKey }) async 
    test('test createRegistrationInvite', () async {
      // TODO
    });

    // Deletes an Invite
    //
    // Deletes a single instance of `Invite`
    //
    //Future deleteInvite(String inviteId, { String idempotencyKey }) async 
    test('test deleteInvite', () async {
      // TODO
    });

    // Get an Invite
    //
    // Gets the details of a single instance of a `Invite`.
    //
    //Future<InviteDetail> getInvite(String inviteId, { String include }) async 
    test('test getInvite', () async {
      // TODO
    });

    // List all Invites
    //
    // Gets a list of all `Invite` entities.
    //
    //Future<PaginatedInvitesList> getInvites({ int limit, int offset, String query, String withColours, String locationIds, String sortBy, DateTime startsBefore, DateTime startsAfter, String include, bool isApproved, DateTime activeAfter, DateTime activeBefore }) async 
    test('test getInvites', () async {
      // TODO
    });

    // Update an Invite
    //
    // Updates an existing `Invite`.
    //
    //Future<InviteDetail> updateInvite(String inviteId, InviteUpdateParams inviteUpdateParams, { String idempotencyKey }) async 
    test('test updateInvite', () async {
      // TODO
    });

  });
}

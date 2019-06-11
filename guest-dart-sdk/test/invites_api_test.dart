import 'package:guest_sdk/api.dart';
import 'package:test/test.dart';


/// tests for InvitesApi
void main() {
  var instance = new InvitesApi();

  group('tests for InvitesApi', () {
    // Creates an Invite
    //
    // Creates a new `Invite` for a specific `Location`.
    //
    //Future<Invite> createLocationInvite(String locationId, Invite invite) async 
    test('test createLocationInvite', () async {
      // TODO
    });

    // Get a Invite
    //
    // Gets the details of a single instance of a `Invite`.
    //
    //Future<InviteDetail> getInvite(String inviteId) async 
    test('test getInvite', () async {
      // TODO
    });

    // List All Invites
    //
    // Gets a list of all `Invite` entities.
    //
    //Future<PaginatedInvitesList> getInvites() async 
    test('test getInvites', () async {
      // TODO
    });

    // Update a Invite
    //
    // Updates an existing `Invite`.
    //
    //Future<InviteDetail> updateInvite(String inviteId, InviteUpdateParams inviteUpdateParams) async 
    test('test updateInvite', () async {
      // TODO
    });

  });
}

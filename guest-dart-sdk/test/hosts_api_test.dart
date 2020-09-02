import 'package:guest_sdk/api.dart';
import 'package:test/test.dart';


/// tests for HostsApi
void main() {
  var instance = new HostsApi();

  group('tests for HostsApi', () {
    // Create a Host
    //
    // Creates a Host
    //
    //Future<Host> createHost(HostCreateParams hostCreateParams, { String idempotencyKey }) async 
    test('test createHost', () async {
      // TODO
    });

    // Create multiple Hosts
    //
    // Creates a batch of `Host` records in an async queue. Please note, every action taken against this endpoint is recorded in the audit log.
    //
    //Future<BatchJob> createHosts({ String idempotencyKey, HostBatchCreateParams hostBatchCreateParams }) async 
    test('test createHosts', () async {
      // TODO
    });

    // List all Hosts
    //
    // Gets a list of all `Host` entities.
    //
    //Future<PaginatedHostsList> getHosts({ String query, int limit, int offset, String include }) async 
    test('test getHosts', () async {
      // TODO
    });

  });
}

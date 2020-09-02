import 'package:guest_sdk/api.dart';
import 'package:test/test.dart';


/// tests for AuditLogsApi
void main() {
  var instance = new AuditLogsApi();

  group('tests for AuditLogsApi', () {
    // Get an AuditLog
    //
    // Gets the details of a single instance of an `AuditLog`.
    //
    //Future<AuditLog> getAuditLog(String auditLogId) async 
    test('test getAuditLog', () async {
      // TODO
    });

    // List all AuditLogs
    //
    // Gets a list of all `AuditLog` entities.
    //
    //Future<PaginatedAuditLogsList> getAuditLogs({ int limit, int offset, String sortBy, int auditableId, String auditableType, String actionType, int userId }) async 
    test('test getAuditLogs', () async {
      // TODO
    });

  });
}

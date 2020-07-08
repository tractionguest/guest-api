import 'package:guest_sdk/api.dart';
import 'package:test/test.dart';


/// tests for WatchlistsApi
void main() {
  var instance = new WatchlistsApi();

  group('tests for WatchlistsApi', () {
    // Create watchlist
    //
    // Create a new `Watchlist` record. Please note, every action taken against this endpoint is recorded in the audit log.
    //
    //Future<Watchlist> createWatchlist(WatchlistCreateParams watchlistCreateParams, { String idempotencyKey }) async 
    test('test createWatchlist', () async {
      // TODO
    });

    // Create Multiple Watchlists
    //
    // Creates a batch of `Watchlist` records in an async queue. Please note, every action taken against this endpoint is recorded in the audit log.
    //
    //Future<BatchJob> createWatchlists({ String idempotencyKey, WatchlistBatchCreateParams watchlistBatchCreateParams }) async 
    test('test createWatchlists', () async {
      // TODO
    });

    // Deletes a Watchlist
    //
    // Deletes a single instance of `Watchlist`
    //
    //Future deleteWatchlist(String watchlistId, { String idempotencyKey }) async 
    test('test deleteWatchlist', () async {
      // TODO
    });

    // Get a Watchlist
    //
    // Gets the details of a single instance of a `Watchlist`.
    //
    //Future<Watchlist> getWatchlist(String watchlistId, { String include }) async 
    test('test getWatchlist', () async {
      // TODO
    });

    // List All Watchlists
    //
    // Gets a list of all `Watchlist` entities.
    //
    //Future<PaginatedWatchlistList> getWatchlists({ int limit, int offset, String query, String withColours, String include }) async 
    test('test getWatchlists', () async {
      // TODO
    });

    // Update a watchlist record
    //
    // Update an existing `Watchlist` record. Every operation against this endpoint is recorded in the audit log.
    //
    //Future<Watchlist> updateWatchlist(String watchlistId, WatchlistCreateParams watchlistCreateParams, { String idempotencyKey }) async 
    test('test updateWatchlist', () async {
      // TODO
    });

  });
}

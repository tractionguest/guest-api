import 'package:guest_sdk/api.dart';
import 'package:test/test.dart';


/// tests for WatchlistsApi
void main() {
  var instance = new WatchlistsApi();

  group('tests for WatchlistsApi', () {
    // Get a Watchlist
    //
    // Gets the details of a single instance of a `Watchlist`.
    //
    //Future<Watchlist> getWatchlist(String watchlistId) async 
    test('test getWatchlist', () async {
      // TODO
    });

    // List All Watchlists
    //
    // Gets a list of all `Watchlist` entities.
    //
    //Future<PaginatedWatchlistList> getWatchlists({ int limit, int offset, String query, List<String> withColours }) async 
    test('test getWatchlists', () async {
      // TODO
    });

  });
}

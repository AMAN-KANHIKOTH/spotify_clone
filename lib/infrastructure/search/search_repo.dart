import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:spotify_clone/domain/core/failures/failures.dart';
import 'package:spotify_clone/domain/search/models/browse_categories.dart';
import 'package:spotify_clone/domain/search/models/playlist_category.dart';
import 'package:spotify_clone/domain/search/models/search_query.dart';
import 'package:spotify_clone/domain/search/search_services.dart';

@LazySingleton(as: SearchServices)
class SearchRepo implements SearchServices {
  final dio = Dio();

  @override
  Future<Either<MainFailures, List<Tuple2<String, List<PlaylistItem>>>>>
      getBrowseCategories(String accessCode) async {
    List<Tuple2<String, List<PlaylistItem>>> BrowseAll = [];
    try {
      final response = await dio.get(
        'https://api.spotify.com/v1/browse/categories?limit=50',
        options: Options(headers: {'Authorization': 'Bearer $accessCode'}),
      );
      if (response.statusCode == 200) {
        final browseCategories = BrowseCategories.fromJson(response.data);
        for (var category in browseCategories.categories!.items!) {
          final categoryId = category.id;
          final response = await dio.get(
            'https://api.spotify.com/v1/browse/categories/$categoryId/playlists',
            options: Options(headers: {'Authorization': 'Bearer $accessCode'}),
          );
          if (response.statusCode == 200) {
            final playlist = PlaylistCategory.fromJson(response.data);
            if (playlist.playlists!.items.toString() != '[]') {
              BrowseAll.add(Tuple2(
                category.name!,
                playlist.playlists!.items!,
              ));
            }
          }
        }
        return right(BrowseAll);
      } else {
        log('e');
        return left(const MainFailures.serverFailures());
      }
    } catch (e) {
      log(e.toString());
      return left(const MainFailures.clientFailures());
    }
  }

  @override
  Future<Either<MainFailures, SearchQuery>> getSearchQuery(
      String accessCode, String query) async {
    try {
      final response = await dio.get(
          'https://api.spotify.com/v1/search?q=$query&type=album%2Cartist%2Cplaylist%2Ctrack%2Cshow%2Cepisode%2Caudiobook',
          options: Options(headers: {'Authorization': 'Bearer $accessCode'}));
      if (response.statusCode == 200) {
        final json = response.data;
        return right(SearchQuery(
          searchQuerytracks: json['tracks'] == null
              ? SearchQueryTracks(items: [])
              : SearchQueryTracks.fromJson(
                  json['tracks'] as Map<String, dynamic>),
          artists: json['artists'] == null
              ? Artists(items: [])
              : Artists.fromJson(json['artists'] as Map<String, dynamic>),
          albums: json['albums'] == null
              ? Albums(items: [])
              : Albums.fromJson(json['albums'] as Map<String, dynamic>),
          playlists: json['playlists'] == null
              ? SearchQueryPlaylists(items: [])
              : SearchQueryPlaylists.fromJson(
                  json['playlists'] as Map<String, dynamic>),
          // shows: json['shows'] == null
          //     ? Shows(items: [])
          //     : Shows.fromJson(json['shows'] as Map<String, dynamic>),
          episodes: json['episodes'] == null
              ? Episodes(items: [])
              : Episodes.fromJson(json['episodes'] as Map<String, dynamic>),
          audiobooks: json['audiobooks'] == null
              ? Audiobooks(items: [])
              : Audiobooks.fromJson(json['audiobooks'] as Map<String, dynamic>),
        ));
      } else {
        return left(const MainFailures.serverFailures());
      }
    } catch (e) {
      log(e.toString());
      return left(const MainFailures.clientFailures());
    }
  }
}

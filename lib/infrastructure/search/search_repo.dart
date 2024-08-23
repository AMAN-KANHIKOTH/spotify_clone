import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:spotify_clone/domain/core/failures/failures.dart';
import 'package:spotify_clone/domain/search/models/browse_categories.dart';
import 'package:spotify_clone/domain/search/models/playlist_category.dart';
import 'package:spotify_clone/domain/search/search_services.dart';

@LazySingleton(as: SearchServices)
class SearchRepo implements SearchServices {
  final dio = Dio();
  @override
  Future<Either<MainFailures, List<Map<String, List<PlaylistItem>>>>>
      getBrowseCategories(String accessCode) async {
    List<Map<String, List<PlaylistItem>>> BrowseAll = [];
    try {
      final response = await dio.get(
        'https://api.spotify.com/v1/browse/categories',
        options: Options(headers: {'Authorization': 'Bearer $accessCode'}),
      );
      if (response.statusCode == 200) {
        final browseCategories = BrowseCategories.fromJson(response.data);
        for (var category in browseCategories.categories!.items!) {
          final categoryId = category.id;
          log('message');
          final response = await dio.get(
              'https://api.spotify.com/v1/browse/categories/$categoryId/playlists',
              options:
                  Options(headers: {'Authorization': 'Bearer $accessCode'}));
          if (response.statusCode == 200) {
            final playlist = PlaylistCategory.fromJson(response.data);
            if (playlist.playlists!.items.toString() != '[]') {
              log(playlist.playlists!.items.toString());
              BrowseAll.add({category.name!: playlist.playlists!.items!});
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
}

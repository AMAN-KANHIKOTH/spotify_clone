import 'package:dartz/dartz.dart';
import 'package:spotify_clone/domain/core/failures/failures.dart';
import 'package:spotify_clone/domain/search/models/playlist_category.dart';

abstract class SearchServices {
  Future<Either<MainFailures, List<Map<String, List<PlaylistItem>>>>>
      getBrowseCategories(String accessCode);
}

import 'package:dartz/dartz.dart';
import 'package:spotify_clone/domain/core/failures/failures.dart';
import 'package:spotify_clone/domain/home/model/artist_model.dart';

abstract class HomeService {
  Future<Either<MainFailures, ArtistModel>> getArtists(String AccessCode);
}

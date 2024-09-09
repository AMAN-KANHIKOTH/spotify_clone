import 'package:dartz/dartz.dart';
import 'package:spotify_clone/domain/core/failures/failures.dart';
import 'package:spotify_clone/domain/home/model/album_model.dart';
import 'package:spotify_clone/domain/home/model/artist_model.dart';
import 'package:spotify_clone/domain/home/model/fake_history.dart';

abstract class HomeService {
  Future<Either<MainFailures, ArtistModel>> getArtists(
      {required String accessCode, String artistIds});
  Future<Either<MainFailures, Albums>> getAlbums(String accessCode);
  Future<Either<MainFailures, FakeHistory>> getFakeHistory(String accessCode);
}

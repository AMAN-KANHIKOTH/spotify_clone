import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:spotify_clone/domain/core/failures/failures.dart';
import 'package:spotify_clone/domain/home/home_service.dart';
import 'package:spotify_clone/domain/home/model/artist_model.dart';
import 'package:dio/dio.dart';

@LazySingleton(as: HomeService)
class HomeRepo implements HomeService {
  @override
  Future<Either<MainFailures, ArtistModel>> getArtists(
      String AccessCode) async {
    try {
      final dio = Dio();
      final response = await dio.request(
          'https://api.spotify.com/v1/artists?ids=1mYsTxnqsietFxj1OgoGbG,09UmIX92EUH9hAK4bxvHx6,1wRPtKGflJrBx9BmLsSwlU,0FEJqmeLRzsXj8hgcZaAyB',
          options: Options(
              method: 'GET', headers: {'Authorization': 'Bearer $AccessCode'}));
      if (response.statusCode == 200) {
        final artistModel = ArtistModel.fromJson(response.data);
        return (right(artistModel));
      } else {
        return left(const MainFailures.serverFailures());
      }
    } catch (e) {
      return left(const MainFailures.clientFailures());
    }
  }
}

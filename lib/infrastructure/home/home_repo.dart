import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:spotify_clone/domain/core/failures/failures.dart';
import 'package:spotify_clone/domain/home/home_service.dart';
import 'package:spotify_clone/domain/home/model/album_model.dart';
import 'package:spotify_clone/domain/home/model/artist_model.dart';
import 'package:dio/dio.dart';

@LazySingleton(as: HomeService)
class HomeRepo implements HomeService {
  final dio = Dio();
  @override
  Future<Either<MainFailures, ArtistModel>> getArtists(
      String accessCode) async {
    try {
      final response = await dio.request(
          'https://api.spotify.com/v1/artists?ids=1mYsTxnqsietFxj1OgoGbG,4YRxDV8wJFPHPTeXepOstw,09UmIX92EUH9hAK4bxvHx6,1wRPtKGflJrBx9BmLsSwlU,0FEJqmeLRzsXj8hgcZaAyB',
          options: Options(
              method: 'GET', headers: {'Authorization': 'Bearer $accessCode'}));
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

  @override
  Future<Either<MainFailures, Albums>> getAlbums(String accessCode) async {
    try {
      final response = await dio.get(
          'https://api.spotify.com/v1/browse/new-releases',
          options: Options(headers: {'Authorization': 'Bearer $accessCode'}));
      if (response.statusCode == 200) {
        final albumModel = AlbumModel.fromJson(response.data);
        log(albumModel.albums!.items![0].images![0].url.toString());
        return right(albumModel.albums!);
      } else {
        return left(const MainFailures.serverFailures());
      }
    } catch (e) {
      return left(const MainFailures.clientFailures());
    }
  }
}

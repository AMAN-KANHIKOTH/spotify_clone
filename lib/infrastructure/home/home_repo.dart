import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:spotify_clone/domain/core/failures/failures.dart';
import 'package:spotify_clone/domain/home/home_service.dart';
import 'package:spotify_clone/domain/home/model/album_model.dart';
import 'package:spotify_clone/domain/home/model/artist_model.dart';
import 'package:dio/dio.dart';
import 'package:spotify_clone/domain/home/model/fake_history.dart';

const list = [
  '0Rkv5iqjF2uenfL0OVB8hg',
  "3EkmvTqyKrnMw1WiVpsSwF",
  "1JSu2Oir7oRN2EcdfL6KbQ",
  '1rUyvuK18HiuH5L2jJAtZH',
  '2jo4lZjhgTwX7ldHD5hl1t',
];

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
      //log('message');
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
        // log(albumModel.albums!.items![0].images![0].url.toString());
        return right(albumModel.albums!);
      } else {
        return left(const MainFailures.serverFailures());
      }
    } catch (e) {
      return left(const MainFailures.clientFailures());
    }
  }

  @override
  Future<Either<MainFailures, FakeHistory>> getFakeHistory(
      String accessCode) async {
    try {
      final response = await dio.get(
          'https://api.spotify.com/v1/albums?ids=0Rkv5iqjF2uenfL0OVB8hg%2C3EkmvTqyKrnMw1WiVpsSwF%2C1JSu2Oir7oRN2EcdfL6KbQ%2C1rUyvuK18HiuH5L2jJAtZH%2C2jo4lZjhgTwX7ldHD5hl1t',
          options: Options(headers: {'Authorization': 'Bearer $accessCode'}));
      if (response.statusCode == 200) {
        final fakeHistory = FakeHistory.fromJson(response.data);
        return right(fakeHistory);
      } else {
        return left(const MainFailures.serverFailures());
      }
    } catch (e) {
      return left(const MainFailures.clientFailures());
    }
  }
}

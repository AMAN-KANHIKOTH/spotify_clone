import 'package:dartz/dartz.dart';
import 'package:spotify_clone/domain/core/failures/failures.dart';

abstract class AccessCodeServices {
  Future<Either<MainFailures, String>> getAccessCode();
}

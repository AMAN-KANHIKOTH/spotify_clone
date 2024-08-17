import 'package:freezed_annotation/freezed_annotation.dart';
part 'failures.freezed.dart';

@freezed
class MainFailures with _$MainFailures {
  const factory MainFailures.clientFailures() = ClientFailures;
  const factory MainFailures.serverFailures() = ServerFailures;
}

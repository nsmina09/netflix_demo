import 'package:freezed_annotation/freezed_annotation.dart';
part 'main_failure.freezed.dart';

@freezed
class MainFailures with _$MainFailures{
  const factory MainFailures.clientFailue() = _ClientFailue;
  const factory MainFailures.serverFailure() = _ServerFailure;
}
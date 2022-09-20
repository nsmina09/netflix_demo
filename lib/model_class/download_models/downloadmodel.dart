import 'package:freezed_annotation/freezed_annotation.dart';
part 'downloadmodel.freezed.dart';
part 'downloadmodel.g.dart';

@freezed
class DownloadModel with _$DownloadModel{
  const factory DownloadModel({
    @JsonKey(name: 'poster_path')
    required String posterPath,
    @JsonKey(name: 'name')
    required String name,
  }) = _DownloadModel;

  factory DownloadModel.fromJson(Map<String, dynamic> json) => _$DownloadModelFromJson(json);
}
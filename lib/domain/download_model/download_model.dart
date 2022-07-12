
import 'package:freezed_annotation/freezed_annotation.dart';
part 'download_model.freezed.dart';
part 'download_model.g.dart';

@freezed
class DownloadModel with _$DownloadModel{

  const factory DownloadModel(
  {
    @JsonKey(name: 'poster_path')  required String? posterPath,
}
      )=_DownloadModel;
  factory DownloadModel.fromJson(Map <String,dynamic> json)=>_$DownloadModelFromJson(json);
}
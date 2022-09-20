part of 'downloads_bloc.dart';

@freezed
class DownloadsState with _$DownloadsState {
  const factory DownloadsState({
    required bool isLoading,
    required bool isError,
    required List<DownloadModel> downloadList,
  }) = _DownloadsState;
  
  factory DownloadsState.initial() {
    return const DownloadsState(
      isLoading: false,
      isError: false,
      downloadList: [],
    );
  }
}

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_app/model_class/download_models/downloadmodel.dart';
import 'package:netflix_app/services/download_service.dart';
part 'downloads_event.dart';
part 'downloads_state.dart';
part 'downloads_bloc.freezed.dart';

@injectable
class DownloadsBloc extends Bloc<DownloadsEvent, DownloadsState> {
  final DownloadServices downloadServices;
  DownloadsBloc(this.downloadServices) : super(DownloadsState.initial()) {
    on<DownloadsEvent>((event, emit) async {
      emit(
        const DownloadsState(
          isLoading: true,
          isError: false,
          downloadList: [],
        ),
      );

      final result = await downloadServices.getDownloadImages();
      print('result $result');
      final state = result.fold((l) {
        return const DownloadsState(
          isError: true,
          isLoading: false,
          downloadList: [],
        );
      }, (r) {
        return DownloadsState(
          isLoading: false,
          isError: false,
          downloadList: r,
        );
      });
      emit(state);
    });
  }
}

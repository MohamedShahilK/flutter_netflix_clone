import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/domain/core/failures/main_failures.dart';
import 'package:netflix_clone/domain/downloads/downloads_repo.dart';
import 'package:netflix_clone/domain/downloads/model/downloads.dart';

part 'downloads_event.dart';
part 'downloads_state.dart';
part 'downloads_bloc.freezed.dart';

@Injectable()
class DownloadsBloc extends Bloc<DownloadsEvent, DownloadsState> {
  final DownloadsRepo _downloadRepo;
  DownloadsBloc(this._downloadRepo) : super(DownloadsState.initial()) {
    on<_GetDownloadsImage>(
      (event, emit) async {
        emit(state.copyWith(
          isLoading: true,
          downloadFailureOrSuccessOption: none(),
        ));

        final Either<MainFailures, List<Downloads>> _downloadsApiResult =
            await _downloadRepo.getDownloadPageApi();
        // print(_downloadsApiResult);
        final _state = _downloadsApiResult.fold(
          (failure) => state.copyWith(
            isLoading: false,
            downloadFailureOrSuccessOption: Some(Left(failure)),
          ),
          (resp) => state.copyWith(
            isLoading: false,
            downloadImages: resp,
            downloadFailureOrSuccessOption: Some(Right(resp)),
          ),
        );
        emit(_state);
      },
    );
  }
}

import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_clone/domain/core/failures/main_failures.dart';
import 'package:netflix_clone/domain/new_and_hot/hot_and_new_services.dart';
import 'package:netflix_clone/domain/new_and_hot/model/comingsoon/comingsoon.dart';
import 'package:netflix_clone/domain/new_and_hot/model/comingsoon/comingsoonvideoresp/comingsoonvideoresp.dart';
import 'package:netflix_clone/domain/new_and_hot/model/everyones/everyones.dart';

part 'hotandnew_event.dart';
part 'hotandnew_state.dart';
part 'hotandnew_bloc.freezed.dart';

@Injectable()
class HotandnewBloc extends Bloc<HotandnewEvent, HotAndNewState> {
  final HotAndNewServices _hotAndNewServices;
  HotandnewBloc(this._hotAndNewServices) : super(HotAndNewState.initial()) {
    on<_GetComingSoonApi>((event, emit) async {
      if (state.comingsoonResp.isNotEmpty) {
        emit(state.copyWith(
          isLoading: false,
          isError: false,
          comingsoonResp: state.comingsoonResp,
        ));
        return;
      }
      emit(state.copyWith(
        isLoading: true,
        isError: false,
      ));

      final Either<MainFailures, ComingsoonResp> _result =
          await _hotAndNewServices.getComingSoonApi();
      // print(_result);
      final _state = _result.fold(
        (failure) => state.copyWith(
          isLoading: false,
          isError: true,
        ),
        (resp) => state.copyWith(
          isLoading: false,
          isError: false,
          comingsoonResp: resp.results,
          everyonesResp: state.everyonesResp,
          // comingsoonvideokey: state.comingsoonvideokey,
        ),
      );
      emit(_state);
      // log(state.comingsoonResp.toString());
    });

    // on<_GetComingSoonVideoApi>((event, emit) async {
    //   final Either<MainFailures, ComingSoonVideoResp> _result =
    //       await _hotAndNewServices.getComingSoonVideosApi(
    //     movieID: event.movieID,
    //   );

    //   final _state = _result.fold(
    //     (failure) => state.copyWith(
    //       isLoading: false,
    //       isError: true,
    //     ),
    //     (resp) => state.copyWith(
    //       isLoading: false,
    //       isError: false,
    //       comingsoonResp: state.comingsoonResp,
    //       everyonesResp: state.everyonesResp,
    //       comingsoonvideokey: resp.results,
    //     ),
    //   );
    //   emit(_state);
    // });

    on<_GetEveryOnesApi>((event, emit) async {
      if (state.everyonesResp.isNotEmpty) {
        emit(state.copyWith(
          isLoading: false,
          isError: false,
          everyonesResp: state.everyonesResp,
        ));
        return;
      }
      emit(state.copyWith(
        isLoading: true,
        isError: false,
      ));

      final Either<MainFailures, EveryonesResp> _result =
          await _hotAndNewServices.getEveryOnesApi();
      final _state = _result.fold(
        (failure) => state.copyWith(
          isLoading: false,
          isError: true,
        ),
        (resp) => state.copyWith(
          isLoading: false,
          isError: false,
          comingsoonResp: state.comingsoonResp,
          everyonesResp: resp.results,
        ),
      );
      emit(_state);
      // log(state.everyonesResp.toString());
    });
  }
}

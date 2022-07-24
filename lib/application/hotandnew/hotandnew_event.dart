part of 'hotandnew_bloc.dart';

@freezed
class HotandnewEvent with _$HotandnewEvent {
  const factory HotandnewEvent.getComingSoonApi() = _GetComingSoonApi;
  const factory HotandnewEvent.getComingSoonVideoApi({
    required String movieID,
  }) = _GetComingSoonVideoApi;
  const factory HotandnewEvent.getEveryOnesApi() = _GetEveryOnesApi;
}

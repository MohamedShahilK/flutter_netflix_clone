part of 'fastlaugh_bloc.dart';

@freezed
class FastlaughEvent with _$FastlaughEvent {
  const factory FastlaughEvent.getProfileImage() = _getProfileImage;
  
  //Due to "Cannot add to an unmodifiable list" error
  
  // const factory FastlaughEvent.likedVideoEvent({
  //   required int videoId,
  // }) = _LikedVideoEvent;
  // const factory FastlaughEvent.unlikedVideoEvent({
  //   required int videoId,
  // }) = _UnlikedVideoEvent;
}

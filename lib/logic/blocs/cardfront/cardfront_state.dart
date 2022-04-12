part of 'cardfront_bloc.dart';

@freezed
class CardfrontState with _$CardfrontState {
  const factory CardfrontState.initial() = _Initial;
  const factory CardfrontState.loading() = _Loading;
  const factory CardfrontState.loaded(List<CardFront> data) = _Loaded;
  const factory CardfrontState.error(NetworkException error) = _Error;
}

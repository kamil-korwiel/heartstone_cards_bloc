part of 'info_bloc.dart';

@freezed
class InfoState with _$InfoState {
  const factory InfoState.initial() = _Initial;
  const factory InfoState.loading() = _Loading;
  const factory InfoState.loaded(Info data) = _Loaded;
  const factory InfoState.error(NetworkException error) = _Error;
}

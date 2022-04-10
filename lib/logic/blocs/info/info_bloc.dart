import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:heartstone_cards_bloc/core/exceptions/network_exception.dart';
import 'package:heartstone_cards_bloc/data/models/info/info.dart';
import 'package:heartstone_cards_bloc/data/repositories/abstract/heartstone_repositories.dart';

part 'info_event.dart';
part 'info_state.dart';
part 'info_bloc.freezed.dart';

class InfoBloc extends Bloc<InfoEvent, InfoState> {
  final HeartStoneRepository _heartStoneRepository;

  InfoBloc(this._heartStoneRepository) : super(const _Initial()) {
    on<InfoEvent>((event, emit) async {
      try {
        emit(const InfoState.loading());
        final info = await _heartStoneRepository.getInfo();
        if (kDebugMode) {
          print(info.patch);
        }
        emit(InfoState.loaded(info));
      } on NetworkException catch (e) {
        emit(InfoState.error(e));
      }
    });
  }
}

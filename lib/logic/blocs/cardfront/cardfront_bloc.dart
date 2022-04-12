import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:heartstone_cards_bloc/core/exceptions/network_exception.dart';
import 'package:heartstone_cards_bloc/data/models/cardfront/cardfront.dart';
import 'package:heartstone_cards_bloc/data/repositories/abstract/heartstone_repositories.dart';

part 'cardfront_event.dart';
part 'cardfront_state.dart';
part 'cardfront_bloc.freezed.dart';

class CardfrontBloc extends Bloc<CardfrontEvent, CardfrontState> {
  final HeartStoneRepository _heartStoneRepository;

  CardfrontBloc(this._heartStoneRepository) : super(const _Initial()) {
    on<CardfrontEvent>((event, emit) async {
      try {
        emit(const CardfrontState.loading());
        final data = await event.maybeWhen(
          getSet: (nameOfSet) => _heartStoneRepository.getSetOfCards(nameOfSet),
          orElse: () {},
        );
        emit(CardfrontState.loaded(data!));
      } on NetworkException catch (e) {
        emit(CardfrontState.error(e));
      }
    });
  }
}

part of 'cardfront_bloc.dart';

@freezed
class CardfrontEvent with _$CardfrontEvent {
  const factory CardfrontEvent.started() = _Started;
  const factory CardfrontEvent.getAll() = _GetAll;
  const factory CardfrontEvent.getSet(String nameOfSet) = _GetSet;
  const factory CardfrontEvent.getTypes(String nameOfTypes) = _GetTypes;
  const factory CardfrontEvent.getRaces(String nameOfRace) = _GetRaces;
  const factory CardfrontEvent.getFactions(String nameOfFactions) =
      _GetFactions;
  const factory CardfrontEvent.getQualities(String nameOfQualities) =
      _GetQualities;
  const factory CardfrontEvent.getClasses(String nameOfClass) = _GetClasses;
  const factory CardfrontEvent.search(String nameOfCard) = _Search;
}

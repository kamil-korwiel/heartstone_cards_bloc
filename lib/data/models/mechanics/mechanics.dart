import 'package:freezed_annotation/freezed_annotation.dart';

part 'mechanics.freezed.dart';
part 'mechanics.g.dart';

@freezed
class Mechanics with _$Mechanics {
  factory Mechanics(
    final String name
    ) = _Mechanics;

  factory Mechanics.fromJson(Map<String, dynamic> json) => _$MechanicsFromJson(json);
}
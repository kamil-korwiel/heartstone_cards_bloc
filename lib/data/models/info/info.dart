import 'package:freezed_annotation/freezed_annotation.dart';

part 'info.freezed.dart';
part 'info.g.dart';

@freezed
class Info with _$Info {
  factory Info(
    final String patch,
    final List<String> classes,
    final List<String> sets,
    final List<String> standard,
    final List<String> wild,
    final List<String> types,
    final List<String> factions,
    final List<String> qualities,
    final List<String> races,
  ) = _Info;
  
  // final Map<String, dynamic> locales;

  factory Info.fromJson(Map<String, dynamic> json) => _$InfoFromJson(json);
}
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:heartstone_cards_bloc/data/models/mechanics/mechanics.dart';

part 'cardfront.freezed.dart';
part 'cardfront.g.dart';

@freezed
class CardFront with _$CardFront {
  factory CardFront({
    final String? dbfId,
    final String? cardId,

    final String? name,
    final String? cardSet,
    final String? type,
    final String? rarity,

    final int? cost,
    final int? attack,
    final int? health,
    final int? durability,
    final int? armor,
 
    final String? text,
    final String? flavor,
    @Default(false)final bool collectible,
    @Default(false)final bool elite,
 
    final String? playerClass,
    final String? multiClassGroup,
    final String? spellSchool,
 
    final String? howToGet,
    final String? howToGetGold,
    final String? howToGetDiamond,
 
    final String? img,
    final String? imgGold,
    final String? imgDiamond,

    final String? artist,
    final List<Mechanics>? mechanics,
  }) = _CardFront;

  factory CardFront.fromJson(Map<String, dynamic> json) => _$CardFrontFromJson(json);
  
}

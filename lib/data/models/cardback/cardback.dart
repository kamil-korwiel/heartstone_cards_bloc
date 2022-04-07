// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'cardback.freezed.dart';
part 'cardback.g.dart';

@freezed
class CardBack with _$CardBack {
  factory CardBack({
    final String? cardBackId,
    required final String name,
    final String? description,
    final String? howToGet,
    final bool? enabled,
    final String? img,
    final String? imgAnimated
  }) = _CardBack;

  factory CardBack.fromJson(Map<String, dynamic> json) => _$CardBackFromJson(json);
  
}
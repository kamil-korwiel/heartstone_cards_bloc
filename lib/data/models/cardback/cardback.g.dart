// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cardback.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CardBack _$$_CardBackFromJson(Map<String, dynamic> json) => _$_CardBack(
      cardBackId: json['cardBackId'] as String?,
      name: json['name'] as String,
      description: json['description'] as String?,
      howToGet: json['howToGet'] as String?,
      enabled: json['enabled'] as bool?,
      img: json['img'] as String?,
      imgAnimated: json['imgAnimated'] as String?,
    );

Map<String, dynamic> _$$_CardBackToJson(_$_CardBack instance) =>
    <String, dynamic>{
      'cardBackId': instance.cardBackId,
      'name': instance.name,
      'description': instance.description,
      'howToGet': instance.howToGet,
      'enabled': instance.enabled,
      'img': instance.img,
      'imgAnimated': instance.imgAnimated,
    };

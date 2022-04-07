// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Info _$$_InfoFromJson(Map<String, dynamic> json) => _$_Info(
      json['patch'] as String,
      (json['classes'] as List<dynamic>).map((e) => e as String).toList(),
      (json['sets'] as List<dynamic>).map((e) => e as String).toList(),
      (json['standard'] as List<dynamic>).map((e) => e as String).toList(),
      (json['wild'] as List<dynamic>).map((e) => e as String).toList(),
      (json['types'] as List<dynamic>).map((e) => e as String).toList(),
      (json['factions'] as List<dynamic>).map((e) => e as String).toList(),
      (json['qualities'] as List<dynamic>).map((e) => e as String).toList(),
      (json['races'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_InfoToJson(_$_Info instance) => <String, dynamic>{
      'patch': instance.patch,
      'classes': instance.classes,
      'sets': instance.sets,
      'standard': instance.standard,
      'wild': instance.wild,
      'types': instance.types,
      'factions': instance.factions,
      'qualities': instance.qualities,
      'races': instance.races,
    };

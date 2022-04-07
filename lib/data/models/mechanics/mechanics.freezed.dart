// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'mechanics.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Mechanics _$MechanicsFromJson(Map<String, dynamic> json) {
  return _Mechanics.fromJson(json);
}

/// @nodoc
class _$MechanicsTearOff {
  const _$MechanicsTearOff();

  _Mechanics call(String name) {
    return _Mechanics(
      name,
    );
  }

  Mechanics fromJson(Map<String, Object?> json) {
    return Mechanics.fromJson(json);
  }
}

/// @nodoc
const $Mechanics = _$MechanicsTearOff();

/// @nodoc
mixin _$Mechanics {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MechanicsCopyWith<Mechanics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MechanicsCopyWith<$Res> {
  factory $MechanicsCopyWith(Mechanics value, $Res Function(Mechanics) then) =
      _$MechanicsCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class _$MechanicsCopyWithImpl<$Res> implements $MechanicsCopyWith<$Res> {
  _$MechanicsCopyWithImpl(this._value, this._then);

  final Mechanics _value;
  // ignore: unused_field
  final $Res Function(Mechanics) _then;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$MechanicsCopyWith<$Res> implements $MechanicsCopyWith<$Res> {
  factory _$MechanicsCopyWith(
          _Mechanics value, $Res Function(_Mechanics) then) =
      __$MechanicsCopyWithImpl<$Res>;
  @override
  $Res call({String name});
}

/// @nodoc
class __$MechanicsCopyWithImpl<$Res> extends _$MechanicsCopyWithImpl<$Res>
    implements _$MechanicsCopyWith<$Res> {
  __$MechanicsCopyWithImpl(_Mechanics _value, $Res Function(_Mechanics) _then)
      : super(_value, (v) => _then(v as _Mechanics));

  @override
  _Mechanics get _value => super._value as _Mechanics;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_Mechanics(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Mechanics implements _Mechanics {
  _$_Mechanics(this.name);

  factory _$_Mechanics.fromJson(Map<String, dynamic> json) =>
      _$$_MechanicsFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'Mechanics(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Mechanics &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$MechanicsCopyWith<_Mechanics> get copyWith =>
      __$MechanicsCopyWithImpl<_Mechanics>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MechanicsToJson(this);
  }
}

abstract class _Mechanics implements Mechanics {
  factory _Mechanics(String name) = _$_Mechanics;

  factory _Mechanics.fromJson(Map<String, dynamic> json) =
      _$_Mechanics.fromJson;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$MechanicsCopyWith<_Mechanics> get copyWith =>
      throw _privateConstructorUsedError;
}

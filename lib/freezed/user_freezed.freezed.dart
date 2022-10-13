// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_freezed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserFreezed _$UserFreezedFromJson(Map<String, dynamic> json) {
  return _UserFreezed.fromJson(json);
}

/// @nodoc
mixin _$UserFreezed {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get age => throw _privateConstructorUsedError;
  bool get isMen => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserFreezedCopyWith<UserFreezed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserFreezedCopyWith<$Res> {
  factory $UserFreezedCopyWith(
          UserFreezed value, $Res Function(UserFreezed) then) =
      _$UserFreezedCopyWithImpl<$Res>;
  $Res call({String id, String name, int age, bool isMen});
}

/// @nodoc
class _$UserFreezedCopyWithImpl<$Res> implements $UserFreezedCopyWith<$Res> {
  _$UserFreezedCopyWithImpl(this._value, this._then);

  final UserFreezed _value;
  // ignore: unused_field
  final $Res Function(UserFreezed) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? age = freezed,
    Object? isMen = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      age: age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      isMen: isMen == freezed
          ? _value.isMen
          : isMen // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_UserFreezedCopyWith<$Res>
    implements $UserFreezedCopyWith<$Res> {
  factory _$$_UserFreezedCopyWith(
          _$_UserFreezed value, $Res Function(_$_UserFreezed) then) =
      __$$_UserFreezedCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name, int age, bool isMen});
}

/// @nodoc
class __$$_UserFreezedCopyWithImpl<$Res> extends _$UserFreezedCopyWithImpl<$Res>
    implements _$$_UserFreezedCopyWith<$Res> {
  __$$_UserFreezedCopyWithImpl(
      _$_UserFreezed _value, $Res Function(_$_UserFreezed) _then)
      : super(_value, (v) => _then(v as _$_UserFreezed));

  @override
  _$_UserFreezed get _value => super._value as _$_UserFreezed;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? age = freezed,
    Object? isMen = freezed,
  }) {
    return _then(_$_UserFreezed(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      age: age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      isMen: isMen == freezed
          ? _value.isMen
          : isMen // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserFreezed implements _UserFreezed {
  const _$_UserFreezed(
      {required this.id,
      required this.name,
      required this.age,
      required this.isMen});

  factory _$_UserFreezed.fromJson(Map<String, dynamic> json) =>
      _$$_UserFreezedFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final int age;
  @override
  final bool isMen;

  @override
  String toString() {
    return 'UserFreezed(id: $id, name: $name, age: $age, isMen: $isMen)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserFreezed &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.age, age) &&
            const DeepCollectionEquality().equals(other.isMen, isMen));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(age),
      const DeepCollectionEquality().hash(isMen));

  @JsonKey(ignore: true)
  @override
  _$$_UserFreezedCopyWith<_$_UserFreezed> get copyWith =>
      __$$_UserFreezedCopyWithImpl<_$_UserFreezed>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserFreezedToJson(
      this,
    );
  }
}

abstract class _UserFreezed implements UserFreezed {
  const factory _UserFreezed(
      {required final String id,
      required final String name,
      required final int age,
      required final bool isMen}) = _$_UserFreezed;

  factory _UserFreezed.fromJson(Map<String, dynamic> json) =
      _$_UserFreezed.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  int get age;
  @override
  bool get isMen;
  @override
  @JsonKey(ignore: true)
  _$$_UserFreezedCopyWith<_$_UserFreezed> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'country_state_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CountryStateDto _$CountryStateDtoFromJson(Map<String, dynamic> json) {
  return _CountryStateDto.fromJson(json);
}

/// @nodoc
mixin _$CountryStateDto {
  int get id => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CountryStateDtoCopyWith<CountryStateDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryStateDtoCopyWith<$Res> {
  factory $CountryStateDtoCopyWith(
          CountryStateDto value, $Res Function(CountryStateDto) then) =
      _$CountryStateDtoCopyWithImpl<$Res, CountryStateDto>;
  @useResult
  $Res call({int id, String value});
}

/// @nodoc
class _$CountryStateDtoCopyWithImpl<$Res, $Val extends CountryStateDto>
    implements $CountryStateDtoCopyWith<$Res> {
  _$CountryStateDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CountryStateDtoImplCopyWith<$Res>
    implements $CountryStateDtoCopyWith<$Res> {
  factory _$$CountryStateDtoImplCopyWith(_$CountryStateDtoImpl value,
          $Res Function(_$CountryStateDtoImpl) then) =
      __$$CountryStateDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String value});
}

/// @nodoc
class __$$CountryStateDtoImplCopyWithImpl<$Res>
    extends _$CountryStateDtoCopyWithImpl<$Res, _$CountryStateDtoImpl>
    implements _$$CountryStateDtoImplCopyWith<$Res> {
  __$$CountryStateDtoImplCopyWithImpl(
      _$CountryStateDtoImpl _value, $Res Function(_$CountryStateDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? value = null,
  }) {
    return _then(_$CountryStateDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CountryStateDtoImpl implements _CountryStateDto {
  const _$CountryStateDtoImpl({required this.id, required this.value});

  factory _$CountryStateDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CountryStateDtoImplFromJson(json);

  @override
  final int id;
  @override
  final String value;

  @override
  String toString() {
    return 'CountryStateDto(id: $id, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountryStateDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CountryStateDtoImplCopyWith<_$CountryStateDtoImpl> get copyWith =>
      __$$CountryStateDtoImplCopyWithImpl<_$CountryStateDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CountryStateDtoImplToJson(
      this,
    );
  }
}

abstract class _CountryStateDto implements CountryStateDto {
  const factory _CountryStateDto(
      {required final int id,
      required final String value}) = _$CountryStateDtoImpl;

  factory _CountryStateDto.fromJson(Map<String, dynamic> json) =
      _$CountryStateDtoImpl.fromJson;

  @override
  int get id;
  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$CountryStateDtoImplCopyWith<_$CountryStateDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

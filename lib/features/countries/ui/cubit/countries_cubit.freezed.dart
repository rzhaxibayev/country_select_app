// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'countries_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CountriesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() failed,
    required TResult Function(List<Country> countries, Country? selectedCountry,
            CountryStateCondition? countryStateCondition)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? failed,
    TResult? Function(List<Country> countries, Country? selectedCountry,
            CountryStateCondition? countryStateCondition)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? failed,
    TResult Function(List<Country> countries, Country? selectedCountry,
            CountryStateCondition? countryStateCondition)?
        loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CountriesStateLoading value) loading,
    required TResult Function(_CountriesStateFailed value) failed,
    required TResult Function(_CountriesStateLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CountriesStateLoading value)? loading,
    TResult? Function(_CountriesStateFailed value)? failed,
    TResult? Function(_CountriesStateLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CountriesStateLoading value)? loading,
    TResult Function(_CountriesStateFailed value)? failed,
    TResult Function(_CountriesStateLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountriesStateCopyWith<$Res> {
  factory $CountriesStateCopyWith(
          CountriesState value, $Res Function(CountriesState) then) =
      _$CountriesStateCopyWithImpl<$Res, CountriesState>;
}

/// @nodoc
class _$CountriesStateCopyWithImpl<$Res, $Val extends CountriesState>
    implements $CountriesStateCopyWith<$Res> {
  _$CountriesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CountriesStateLoadingImplCopyWith<$Res> {
  factory _$$CountriesStateLoadingImplCopyWith(
          _$CountriesStateLoadingImpl value,
          $Res Function(_$CountriesStateLoadingImpl) then) =
      __$$CountriesStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CountriesStateLoadingImplCopyWithImpl<$Res>
    extends _$CountriesStateCopyWithImpl<$Res, _$CountriesStateLoadingImpl>
    implements _$$CountriesStateLoadingImplCopyWith<$Res> {
  __$$CountriesStateLoadingImplCopyWithImpl(_$CountriesStateLoadingImpl _value,
      $Res Function(_$CountriesStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CountriesStateLoadingImpl implements _CountriesStateLoading {
  const _$CountriesStateLoadingImpl();

  @override
  String toString() {
    return 'CountriesState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountriesStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() failed,
    required TResult Function(List<Country> countries, Country? selectedCountry,
            CountryStateCondition? countryStateCondition)
        loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? failed,
    TResult? Function(List<Country> countries, Country? selectedCountry,
            CountryStateCondition? countryStateCondition)?
        loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? failed,
    TResult Function(List<Country> countries, Country? selectedCountry,
            CountryStateCondition? countryStateCondition)?
        loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CountriesStateLoading value) loading,
    required TResult Function(_CountriesStateFailed value) failed,
    required TResult Function(_CountriesStateLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CountriesStateLoading value)? loading,
    TResult? Function(_CountriesStateFailed value)? failed,
    TResult? Function(_CountriesStateLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CountriesStateLoading value)? loading,
    TResult Function(_CountriesStateFailed value)? failed,
    TResult Function(_CountriesStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _CountriesStateLoading implements CountriesState {
  const factory _CountriesStateLoading() = _$CountriesStateLoadingImpl;
}

/// @nodoc
abstract class _$$CountriesStateFailedImplCopyWith<$Res> {
  factory _$$CountriesStateFailedImplCopyWith(_$CountriesStateFailedImpl value,
          $Res Function(_$CountriesStateFailedImpl) then) =
      __$$CountriesStateFailedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CountriesStateFailedImplCopyWithImpl<$Res>
    extends _$CountriesStateCopyWithImpl<$Res, _$CountriesStateFailedImpl>
    implements _$$CountriesStateFailedImplCopyWith<$Res> {
  __$$CountriesStateFailedImplCopyWithImpl(_$CountriesStateFailedImpl _value,
      $Res Function(_$CountriesStateFailedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CountriesStateFailedImpl implements _CountriesStateFailed {
  const _$CountriesStateFailedImpl();

  @override
  String toString() {
    return 'CountriesState.failed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountriesStateFailedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() failed,
    required TResult Function(List<Country> countries, Country? selectedCountry,
            CountryStateCondition? countryStateCondition)
        loaded,
  }) {
    return failed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? failed,
    TResult? Function(List<Country> countries, Country? selectedCountry,
            CountryStateCondition? countryStateCondition)?
        loaded,
  }) {
    return failed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? failed,
    TResult Function(List<Country> countries, Country? selectedCountry,
            CountryStateCondition? countryStateCondition)?
        loaded,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CountriesStateLoading value) loading,
    required TResult Function(_CountriesStateFailed value) failed,
    required TResult Function(_CountriesStateLoaded value) loaded,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CountriesStateLoading value)? loading,
    TResult? Function(_CountriesStateFailed value)? failed,
    TResult? Function(_CountriesStateLoaded value)? loaded,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CountriesStateLoading value)? loading,
    TResult Function(_CountriesStateFailed value)? failed,
    TResult Function(_CountriesStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _CountriesStateFailed implements CountriesState {
  const factory _CountriesStateFailed() = _$CountriesStateFailedImpl;
}

/// @nodoc
abstract class _$$CountriesStateLoadedImplCopyWith<$Res> {
  factory _$$CountriesStateLoadedImplCopyWith(_$CountriesStateLoadedImpl value,
          $Res Function(_$CountriesStateLoadedImpl) then) =
      __$$CountriesStateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<Country> countries,
      Country? selectedCountry,
      CountryStateCondition? countryStateCondition});

  $CountryCopyWith<$Res>? get selectedCountry;
  $CountryStateConditionCopyWith<$Res>? get countryStateCondition;
}

/// @nodoc
class __$$CountriesStateLoadedImplCopyWithImpl<$Res>
    extends _$CountriesStateCopyWithImpl<$Res, _$CountriesStateLoadedImpl>
    implements _$$CountriesStateLoadedImplCopyWith<$Res> {
  __$$CountriesStateLoadedImplCopyWithImpl(_$CountriesStateLoadedImpl _value,
      $Res Function(_$CountriesStateLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countries = null,
    Object? selectedCountry = freezed,
    Object? countryStateCondition = freezed,
  }) {
    return _then(_$CountriesStateLoadedImpl(
      countries: null == countries
          ? _value._countries
          : countries // ignore: cast_nullable_to_non_nullable
              as List<Country>,
      selectedCountry: freezed == selectedCountry
          ? _value.selectedCountry
          : selectedCountry // ignore: cast_nullable_to_non_nullable
              as Country?,
      countryStateCondition: freezed == countryStateCondition
          ? _value.countryStateCondition
          : countryStateCondition // ignore: cast_nullable_to_non_nullable
              as CountryStateCondition?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CountryCopyWith<$Res>? get selectedCountry {
    if (_value.selectedCountry == null) {
      return null;
    }

    return $CountryCopyWith<$Res>(_value.selectedCountry!, (value) {
      return _then(_value.copyWith(selectedCountry: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CountryStateConditionCopyWith<$Res>? get countryStateCondition {
    if (_value.countryStateCondition == null) {
      return null;
    }

    return $CountryStateConditionCopyWith<$Res>(_value.countryStateCondition!,
        (value) {
      return _then(_value.copyWith(countryStateCondition: value));
    });
  }
}

/// @nodoc

class _$CountriesStateLoadedImpl implements _CountriesStateLoaded {
  const _$CountriesStateLoadedImpl(
      {required final List<Country> countries,
      this.selectedCountry,
      this.countryStateCondition})
      : _countries = countries;

  final List<Country> _countries;
  @override
  List<Country> get countries {
    if (_countries is EqualUnmodifiableListView) return _countries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_countries);
  }

  @override
  final Country? selectedCountry;
  @override
  final CountryStateCondition? countryStateCondition;

  @override
  String toString() {
    return 'CountriesState.loaded(countries: $countries, selectedCountry: $selectedCountry, countryStateCondition: $countryStateCondition)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountriesStateLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._countries, _countries) &&
            (identical(other.selectedCountry, selectedCountry) ||
                other.selectedCountry == selectedCountry) &&
            (identical(other.countryStateCondition, countryStateCondition) ||
                other.countryStateCondition == countryStateCondition));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_countries),
      selectedCountry,
      countryStateCondition);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CountriesStateLoadedImplCopyWith<_$CountriesStateLoadedImpl>
      get copyWith =>
          __$$CountriesStateLoadedImplCopyWithImpl<_$CountriesStateLoadedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() failed,
    required TResult Function(List<Country> countries, Country? selectedCountry,
            CountryStateCondition? countryStateCondition)
        loaded,
  }) {
    return loaded(countries, selectedCountry, countryStateCondition);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? failed,
    TResult? Function(List<Country> countries, Country? selectedCountry,
            CountryStateCondition? countryStateCondition)?
        loaded,
  }) {
    return loaded?.call(countries, selectedCountry, countryStateCondition);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? failed,
    TResult Function(List<Country> countries, Country? selectedCountry,
            CountryStateCondition? countryStateCondition)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(countries, selectedCountry, countryStateCondition);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CountriesStateLoading value) loading,
    required TResult Function(_CountriesStateFailed value) failed,
    required TResult Function(_CountriesStateLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CountriesStateLoading value)? loading,
    TResult? Function(_CountriesStateFailed value)? failed,
    TResult? Function(_CountriesStateLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CountriesStateLoading value)? loading,
    TResult Function(_CountriesStateFailed value)? failed,
    TResult Function(_CountriesStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _CountriesStateLoaded implements CountriesState {
  const factory _CountriesStateLoaded(
          {required final List<Country> countries,
          final Country? selectedCountry,
          final CountryStateCondition? countryStateCondition}) =
      _$CountriesStateLoadedImpl;

  List<Country> get countries;
  Country? get selectedCountry;
  CountryStateCondition? get countryStateCondition;
  @JsonKey(ignore: true)
  _$$CountriesStateLoadedImplCopyWith<_$CountriesStateLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CountryStateCondition {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() failed,
    required TResult Function(List<CountryState> countryStates) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? failed,
    TResult? Function(List<CountryState> countryStates)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? failed,
    TResult Function(List<CountryState> countryStates)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CountryStateConditionLoading value) loading,
    required TResult Function(_CountryStateConditionFailed value) failed,
    required TResult Function(_CountryStateConditionLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CountryStateConditionLoading value)? loading,
    TResult? Function(_CountryStateConditionFailed value)? failed,
    TResult? Function(_CountryStateConditionLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CountryStateConditionLoading value)? loading,
    TResult Function(_CountryStateConditionFailed value)? failed,
    TResult Function(_CountryStateConditionLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryStateConditionCopyWith<$Res> {
  factory $CountryStateConditionCopyWith(CountryStateCondition value,
          $Res Function(CountryStateCondition) then) =
      _$CountryStateConditionCopyWithImpl<$Res, CountryStateCondition>;
}

/// @nodoc
class _$CountryStateConditionCopyWithImpl<$Res,
        $Val extends CountryStateCondition>
    implements $CountryStateConditionCopyWith<$Res> {
  _$CountryStateConditionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CountryStateConditionLoadingImplCopyWith<$Res> {
  factory _$$CountryStateConditionLoadingImplCopyWith(
          _$CountryStateConditionLoadingImpl value,
          $Res Function(_$CountryStateConditionLoadingImpl) then) =
      __$$CountryStateConditionLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CountryStateConditionLoadingImplCopyWithImpl<$Res>
    extends _$CountryStateConditionCopyWithImpl<$Res,
        _$CountryStateConditionLoadingImpl>
    implements _$$CountryStateConditionLoadingImplCopyWith<$Res> {
  __$$CountryStateConditionLoadingImplCopyWithImpl(
      _$CountryStateConditionLoadingImpl _value,
      $Res Function(_$CountryStateConditionLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CountryStateConditionLoadingImpl
    implements _CountryStateConditionLoading {
  const _$CountryStateConditionLoadingImpl();

  @override
  String toString() {
    return 'CountryStateCondition.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountryStateConditionLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() failed,
    required TResult Function(List<CountryState> countryStates) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? failed,
    TResult? Function(List<CountryState> countryStates)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? failed,
    TResult Function(List<CountryState> countryStates)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CountryStateConditionLoading value) loading,
    required TResult Function(_CountryStateConditionFailed value) failed,
    required TResult Function(_CountryStateConditionLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CountryStateConditionLoading value)? loading,
    TResult? Function(_CountryStateConditionFailed value)? failed,
    TResult? Function(_CountryStateConditionLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CountryStateConditionLoading value)? loading,
    TResult Function(_CountryStateConditionFailed value)? failed,
    TResult Function(_CountryStateConditionLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _CountryStateConditionLoading implements CountryStateCondition {
  const factory _CountryStateConditionLoading() =
      _$CountryStateConditionLoadingImpl;
}

/// @nodoc
abstract class _$$CountryStateConditionFailedImplCopyWith<$Res> {
  factory _$$CountryStateConditionFailedImplCopyWith(
          _$CountryStateConditionFailedImpl value,
          $Res Function(_$CountryStateConditionFailedImpl) then) =
      __$$CountryStateConditionFailedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CountryStateConditionFailedImplCopyWithImpl<$Res>
    extends _$CountryStateConditionCopyWithImpl<$Res,
        _$CountryStateConditionFailedImpl>
    implements _$$CountryStateConditionFailedImplCopyWith<$Res> {
  __$$CountryStateConditionFailedImplCopyWithImpl(
      _$CountryStateConditionFailedImpl _value,
      $Res Function(_$CountryStateConditionFailedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CountryStateConditionFailedImpl
    implements _CountryStateConditionFailed {
  const _$CountryStateConditionFailedImpl();

  @override
  String toString() {
    return 'CountryStateCondition.failed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountryStateConditionFailedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() failed,
    required TResult Function(List<CountryState> countryStates) loaded,
  }) {
    return failed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? failed,
    TResult? Function(List<CountryState> countryStates)? loaded,
  }) {
    return failed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? failed,
    TResult Function(List<CountryState> countryStates)? loaded,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CountryStateConditionLoading value) loading,
    required TResult Function(_CountryStateConditionFailed value) failed,
    required TResult Function(_CountryStateConditionLoaded value) loaded,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CountryStateConditionLoading value)? loading,
    TResult? Function(_CountryStateConditionFailed value)? failed,
    TResult? Function(_CountryStateConditionLoaded value)? loaded,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CountryStateConditionLoading value)? loading,
    TResult Function(_CountryStateConditionFailed value)? failed,
    TResult Function(_CountryStateConditionLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _CountryStateConditionFailed implements CountryStateCondition {
  const factory _CountryStateConditionFailed() =
      _$CountryStateConditionFailedImpl;
}

/// @nodoc
abstract class _$$CountryStateConditionLoadedImplCopyWith<$Res> {
  factory _$$CountryStateConditionLoadedImplCopyWith(
          _$CountryStateConditionLoadedImpl value,
          $Res Function(_$CountryStateConditionLoadedImpl) then) =
      __$$CountryStateConditionLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CountryState> countryStates});
}

/// @nodoc
class __$$CountryStateConditionLoadedImplCopyWithImpl<$Res>
    extends _$CountryStateConditionCopyWithImpl<$Res,
        _$CountryStateConditionLoadedImpl>
    implements _$$CountryStateConditionLoadedImplCopyWith<$Res> {
  __$$CountryStateConditionLoadedImplCopyWithImpl(
      _$CountryStateConditionLoadedImpl _value,
      $Res Function(_$CountryStateConditionLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countryStates = null,
  }) {
    return _then(_$CountryStateConditionLoadedImpl(
      countryStates: null == countryStates
          ? _value._countryStates
          : countryStates // ignore: cast_nullable_to_non_nullable
              as List<CountryState>,
    ));
  }
}

/// @nodoc

class _$CountryStateConditionLoadedImpl
    implements _CountryStateConditionLoaded {
  const _$CountryStateConditionLoadedImpl(
      {final List<CountryState> countryStates = const []})
      : _countryStates = countryStates;

  final List<CountryState> _countryStates;
  @override
  @JsonKey()
  List<CountryState> get countryStates {
    if (_countryStates is EqualUnmodifiableListView) return _countryStates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_countryStates);
  }

  @override
  String toString() {
    return 'CountryStateCondition.loaded(countryStates: $countryStates)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountryStateConditionLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._countryStates, _countryStates));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_countryStates));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CountryStateConditionLoadedImplCopyWith<_$CountryStateConditionLoadedImpl>
      get copyWith => __$$CountryStateConditionLoadedImplCopyWithImpl<
          _$CountryStateConditionLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() failed,
    required TResult Function(List<CountryState> countryStates) loaded,
  }) {
    return loaded(countryStates);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? failed,
    TResult? Function(List<CountryState> countryStates)? loaded,
  }) {
    return loaded?.call(countryStates);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? failed,
    TResult Function(List<CountryState> countryStates)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(countryStates);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CountryStateConditionLoading value) loading,
    required TResult Function(_CountryStateConditionFailed value) failed,
    required TResult Function(_CountryStateConditionLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CountryStateConditionLoading value)? loading,
    TResult? Function(_CountryStateConditionFailed value)? failed,
    TResult? Function(_CountryStateConditionLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CountryStateConditionLoading value)? loading,
    TResult Function(_CountryStateConditionFailed value)? failed,
    TResult Function(_CountryStateConditionLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _CountryStateConditionLoaded implements CountryStateCondition {
  const factory _CountryStateConditionLoaded(
          {final List<CountryState> countryStates}) =
      _$CountryStateConditionLoadedImpl;

  List<CountryState> get countryStates;
  @JsonKey(ignore: true)
  _$$CountryStateConditionLoadedImplCopyWith<_$CountryStateConditionLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

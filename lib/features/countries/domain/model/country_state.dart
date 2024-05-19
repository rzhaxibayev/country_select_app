import 'package:freezed_annotation/freezed_annotation.dart';

part 'country_state.freezed.dart';

@freezed
class CountryState with _$CountryState {
  const factory CountryState({
    required int id,
    required String name,
  }) = _CountryState;
}

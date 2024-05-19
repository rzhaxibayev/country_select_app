part of 'countries_cubit.dart';

@freezed
class CountriesState with _$CountriesState {
  const factory CountriesState.loading() = _CountriesStateLoading;

  const factory CountriesState.failed() = _CountriesStateFailed;

  const factory CountriesState.loaded({
    required List<Country> countries,
    Country? selectedCountry,
    CountryStateCondition? countryStateCondition,
  }) = _CountriesStateLoaded;
}

@freezed
class CountryStateCondition with _$CountryStateCondition {
  const factory CountryStateCondition.loading() = _CountryStateConditionLoading;

  const factory CountryStateCondition.failed() = _CountryStateConditionFailed;

  const factory CountryStateCondition.loaded({
    @Default([]) List<CountryState> countryStates,
  }) = _CountryStateConditionLoaded;
}

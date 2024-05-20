import 'package:bloc_test/bloc_test.dart';
import 'package:country_select_app/features/countries/domain/model/country.dart';
import 'package:country_select_app/features/countries/domain/model/country_state.dart';
import 'package:country_select_app/features/countries/domain/repository/countries_repository.dart';
import 'package:country_select_app/features/countries/ui/cubit/countries_cubit.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockCountriesRepository extends Mock implements CountriesRepository {}

void main() {
  late MockCountriesRepository mockRepository;
  late CountriesCubit countriesCubit;

  setUp(() {
    mockRepository = MockCountriesRepository();
    countriesCubit = CountriesCubit(repository: mockRepository);
  });

  group('CountriesCubit', () {
    const country = Country(id: 1, name: 'Australia');
    const countryState = CountryState(id: 1, name: 'Wellington');

    blocTest<CountriesCubit, CountriesState>(
      'emits [CountriesState.loaded()] when init is called and succeeds',
      build: () {
        when(() => mockRepository.loadCountries()).thenAnswer(
          (_) async => [country],
        );
        return countriesCubit;
      },
      act: (cubit) => cubit.init(),
      expect: () => [
        const CountriesState.loaded(countries: [country]),
      ],
    );

    blocTest<CountriesCubit, CountriesState>(
      'emits [CountriesState.failed()] when init is called and fails',
      build: () {
        when(() => mockRepository.loadCountries()).thenThrow(Exception());
        return countriesCubit;
      },
      act: (cubit) => cubit.init(),
      expect: () => [
        const CountriesState.failed(),
      ],
    );

    blocTest<CountriesCubit, CountriesState>(
      'emits correct states when a country is selected and succeeds',
      build: () {
        when(() => mockRepository.loadCountries()).thenAnswer(
          (_) async => [country],
        );
        when(() => mockRepository.loadStates(countryId: 1)).thenAnswer(
          (_) async => [countryState],
        );
        return countriesCubit;
      },
      seed: () => const CountriesState.loaded(countries: [country]),
      act: (cubit) => cubit.onCountrySelected(country),
      expect: () => [
        const CountriesState.loaded(
          countries: [country],
          selectedCountry: country,
          countryStateCondition: CountryStateCondition.loading(),
        ),
        const CountriesState.loaded(
          countries: [country],
          selectedCountry: country,
          countryStateCondition: CountryStateCondition.loaded(
            countryStates: [countryState],
          ),
        ),
      ],
    );

    blocTest<CountriesCubit, CountriesState>(
      'emits correct states when a country is selected and fails',
      build: () {
        when(() => mockRepository.loadCountries()).thenAnswer(
          (_) async => [country],
        );
        when(() => mockRepository.loadStates(countryId: 1))
            .thenThrow(Exception());
        return countriesCubit;
      },
      seed: () => const CountriesState.loaded(countries: [country]),
      act: (cubit) => cubit.onCountrySelected(country),
      expect: () => [
        const CountriesState.loaded(
          countries: [country],
          selectedCountry: country,
          countryStateCondition: CountryStateCondition.loading(),
        ),
        const CountriesState.loaded(
          countries: [country],
          selectedCountry: country,
          countryStateCondition: CountryStateCondition.failed(),
        ),
      ],
    );

    blocTest<CountriesCubit, CountriesState>(
      'emits [CountriesState.loading()] and then states when reload is called',
      build: () {
        when(() => mockRepository.loadCountries()).thenAnswer(
          (_) async => [country],
        );
        return countriesCubit;
      },
      act: (cubit) => cubit.reload(),
      expect: () => [
        const CountriesState.loading(),
        const CountriesState.loaded(countries: [country]),
      ],
    );
  });
}

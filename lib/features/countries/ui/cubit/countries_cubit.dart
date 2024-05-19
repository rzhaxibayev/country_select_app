import 'package:country_select_app/features/countries/domain/model/country.dart';
import 'package:country_select_app/features/countries/domain/model/country_state.dart';
import 'package:country_select_app/features/countries/domain/repository/countries_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'countries_state.dart';
part 'countries_cubit.freezed.dart';

class CountriesCubit extends Cubit<CountriesState> {
  final CountriesRepository _repository;

  CountriesCubit({
    required CountriesRepository repository,
  })  : _repository = repository,
        super(const CountriesState.loading());

  Future<void> init() async {
    try {
      final countries = await _repository.loadCountries();
      emit(
        CountriesState.loaded(countries: countries),
      );
    } on Object catch (_) {
      emit(const CountriesState.failed());
    }
  }

  void onCountrySelected(Country? country) {
    state.mapOrNull(
      loaded: (loaded) async {
        if (country == null || country == loaded.selectedCountry) return;
        try {
          emit(
            loaded.copyWith(
              selectedCountry: country,
              countryStateCondition: const CountryStateCondition.loading(),
            ),
          );

          final countryStates =
              await _repository.loadStates(countryId: country.id);

          emit(
            loaded.copyWith(
              countryStateCondition: CountryStateCondition.loaded(
                countryStates: countryStates,
              ),
            ),
          );
        } on Object catch (_) {
          emit(
            loaded.copyWith(
              countryStateCondition: const CountryStateCondition.failed(),
            ),
          );
        }
      },
    );
  }

  void reload() {
    emit(const CountriesState.loading());
    init();
  }
}

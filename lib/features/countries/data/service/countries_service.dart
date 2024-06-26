import 'package:country_select_app/features/countries/data/dto/country_dto.dart';
import 'package:country_select_app/features/countries/data/dto/country_state_dto.dart';

/// This an interface for a remote data source.
abstract class CountriesService {
  /// This method is for fetching a list of countries from a remote endpoint.
  Future<List<CountryDto>> loadCountries();

  /// This method is for fetching a list of states from a remote endpoint for
  /// a selected country.
  Future<List<CountryStateDto>> loadStates({required int countryId});
}

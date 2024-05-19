import 'package:country_select_app/features/countries/domain/model/country.dart';
import 'package:country_select_app/features/countries/domain/model/country_state.dart';

/// This class is responsible to fetch data from data source service and map
/// the data to domain objects
abstract class CountriesRepository {
  Future<List<Country>> loadCountries();

  Future<List<CountryState>> loadStates({required int countryId});
}

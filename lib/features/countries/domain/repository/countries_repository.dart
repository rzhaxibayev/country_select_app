import 'package:country_select_app/features/countries/domain/model/country.dart';
import 'package:country_select_app/features/countries/domain/model/state.dart';

/// This class is responsible to fetch data from data source service and map
/// the data to domain objects
abstract class CountriesRepository {
  Future<List<Country>> loadCountries();

  Future<List<State>> loadStates({required int countryId});
}

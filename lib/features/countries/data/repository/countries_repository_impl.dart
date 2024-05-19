import 'package:country_select_app/features/countries/data/mapper/countries_mappers.dart';
import 'package:country_select_app/features/countries/data/service/countries_service.dart';
import 'package:country_select_app/features/countries/domain/model/country.dart';
import 'package:country_select_app/features/countries/domain/model/state.dart';
import 'package:country_select_app/features/countries/domain/repository/countries_repository.dart';

class CountriesRepositoryImpl implements CountriesRepository {
  final CountriesService _service;

  CountriesRepositoryImpl({
    required CountriesService service,
  }) : _service = service;

  @override
  Future<List<Country>> loadCountries() async {
    final networkData = await _service.loadCountries();

    return networkData.map((dto) => dto.toDomain()).toList();
  }

  @override
  Future<List<State>> loadStates({
    required int countryId,
  }) async {
    final networkData = await _service.loadStates(countryId: countryId);

    return networkData.map((dto) => dto.toDomain()).toList();
  }
}

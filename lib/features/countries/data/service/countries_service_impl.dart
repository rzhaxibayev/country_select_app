import 'package:country_select_app/features/countries/data/dto/country_dto.dart';
import 'package:country_select_app/features/countries/data/dto/state_dto.dart';
import 'package:country_select_app/features/countries/data/service/countries_service.dart';
import 'package:dio/dio.dart';

class _Constants {
  static const countriesPath = '/countries';
  static const statesPath = '/states';
}

class CountriesServiceImpl implements CountriesService {
  final Dio _apiClient;

  CountriesServiceImpl({
    required Dio apiClient,
  }) : _apiClient = apiClient;

  @override
  Future<List<CountryDto>> loadCountries() async {
    final response = await _apiClient.get(_Constants.countriesPath);
    final data = response.data as List;

    return data
        .map(
          (countryJson) => CountryDto.fromJson(countryJson),
        )
        .toList();
  }

  @override
  Future<List<StateDto>> loadState({required String countryId}) async {
    final response = await _apiClient.get(
      '${_Constants.countriesPath}/$countryId${_Constants.statesPath}',
    );
    final data = response.data as List;

    return data
        .map(
          (stateJson) => StateDto.fromJson(stateJson),
        )
        .toList();
  }
}

import 'package:country_select_app/features/countries/data/dto/country_dto.dart';
import 'package:country_select_app/features/countries/data/dto/state_dto.dart';
import 'package:country_select_app/features/countries/data/repository/countries_repository_impl.dart';
import 'package:country_select_app/features/countries/data/service/countries_service.dart';
import 'package:country_select_app/features/countries/domain/model/country.dart';
import 'package:country_select_app/features/countries/domain/model/state.dart';
import 'package:country_select_app/features/countries/domain/repository/countries_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockCountriesService extends Mock implements CountriesService {}

void main() {
  late CountriesRepository repository;
  late MockCountriesService mockService;

  setUp(() {
    mockService = MockCountriesService();
    repository = CountriesRepositoryImpl(service: mockService);
  });

  group('loadCountries() tests ->', () {
    test('when loadCountries() called, verify that data is mapped correctly',
        () async {
      /// Arrange
      const mockResponse = [
        CountryDto(id: 13, name: 'Australia'),
        CountryDto(id: 86, name: 'Germany'),
        CountryDto(id: 165, name: 'New Zealand'),
      ];
      when(() => mockService.loadCountries())
          .thenAnswer((_) async => mockResponse);

      /// Act
      final response = await repository.loadCountries();

      /// Assert
      const expectedResponse = [
        Country(id: 13, name: 'Australia'),
        Country(id: 86, name: 'Germany'),
        Country(id: 165, name: 'New Zealand'),
      ];
      expect(response, expectedResponse);
    });
  });

  group('loadStates() tests ->', () {
    test('when loadStates() called, verify that data is mapped correctly',
        () async {
      /// Arrange
      const mockResponse = [
        StateDto(id: 2202, name: 'Auckland'),
        StateDto(id: 6888, name: 'Centerbury'),
        StateDto(id: 2211, name: 'Wellington'),
      ];
      when(() => mockService.loadStates(countryId: any(named: 'countryId')))
          .thenAnswer((_) async => mockResponse);

      /// Act
      final response = await repository.loadStates(countryId: 13);

      /// Assert
      const expectedResponse = [
        State(id: 2202, name: 'Auckland'),
        State(id: 6888, name: 'Centerbury'),
        State(id: 2211, name: 'Wellington'),
      ];
      expect(response, expectedResponse);
    });
  });
}

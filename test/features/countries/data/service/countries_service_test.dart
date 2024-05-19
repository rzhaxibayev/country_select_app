import 'package:country_select_app/features/countries/data/dto/country_dto.dart';
import 'package:country_select_app/features/countries/data/dto/state_dto.dart';
import 'package:country_select_app/features/countries/data/service/countries_service.dart';
import 'package:country_select_app/features/countries/data/service/countries_service_impl.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../common/common_mocks.dart';

void main() {
  late CountriesService service;
  late MockDio mockDio;

  setUp(() {
    mockDio = MockDio();
    service = CountriesServiceImpl(apiClient: mockDio);
  });

  group('loadCountries() tests ->', () {
    test('when loadCountries() called verify that mapping is correct',
        () async {
      /// Arrange
      final mockResponse = Response(
        requestOptions: RequestOptions(path: ''),
        data: [
          {'id': 13, 'name': 'Australia'},
          {'id': 86, 'name': 'Germany'},
          {'id': 165, 'name': 'New Zealand'},
        ],
        statusCode: 200,
      );
      when(() => mockDio.get(any())).thenAnswer((_) async => mockResponse);

      /// Act
      final response = await service.loadCountries();

      /// Assert
      const expectedResponse = [
        CountryDto(id: 13, name: 'Australia'),
        CountryDto(id: 86, name: 'Germany'),
        CountryDto(id: 165, name: 'New Zealand'),
      ];
      expect(response.length, 3);
      expect(response, expectedResponse);
    });

    test('loadCountries() throws a DioException when http call fails',
        () async {
      // Arrange
      final mockError = DioException(
        requestOptions: RequestOptions(path: ''),
        error: 'Some error',
        type: DioExceptionType.badResponse,
        response: Response(
          requestOptions: RequestOptions(path: ''),
          statusCode: 404,
        ),
      );
      when(() => mockDio.get(any())).thenThrow(mockError);

      // Act & Assert
      expect(service.loadCountries(), throwsA(isA<DioException>()));
    });
  });

  group('loadStates() tests ->', () {
    test('when loadStates() called verify that mapping is correct', () async {
      /// Arrange
      final mockResponse = Response(
        requestOptions: RequestOptions(path: ''),
        data: [
          {'id': 2202, 'name': 'Auckland'},
          {'id': 6888, 'name': 'Centerbury'},
          {'id': 2211, 'name': 'Wellington'},
        ],
        statusCode: 200,
      );
      when(() => mockDio.get(any())).thenAnswer((_) async => mockResponse);

      /// Act
      final response = await service.loadStates(countryId: 2202);

      /// Assert
      const expectedResponse = [
        StateDto(id: 2202, name: 'Auckland'),
        StateDto(id: 6888, name: 'Centerbury'),
        StateDto(id: 2211, name: 'Wellington'),
      ];
      expect(response.length, 3);
      expect(response, expectedResponse);
    });

    test('loadStates() throws a DioException when http call fails', () async {
      // Arrange
      final mockError = DioException(
        requestOptions: RequestOptions(path: ''),
        error: 'Some error',
        type: DioExceptionType.badResponse,
        response: Response(
          requestOptions: RequestOptions(path: ''),
          statusCode: 404,
        ),
      );
      when(() => mockDio.get(any())).thenThrow(mockError);

      // Act & Assert
      expect(service.loadStates(countryId: 2202), throwsA(isA<DioException>()));
    });
  });
}

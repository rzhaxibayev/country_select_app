import 'package:country_select_app/features/countries/data/dto/country_dto.dart';
import 'package:country_select_app/features/countries/data/dto/country_state_dto.dart';
import 'package:country_select_app/features/countries/domain/model/country.dart';
import 'package:country_select_app/features/countries/domain/model/country_state.dart';

extension CountryDtoExtension on CountryDto {
  Country toDomain() => Country(id: id, name: value);
}

extension CountryStateDtoExtension on CountryStateDto {
  CountryState toDomain() => CountryState(id: id, name: value);
}

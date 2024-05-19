import 'package:country_select_app/features/countries/data/dto/country_dto.dart';
import 'package:country_select_app/features/countries/data/dto/state_dto.dart';
import 'package:country_select_app/features/countries/domain/model/country.dart';
import 'package:country_select_app/features/countries/domain/model/state.dart';

extension CountryDtoExtension on CountryDto {
  Country toDomain() => Country(id: id, name: name);
}

extension StateDtoExtension on StateDto {
  State toDomain() => State(id: id, name: name);
}

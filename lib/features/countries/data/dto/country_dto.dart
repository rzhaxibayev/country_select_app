import 'package:freezed_annotation/freezed_annotation.dart';

part 'country_dto.freezed.dart';

@freezed
class CountryDto with _$CountryDto {
  const factory CountryDto({
    required String id,
    required String name,
  }) = _CountryDto;
}

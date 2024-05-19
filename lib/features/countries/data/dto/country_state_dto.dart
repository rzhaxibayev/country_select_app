import 'package:freezed_annotation/freezed_annotation.dart';

part 'country_state_dto.freezed.dart';
part 'country_state_dto.g.dart';

@freezed
class CountryStateDto with _$CountryStateDto {
  const factory CountryStateDto({
    required int id,
    required String value,
  }) = _CountryStateDto;

  factory CountryStateDto.fromJson(Map<String, dynamic> json) =>
      _$CountryStateDtoFromJson(json);
}

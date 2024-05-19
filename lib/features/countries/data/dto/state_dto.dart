import 'package:freezed_annotation/freezed_annotation.dart';

part 'state_dto.freezed.dart';

@freezed
class StateDto with _$StateDto {
  const factory StateDto({
    required String id,
    required String name,
  }) = _StateDto;
}

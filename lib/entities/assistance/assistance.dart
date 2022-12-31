import 'package:freezed_annotation/freezed_annotation.dart';

part 'assistance.freezed.dart';
part 'assistance.g.dart';

@Freezed()
class AttendanceDto with _$AttendanceDto {
  factory AttendanceDto({
    required String assignatureId,
    required String stundentId,
    required bool isHere,
    required DateTime date,
  }) = _AttendanceDto;

  factory AttendanceDto.fromJson(Map<String, dynamic> json) =>
      _$AttendanceDtoFromJson(json);
}

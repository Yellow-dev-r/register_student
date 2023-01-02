import 'package:freezed_annotation/freezed_annotation.dart';

part 'attendance.freezed.dart';
part 'attendance.g.dart';

enum AsignatureId { ESP101, MAT126, NAT403, SOC281 }

enum AttendanceStatus { P, M, E, L }

@Freezed()
class AttendanceDto with _$AttendanceDto {
  factory AttendanceDto({
    required AsignatureId asignature,
    required String day1,
    required String day2,
    required String day3,
    required String day4,
    required String day5,
  }) = _AttendanceDto;

  factory AttendanceDto.fromJson(Map<String, dynamic> json) =>
      _$AttendanceDtoFromJson(json);
}

@Freezed()
class AttendanceDtoList with _$AttendanceDtoList {
  factory AttendanceDtoList({
    required List<AttendanceDto> attendance,
  }) = _AttendanceDtoList;
  factory AttendanceDtoList.fromJson(Map<String, dynamic> json) =>
      _$AttendanceDtoListFromJson(json);
}

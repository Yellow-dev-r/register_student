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
    required String day6,
    required String day7,
    required String day8,
    required String day9,
    required String day10,
    required String day11,
    required String day12,
    required String day13,
    required String day14,
    required String day15,
    required String day16,
    required String day17,
    required String day18,
    required String day19,
    required String day20,
    required String day21,
    required String day22,
    required String day23,
    required String day24,
    required String day25,
    required String day26,
    required String day27,
    required String day28,
    required String day29,
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

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:x_mansion/entities/assistance/attendance.dart';
import 'package:x_mansion/entities/grades/grades.dart';
import 'package:x_mansion/entities/schedule/schedule.dart';

part 'asignature.g.dart';
part 'asignature.freezed.dart';

@Freezed()
class AsignatureDto with _$AsignatureDto {
  factory AsignatureDto({
    required String id,
    required String title,
    required ScheduleDto schedule,
    required GradesDto grades,
    required String professor,
    required List<AttendanceDto> assistance,
  }) = _AsignatureDto;
  factory AsignatureDto.fromJson(Map<String, dynamic> json) =>
      _$AsignatureDtoFromJson(json);
}

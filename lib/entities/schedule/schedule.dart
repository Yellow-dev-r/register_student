import 'package:freezed_annotation/freezed_annotation.dart';

part 'schedule.g.dart';
part 'schedule.freezed.dart';

@Freezed()
class ScheduleDto with _$ScheduleDto {
  factory ScheduleDto({
    required String hour,
    required String duration,
    required List<String> day,
  }) = _ScheduleDto;
  factory ScheduleDto.fromJson(Map<String, dynamic> json) =>
      _$ScheduleDtoFromJson(json);
}

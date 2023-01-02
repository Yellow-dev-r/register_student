// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendance.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AttendanceDto _$$_AttendanceDtoFromJson(Map<String, dynamic> json) =>
    _$_AttendanceDto(
      asignature: $enumDecode(_$AsignatureIdEnumMap, json['asignature']),
      day1: json['day1'] as String,
      day2: json['day2'] as String,
      day3: json['day3'] as String,
      day4: json['day4'] as String,
      day5: json['day5'] as String,
      day6: json['day6'] as String,
      day7: json['day7'] as String,
      day8: json['day8'] as String,
      day9: json['day9'] as String,
      day10: json['day10'] as String,
      day11: json['day11'] as String,
      day12: json['day12'] as String,
      day13: json['day13'] as String,
      day14: json['day14'] as String,
      day15: json['day15'] as String,
      day16: json['day16'] as String,
      day17: json['day17'] as String,
      day18: json['day18'] as String,
      day19: json['day19'] as String,
      day20: json['day20'] as String,
      day21: json['day21'] as String,
      day22: json['day22'] as String,
      day23: json['day23'] as String,
      day24: json['day24'] as String,
      day25: json['day25'] as String,
      day26: json['day26'] as String,
      day27: json['day27'] as String,
      day28: json['day28'] as String,
      day29: json['day29'] as String,
    );

Map<String, dynamic> _$$_AttendanceDtoToJson(_$_AttendanceDto instance) =>
    <String, dynamic>{
      'asignature': _$AsignatureIdEnumMap[instance.asignature]!,
      'day1': instance.day1,
      'day2': instance.day2,
      'day3': instance.day3,
      'day4': instance.day4,
      'day5': instance.day5,
      'day6': instance.day6,
      'day7': instance.day7,
      'day8': instance.day8,
      'day9': instance.day9,
      'day10': instance.day10,
      'day11': instance.day11,
      'day12': instance.day12,
      'day13': instance.day13,
      'day14': instance.day14,
      'day15': instance.day15,
      'day16': instance.day16,
      'day17': instance.day17,
      'day18': instance.day18,
      'day19': instance.day19,
      'day20': instance.day20,
      'day21': instance.day21,
      'day22': instance.day22,
      'day23': instance.day23,
      'day24': instance.day24,
      'day25': instance.day25,
      'day26': instance.day26,
      'day27': instance.day27,
      'day28': instance.day28,
      'day29': instance.day29,
    };

const _$AsignatureIdEnumMap = {
  AsignatureId.ESP101: 'ESP101',
  AsignatureId.MAT126: 'MAT126',
  AsignatureId.NAT403: 'NAT403',
  AsignatureId.SOC281: 'SOC281',
};

_$_AttendanceDtoList _$$_AttendanceDtoListFromJson(Map<String, dynamic> json) =>
    _$_AttendanceDtoList(
      attendance: (json['attendance'] as List<dynamic>)
          .map((e) => AttendanceDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_AttendanceDtoListToJson(
        _$_AttendanceDtoList instance) =>
    <String, dynamic>{
      'attendance': instance.attendance,
    };

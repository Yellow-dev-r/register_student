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
    );

Map<String, dynamic> _$$_AttendanceDtoToJson(_$_AttendanceDto instance) =>
    <String, dynamic>{
      'asignature': _$AsignatureIdEnumMap[instance.asignature]!,
      'day1': instance.day1,
      'day2': instance.day2,
      'day3': instance.day3,
      'day4': instance.day4,
      'day5': instance.day5,
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

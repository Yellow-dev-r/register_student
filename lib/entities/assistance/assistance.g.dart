// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assistance.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AttendanceDto _$$_AttendanceDtoFromJson(Map<String, dynamic> json) =>
    _$_AttendanceDto(
      assignatureId: json['assignatureId'] as String,
      stundentId: json['stundentId'] as String,
      isHere: json['isHere'] as bool,
      date: DateTime.parse(json['date'] as String),
    );

Map<String, dynamic> _$$_AttendanceDtoToJson(_$_AttendanceDto instance) =>
    <String, dynamic>{
      'assignatureId': instance.assignatureId,
      'stundentId': instance.stundentId,
      'isHere': instance.isHere,
      'date': instance.date.toIso8601String(),
    };

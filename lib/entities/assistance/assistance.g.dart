// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assistance.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AssistanceDto _$$_AssistanceDtoFromJson(Map<String, dynamic> json) =>
    _$_AssistanceDto(
      assignatureId: json['assignatureId'] as String,
      student: StudentsDto.fromJson(json['student'] as Map<String, dynamic>),
      isHere: json['isHere'] as bool,
      fecha: DateTime.parse(json['fecha'] as String),
      schedule: json['schedule'] as String,
      professor: json['professor'] as String,
    );

Map<String, dynamic> _$$_AssistanceDtoToJson(_$_AssistanceDto instance) =>
    <String, dynamic>{
      'assignatureId': instance.assignatureId,
      'student': instance.student,
      'isHere': instance.isHere,
      'fecha': instance.fecha.toIso8601String(),
      'schedule': instance.schedule,
      'professor': instance.professor,
    };

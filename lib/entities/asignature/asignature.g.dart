// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'asignature.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AsignatureDto _$$_AsignatureDtoFromJson(Map<String, dynamic> json) =>
    _$_AsignatureDto(
      id: json['id'] as String,
      title: json['title'] as String,
      schedule: ScheduleDto.fromJson(json['schedule'] as Map<String, dynamic>),
      grades: GradesDto.fromJson(json['grades'] as Map<String, dynamic>),
      professor: json['professor'] as String,
      assistance: (json['assistance'] as List<dynamic>)
          .map((e) => AttendanceDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_AsignatureDtoToJson(_$_AsignatureDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'schedule': instance.schedule,
      'grades': instance.grades,
      'professor': instance.professor,
      'assistance': instance.assistance,
    };

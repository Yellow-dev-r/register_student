// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ScheduleDto _$$_ScheduleDtoFromJson(Map<String, dynamic> json) =>
    _$_ScheduleDto(
      hour: json['hour'] as String,
      duration: json['duration'] as String,
      day: (json['day'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_ScheduleDtoToJson(_$_ScheduleDto instance) =>
    <String, dynamic>{
      'hour': instance.hour,
      'duration': instance.duration,
      'day': instance.day,
    };

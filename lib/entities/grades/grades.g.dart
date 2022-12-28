// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grades.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GradesDto _$$_GradesDtoFromJson(Map<String, dynamic> json) => _$_GradesDto(
      asignationId: json['asignationId'] as String,
      student: StudentsDto.fromJson(json['student'] as Map<String, dynamic>),
      score: $enumDecode(_$ScoreTypeEnumMap, json['score']),
      average: json['average'] as String,
    );

Map<String, dynamic> _$$_GradesDtoToJson(_$_GradesDto instance) =>
    <String, dynamic>{
      'asignationId': instance.asignationId,
      'student': instance.student,
      'score': _$ScoreTypeEnumMap[instance.score]!,
      'average': instance.average,
    };

const _$ScoreTypeEnumMap = {
  ScoreType.partial: 'partial',
  ScoreType.midTerm: 'midTerm',
  ScoreType.finals: 'finals',
  ScoreType.alphabetic: 'alphabetic',
};

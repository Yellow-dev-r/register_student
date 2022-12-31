// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grades.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GradesDto _$$_GradesDtoFromJson(Map<String, dynamic> json) => _$_GradesDto(
      asignature: json['asignature'] as String,
      firstTerm: json['firstTerm'] as String,
      midTerm: json['midTerm'] as String,
      finalTerm: json['finalTerm'] as String,
      alphabeticGrade: json['alphabeticGrade'] as String,
    );

Map<String, dynamic> _$$_GradesDtoToJson(_$_GradesDto instance) =>
    <String, dynamic>{
      'asignature': instance.asignature,
      'firstTerm': instance.firstTerm,
      'midTerm': instance.midTerm,
      'finalTerm': instance.finalTerm,
      'alphabeticGrade': instance.alphabeticGrade,
    };

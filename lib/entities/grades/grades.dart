import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:x_mansion/entities/students/students.dart';

part 'grades.freezed.dart';
part 'grades.g.dart';

enum ScoreType { partial, midTerm, finals, alphabetic }

@Freezed()
class GradesDto with _$GradesDto {
  factory GradesDto({
    required String asignationId,
    required StudentsDto student,
    required ScoreType score,
    required String average,
  }) = _GradesDto;
  factory GradesDto.fromJson(Map<String, dynamic> json) =>
      _$GradesDtoFromJson(json);
}

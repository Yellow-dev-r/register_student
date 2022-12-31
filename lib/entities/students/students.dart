import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:x_mansion/entities/grades/grades.dart';

part 'students.freezed.dart';
part 'students.g.dart';

@Freezed()
class StudentsDto with _$StudentsDto {
  factory StudentsDto({
    required String id,
    required String name,
    required String lastName,
    required String phone,
    required String email,
    required String gender,
    required DateTime registeredDate,
    required String studentDescription,
    required List<Map<String, dynamic>> asignaturesGrades,
    //TODO: assitance logic
    // required AssitanceDto assitance,
  }) = _StudentsDto;
  factory StudentsDto.fromJson(Map<String, dynamic> json) =>
      _$StudentsDtoFromJson(json);
}

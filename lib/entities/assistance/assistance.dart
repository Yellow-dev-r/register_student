import 'package:freezed_annotation/freezed_annotation.dart';
import '../students/students.dart';

part 'assistance.freezed.dart';
part 'assistance.g.dart';

@Freezed()
class AssistanceDto with _$AssistanceDto {
  factory AssistanceDto({
    required String assignatureId,
    required StudentsDto student,
    required bool isHere,
    required DateTime fecha,
    required String schedule,
    required String professor,
  }) = _AssistanceDto;

    factory AssistanceDto.fromJson(Map<String, dynamic> json) =>
      _$AssistanceDtoFromJson(json);
}



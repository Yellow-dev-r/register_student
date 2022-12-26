import 'package:freezed_annotation/freezed_annotation.dart';

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
  }) = _StudentsDto;
  factory StudentsDto.fromJson(Map<String, dynamic> json) =>
      _$StudentsDtoFromJson(json);
}

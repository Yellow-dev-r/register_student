import 'package:x_mansion/entities/assistance/attendance.dart';
import 'package:x_mansion/entities/students/students.dart';

AttendanceDtoList getAttendanceList(StudentsDto student) {
  final data =
      student.attendance.map((e) => AttendanceDto.fromJson(e)).toList();
  return AttendanceDtoList(attendance: data);
}

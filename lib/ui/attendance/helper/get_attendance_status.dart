import 'package:x_mansion/entities/assistance/attendance.dart';

String getAttendanceStatus(AttendanceStatus attendanceStatus) {
  switch (attendanceStatus) {
    case AttendanceStatus.P:
      return 'P';

    case AttendanceStatus.E:
      return 'E';

    case AttendanceStatus.L:
      return 'T';

    case AttendanceStatus.M:
      return 'A';
  }
}

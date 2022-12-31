

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:x_mansion/constants/constants.dart';
import 'package:x_mansion/ui/attendance/deskop/attendance.dart';
import 'package:x_mansion/ui/attendance/mobile/attendance.dart';

class AttendanceScreenView extends ConsumerStatefulWidget {
  _AttendanceScreenView createState() => _AttendanceScreenView();
}

class _AttendanceScreenView extends ConsumerState<AttendanceScreenView> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (builder, constraint) {
      if (constraint.maxWidth > mobileMaxWidth) {
        return DesktopAttendancePage();
      } else {
        return MobileAttendancePage();
      }
    });
  }
}

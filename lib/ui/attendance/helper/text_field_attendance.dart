import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:x_mansion/entities/assistance/attendance.dart';
import 'package:x_mansion/ui/attendance/helper/get_attendance_status.dart';

class TextFieldAttendance extends ConsumerStatefulWidget {
  final String title;
  final Function(String valueData) onSelectedValue;
  const TextFieldAttendance(
      {required this.title, required this.onSelectedValue});
  @override
  _TextFieldAttendance createState() => _TextFieldAttendance();
}

class _TextFieldAttendance extends ConsumerState<TextFieldAttendance> {
  String? _dropDownValue;

  void dropdownCallback(String? selectedValue) {
    if (selectedValue is String) {
      setState(() {
        _dropDownValue = selectedValue;
        widget.onSelectedValue(_dropDownValue!);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: DropdownButton(
        value: _dropDownValue,
        hint: Text(
          widget.title,
          style: GoogleFonts.montserrat(fontSize: 18),
        ),
        icon: SizedBox(),
        onChanged: dropdownCallback,
        items: [
          DropdownMenuItem(
            value: getAttendanceStatus(AttendanceStatus.P),
            child: Text(getAttendanceStatus(AttendanceStatus.P)),
          ),
          DropdownMenuItem(
            value: getAttendanceStatus(AttendanceStatus.L),
            child: Text(getAttendanceStatus(AttendanceStatus.L)),
          ),
          DropdownMenuItem(
            value: getAttendanceStatus(AttendanceStatus.M),
            child: Text(getAttendanceStatus(AttendanceStatus.M)),
          ),
          DropdownMenuItem(
            value: getAttendanceStatus(AttendanceStatus.E),
            child: Text(getAttendanceStatus(AttendanceStatus.E)),
          )
        ],
      ),
    );
  }
}

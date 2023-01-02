// ignore_for_file: must_be_immutable

import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:x_mansion/entities/assistance/attendance.dart';
import 'package:x_mansion/entities/students/students.dart';
import 'package:x_mansion/helper/constans.dart';
import 'package:x_mansion/helper/no_data_screen.dart';
import 'package:x_mansion/networking/firebase_docs.dart';
import 'package:x_mansion/ui/attendance/helper/text_field_attendance.dart';
import 'package:x_mansion/ui/home/widgets/page_wrapper.dart';

class AttendanceView extends ConsumerStatefulWidget {
  AttendanceView({@PathParam('id') required this.asignatureId});
  final String asignatureId;

  @override
  _AttendanceView createState() => _AttendanceView();
}

class _AttendanceView extends ConsumerState<AttendanceView> {
  String day1 = '';
  String day2 = '';
  String day3 = '';
  String day4 = '';
  String day5 = '';
  StudentsRepository data = StudentsRepository();

  Widget build(BuildContext context) {
    final studentFuture = data.getStudentsList();

    return Scaffold(
      body: FutureBuilder(
          future: studentFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting)
              return Center(child: CircularProgressIndicator());
            if (snapshot.data != null) {
              final studentList = snapshot.data!;
              return PageWrapper(
                child: Column(
                  children: [
                    Text(
                      'Califcaciones',
                      style: GoogleFonts.montserrat(
                          fontSize: 32, fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 48),
                      child: Card(
                        elevation: 8,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(11.0),
                        ),
                        child: DataTable(
                            columns: attendanceDay
                                .map((attendanceLabel) => DataColumn(
                                        label: Text(
                                      attendanceLabel,
                                      style:
                                          GoogleFonts.montserrat(fontSize: 18),
                                    )))
                                .toList(),
                            rows: studentList.map((student) {
                              final attendanceList = student.attendance
                                  .map((e) => AttendanceDto.fromJson(e))
                                  .toList();
                              final attendanceData = attendanceList.firstWhere(
                                  (element) =>
                                      element.asignature.name ==
                                      widget.asignatureId);

                              return DataRow(cells: [
                                DataCell(Text(
                                  '${student.name} ${student.lastName}',
                                  style: GoogleFonts.montserrat(fontSize: 18),
                                )),
                                DataCell(TextFieldAttendance(
                                  onSelectedValue: (valueData) {
                                    setState(() {
                                      day1 = valueData;
                                      final attendanceData =
                                          attendanceList.map((e) {
                                        if (e.asignature.name ==
                                            widget.asignatureId) {
                                          AttendanceDto valueCapture =
                                              e.copyWith(day1: day1);
                                          return valueCapture;
                                        }
                                        return e;
                                      }).toList();
                                      final attendance = attendanceData
                                          .map((e) => e.toJson())
                                          .toList();
                                      final StudentsDto studentResult = student
                                          .copyWith(attendance: attendance);
                                      data.updateStudent(studentResult);
                                      // data.updateStudent();
                                    });
                                  },
                                  title: attendanceData.day1,
                                )),
                                DataCell(TextFieldAttendance(
                                  onSelectedValue: (valueData) {
                                    setState(() {
                                      day2 = valueData;
                                      final attendanceData =
                                          attendanceList.map((e) {
                                        if (e.asignature.name ==
                                            widget.asignatureId) {
                                          AttendanceDto valueCapture =
                                              e.copyWith(day2: day2);
                                          return valueCapture;
                                        }
                                        return e;
                                      }).toList();
                                      final attendance = attendanceData
                                          .map((e) => e.toJson())
                                          .toList();
                                      final StudentsDto studentResult = student
                                          .copyWith(attendance: attendance);
                                      data.updateStudent(studentResult);
                                    });
                                  },
                                  title: attendanceData.day2,
                                )),
                                DataCell(TextFieldAttendance(
                                  onSelectedValue: (valueData) {
                                    setState(() {
                                      day3 = valueData;
                                      final attendanceData =
                                          attendanceList.map((e) {
                                        if (e.asignature.name ==
                                            widget.asignatureId) {
                                          AttendanceDto valueCapture =
                                              e.copyWith(day3: day3);
                                          return valueCapture;
                                        }
                                        return e;
                                      }).toList();
                                      final attendance = attendanceData
                                          .map((e) => e.toJson())
                                          .toList();
                                      final StudentsDto studentResult = student
                                          .copyWith(attendance: attendance);
                                      data.updateStudent(studentResult);
                                    });
                                  },
                                  title: attendanceData.day3,
                                )),
                                DataCell(TextFieldAttendance(
                                  onSelectedValue: (valueData) {
                                    setState(() {
                                      day4 = valueData;
                                      final attendanceData =
                                          attendanceList.map((e) {
                                        if (e.asignature.name ==
                                            widget.asignatureId) {
                                          AttendanceDto valueCapture =
                                              e.copyWith(day4: day4);
                                          return valueCapture;
                                        }
                                        return e;
                                      }).toList();
                                      final attendance = attendanceData
                                          .map((e) => e.toJson())
                                          .toList();
                                      final StudentsDto studentResult = student
                                          .copyWith(attendance: attendance);
                                      data.updateStudent(studentResult);
                                    });
                                  },
                                  title: attendanceData.day4,
                                )),
                                DataCell(TextFieldAttendance(
                                  onSelectedValue: (valueData) {
                                    setState(() {
                                      day5 = valueData;
                                      final attendanceData =
                                          attendanceList.map((e) {
                                        if (e.asignature.name ==
                                            widget.asignatureId) {
                                          AttendanceDto valueCapture =
                                              e.copyWith(day5: day5);
                                          return valueCapture;
                                        }
                                        return e;
                                      }).toList();
                                      final attendance = attendanceData
                                          .map((e) => e.toJson())
                                          .toList();
                                      final StudentsDto studentResult = student
                                          .copyWith(attendance: attendance);
                                      data.updateStudent(studentResult);
                                    });
                                  },
                                  title: attendanceData.day5,
                                )),
                              ]);
                            }).toList()),
                      ),
                    ),
                  ],
                ),
              );
            }
            return NoDataScreen(
              title: 'Asistencia',
            );
          }),
    );
  }
}

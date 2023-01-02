// ignore_for_file: must_be_immutable

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:x_mansion/helper/constans.dart';
import 'package:x_mansion/networking/firebase_docs.dart';
import 'package:x_mansion/ui/home/widgets/page_wrapper.dart';

class AttendanceView extends ConsumerStatefulWidget {
  AttendanceView({@PathParam('attendance/:id') required this.asignatureId});
  late String asignatureId = isNotFound;
  static const String path = 'attendance/:id';
  static const String isNotFound = '-1';
  @override
  _AttendanceView createState() => _AttendanceView();
}

class _AttendanceView extends ConsumerState<AttendanceView> {
  StudentsRepository data = StudentsRepository();

  Widget build(BuildContext context) {
    final studentFuture = data.getStudentsList();

    return Scaffold(
      body: FutureBuilder(
          future: studentFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting)
              return CircularProgressIndicator();
            if (snapshot.data != null) {
              final studentList = snapshot.data!;
              return Column(
                children: [
                  DataTable(
                      columns: attendanceDay
                          .map((attendanceLabel) => DataColumn(
                                  label: Text(
                                attendanceLabel,
                                style: GoogleFonts.montserrat(fontSize: 18),
                              )))
                          .toList(),
                      rows: studentList.map((student) {
                        return DataRow(cells: [
                          DataCell(Text('${student.name} ${student.lastName}'))
                        ]);
                      }).toList())
                ],
              );
            }
            return PageWrapper(
              child: Column(
                children: [
                  SizedBox(height: 24),
                  Text(
                    'Asistencia',
                    style: GoogleFonts.montserrat(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    'Actualmente no se encuentra ningun estudiante inscrito',
                    style: GoogleFonts.montserrat(
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}

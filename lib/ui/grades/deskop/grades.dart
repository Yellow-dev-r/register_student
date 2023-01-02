import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:x_mansion/entities/grades/grades.dart';
import 'package:x_mansion/helper/constans.dart';
import 'package:x_mansion/helper/grades_pop_up.dart';
import 'package:x_mansion/networking/firebase_docs.dart';
import 'package:x_mansion/ui/grades/helper/grades_helper.dart';
import 'package:x_mansion/ui/home/widgets/page_wrapper.dart';

class DesktopGradesPage extends ConsumerStatefulWidget {
  @override
  _DesktopGradesPage createState() => _DesktopGradesPage();
}

class _DesktopGradesPage extends ConsumerState<DesktopGradesPage> {
  StudentsRepository data = StudentsRepository();
  @override
  Widget build(BuildContext context) {
    final studentFuture = data.getStudentsList();

    return Scaffold(
      body: SingleChildScrollView(
          child: FutureBuilder(
              future: studentFuture,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting)
                  return CircularProgressIndicator();
                if (snapshot.data != null) {
                  final student = snapshot.data!;
                  List<GradesDto> gradesList = [];
                  student
                      .map(
                        (studentList) =>
                            studentList.asignaturesGrades.map((gradesListData) {
                          final data = GradesDto.fromJson(gradesListData);
                          gradesList.add(data);
                        }).toList(),
                      )
                      .toList();

                  return PageWrapper(
                    child: Column(
                      children: [
                        SizedBox(height: 12),
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
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: DataTable(
                                  columns: grades
                                      .map((e) => DataColumn(
                                              label: Text(
                                            e,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 18),
                                          )))
                                      .toList(),
                                  rows: student.map((e) {
                                    final gradesData = e.asignaturesGrades
                                        .map((grades) =>
                                            GradesDto.fromJson(grades))
                                        .toList();
                                    final List<String> _grades1 = [
                                      gradesData[0].firstTerm,
                                      gradesData[0].midTerm,
                                      gradesData[0].finalTerm
                                    ];
                                    final List<String> _grades2 = [
                                      gradesData[1].firstTerm,
                                      gradesData[1].midTerm,
                                      gradesData[1].finalTerm
                                    ];
                                    final List<String> _grades3 = [
                                      gradesData[2].firstTerm,
                                      gradesData[2].midTerm,
                                      gradesData[2].finalTerm
                                    ];
                                    final List<String> _grades4 = [
                                      gradesData[3].firstTerm,
                                      gradesData[3].midTerm,
                                      gradesData[3].finalTerm
                                    ];
                                    final _asignatureGrades1 =
                                        getAlphabeticGrade(_grades1);
                                    final _asignatureGrades2 =
                                        getAlphabeticGrade(_grades2);
                                    final _asignatureGrades3 =
                                        getAlphabeticGrade(_grades3);
                                    final _asignatureGrades4 =
                                        getAlphabeticGrade(_grades4);

                                    return DataRow(cells: [
                                      DataCell(Text(
                                        '${e.name} ${e.lastName}',
                                        style: GoogleFonts.montserrat(
                                            fontSize: 18),
                                      )),
                                      DataCell(InkWell(
                                        onTap: () => showDialog(
                                            context: context,
                                            builder: (builder) => GradesForm(
                                                  title: Text(
                                                    gradesData[0].asignature,
                                                    style: GoogleFonts
                                                        .montserrat(),
                                                  ),
                                                  onSucess: ((condition) {
                                                    setState(() {});
                                                  }),
                                                  studentId: e.id,
                                                  asignatureId:
                                                      gradesData[0].asignature,
                                                )),
                                        child: Text(
                                          _asignatureGrades1,
                                          style: GoogleFonts.montserrat(
                                              fontSize: 18),
                                        ),
                                      )),
                                      DataCell(InkWell(
                                        onTap: () => showDialog(
                                            context: context,
                                            builder: (builder) => GradesForm(
                                                  title: Text(
                                                    gradesData[1].asignature,
                                                    style:
                                                        GoogleFonts.montserrat(
                                                            fontSize: 18),
                                                  ),
                                                  onSucess: ((condition) {
                                                    setState(() {});
                                                  }),
                                                  studentId: e.id,
                                                  asignatureId:
                                                      gradesData[1].asignature,
                                                )),
                                        child: Text(
                                          _asignatureGrades2,
                                          style: GoogleFonts.montserrat(
                                              fontSize: 18),
                                        ),
                                      )),
                                      DataCell(InkWell(
                                        onTap: () => showDialog(
                                            context: context,
                                            builder: (builder) => GradesForm(
                                                  title: Text(
                                                    gradesData[2].asignature,
                                                    style:
                                                        GoogleFonts.montserrat(
                                                            fontSize: 18),
                                                  ),
                                                  onSucess: ((condition) {
                                                    setState(() {});
                                                  }),
                                                  studentId: e.id,
                                                  asignatureId:
                                                      gradesData[2].asignature,
                                                )),
                                        child: Text(
                                          _asignatureGrades3,
                                          style: GoogleFonts.montserrat(
                                              fontSize: 18),
                                        ),
                                      )),
                                      DataCell(InkWell(
                                        onTap: () => showDialog(
                                            context: context,
                                            builder: (builder) => GradesForm(
                                                  title: Text(
                                                    gradesData[3].asignature,
                                                    style:
                                                        GoogleFonts.montserrat(
                                                            fontSize: 18),
                                                  ),
                                                  onSucess: ((condition) {
                                                    setState(() {});
                                                  }),
                                                  studentId: e.id,
                                                  asignatureId:
                                                      gradesData[3].asignature,
                                                )),
                                        child: Text(
                                          _asignatureGrades4,
                                          style: GoogleFonts.montserrat(
                                              fontSize: 18),
                                        ),
                                      )),
                                      DataCell(Text(
                                        'promedio WIP',
                                        style: GoogleFonts.montserrat(
                                            fontSize: 18),
                                      )),
                                    ]);
                                  }).toList()),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                } else
                  return PageWrapper(
                    child: Column(
                      children: [
                        SizedBox(height: 24),
                        Text(
                          'Calificaciones',
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
              })),
    );
  }
}

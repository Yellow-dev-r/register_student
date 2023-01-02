import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:x_mansion/entities/students/students.dart';
import 'package:x_mansion/helper/constans.dart';
import 'package:x_mansion/helper/edit_form.dart';
import 'package:x_mansion/helper/register_form.dart';
import 'package:x_mansion/navigation/app_router.gr.dart';
import 'package:x_mansion/navigation/main_navigator.dart';
import 'package:x_mansion/networking/firebase_docs.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:x_mansion/ui/home/widgets/header.dart';
import 'package:x_mansion/ui/home/widgets/page_wrapper.dart';

class DesktopHomePage extends ConsumerStatefulWidget {
  const DesktopHomePage({super.key});

  @override
  _DesktopHomePage createState() => _DesktopHomePage();
}

class _DesktopHomePage extends ConsumerState<DesktopHomePage> {
  StudentsRepository data = StudentsRepository();

  getRoute(String ruta) {
    switch (ruta) {
      case "Registro":
        bool condition = verifyPath(ruta);
        if (!condition) mainNavigator.router.push(HomeScreenRoute());

        break;
      case "Calificaciones":
        mainNavigator.router.push(GradesScreenRoute());
        break;
      case "Asistencia":
        mainNavigator.router.push(AttendanceScreenRoute());
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    final Future<List<StudentsDto>> studentList = data.getStudentsList();
    final double width = MediaQuery.of(context).size.width;
    final List<Widget> children = navList
        .map((route) => TextButton(
            onPressed: () => getRoute(route),
            child: Text(
              verifyPath(route) ? '' : route,
              style: GoogleFonts.montserrat(fontSize: 18),
            )))
        .toList();
    return Scaffold(
      appBar: PreferredSize(
          child: PageWrapper(
            child: Header(
                leading: Icon(Icons.edit_note_rounded), children: children),
          ),
          preferredSize: Size(width, 56)),
      body: PageWrapper(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Estudiantes Registrados',
                    style: GoogleFonts.montserrat(fontSize: 18),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: ((context) => RegisterFormBuilder(
                                  onSucess: (condition) {
                                    setState(() {});
                                  },
                                  title: Text(
                                    'Registro',
                                    style: GoogleFonts.montserrat(fontSize: 18),
                                  ),
                                )));
                      },
                      child: Container(
                        height: 48,
                        child: Row(
                          children: [
                            Icon(Icons.add),
                            Text(
                              'Nuevo estudiante',
                              style: GoogleFonts.montserrat(fontSize: 18),
                            )
                          ],
                        ),
                      )),
                ],
              ),
              FutureBuilder(
                  future: studentList,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting)
                      return CircularProgressIndicator();
                    if (snapshot.data != null) {
                      final _studentList = snapshot.data!;
                      return Card(
                          elevation: 8,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(11.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: DataTable(
                                columns: tableList
                                    .map((columnName) =>
                                        DataColumn(label: Text('$columnName')))
                                    .toList(),
                                rows: _studentList
                                    .map((student) => DataRow(cells: [
                                          DataCell(Text(
                                            '${student.registeredDate}',
                                            style: GoogleFonts.montserrat(
                                                fontSize: 18),
                                          )),
                                          DataCell(Text(
                                            '${student.name}',
                                            style: GoogleFonts.montserrat(
                                                fontSize: 18),
                                          )),
                                          DataCell(Text(
                                            '${student.lastName}',
                                            style: GoogleFonts.montserrat(
                                                fontSize: 18),
                                          )),
                                          DataCell(Text(
                                            '${student.phone}',
                                            style: GoogleFonts.montserrat(
                                                fontSize: 18),
                                          )),
                                          DataCell(Text(
                                            '${student.email}',
                                            style: GoogleFonts.montserrat(
                                                fontSize: 18),
                                          )),
                                          DataCell(Text(
                                            '${student.gender}',
                                            style: GoogleFonts.montserrat(
                                                fontSize: 18),
                                          )),
                                          DataCell(Row(
                                            children: [
                                              InkWell(
                                                  onTap: () => showDialog(
                                                      context: context,
                                                      builder: ((context) =>
                                                          EditFormBuilder(
                                                            studentId:
                                                                student.id,
                                                            onSucess:
                                                                (condition) {
                                                              setState(() {});
                                                            },
                                                            title: Text(
                                                              'Registro',
                                                              style: GoogleFonts
                                                                  .montserrat(
                                                                      fontSize:
                                                                          18),
                                                            ),
                                                          ))),
                                                  child: Icon(Icons.edit)),
                                              InkWell(
                                                  onTap: () {
                                                    setState(() {
                                                      data.deleteStudent(
                                                          student.id);
                                                    });
                                                  },
                                                  child: Icon(Icons.delete)),
                                              PopupMenuButton(
                                                itemBuilder: (context) {
                                                  return <PopupMenuEntry>[
                                                    PopupMenuItem(
                                                      child: Text(
                                                        'Calificacion',
                                                        style: GoogleFonts
                                                            .montserrat(
                                                                fontSize: 18),
                                                      ),
                                                      onTap: () {},
                                                    ),
                                                    PopupMenuItem(
                                                      child: Text(
                                                        'Asistencia',
                                                        style: GoogleFonts
                                                            .montserrat(
                                                                fontSize: 18),
                                                      ),
                                                      onTap: () {},
                                                    ),
                                                  ];
                                                },
                                              ),
                                            ],
                                          )),
                                        ]))
                                    .toList()),
                          ));
                    }
                    return Center(
                      child: Text(
                        'No data found',
                        style: GoogleFonts.montserrat(
                          fontSize: 18,
                        ),
                      ),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }

  bool verifyPath(String route) {
    return mainNavigator.router.currentPath == '/landing' &&
        route == 'Registro';
  }
}

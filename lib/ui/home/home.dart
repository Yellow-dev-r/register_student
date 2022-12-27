import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:x_mansion/entities/students/students.dart';
import 'package:x_mansion/helper/constans.dart';
import 'package:x_mansion/helper/form.dart';
import 'package:x_mansion/networking/firebase_docs.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _MyHomePage();
}

class _MyHomePage extends ConsumerState<HomePage> {
  StudentsRepository data = StudentsRepository();

  void updateTofirebase() async {
    StudentsDto studentsDto = StudentsDto(
        email: 'prueba@correo.com',
        gender: 'F',
        id: '1',
        lastName: 'Perez',
        name: 'jose',
        phone: '+809-000-0000',
        order: '1');
    await data.getStudentToDB(studentsDto);
  }

  loadData() async {}

  @override
  Widget build(BuildContext context) {
    // updateTofirebase();
    final Future<List<StudentsDto>> studentList = data.getStudentsList();

    return Scaffold(
      appBar: AppBar(
        actions: navList
            .map((e) => TextButton(
                onPressed: () {},
                child: Text(
                  e,
                  style: TextStyle(color: Colors.white),
                )))
            .toList(),
        leading: Icon(Icons.edit_attributes_outlined),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 24),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Estudiantes Registrados'),
                ElevatedButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: ((context) => FormBuilder(
                            title: Text('Registro'),
                          )));
                    },
                    child: Row(
                      children: [Icon(Icons.add), Text('Nuevo estudiante')],
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
                                  .map((e) => DataColumn(label: Text('$e')))
                                  .toList(),
                              rows: _studentList
                                  .map((e) => DataRow(cells: [
                                        DataCell(Text('${e.order}')),
                                        DataCell(Text('${e.name}')),
                                        DataCell(Text('${e.lastName}')),
                                        DataCell(Text('${e.phone}')),
                                        DataCell(Text('${e.email}')),
                                        DataCell(Text('${e.gender}')),
                                        DataCell(Row(
                                          children: [
                                            Icon(Icons.edit),
                                            InkWell(
                                                onTap: () {
                                                  setState(() {
                                                    data.deleteStudent(e.id);
                                                  });
                                                },
                                                child: Icon(Icons.delete))
                                          ],
                                        )),
                                      ]))
                                  .toList()),
                        ));
                  }
                  return Center(
                    child: Text('No data found'),
                  );
                }),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:x_mansion/entities/grades/grades.dart';
import 'package:x_mansion/entities/students/students.dart';
import 'package:x_mansion/helper/constans.dart';
import 'package:x_mansion/helper/text_field_container.dart';
import 'package:x_mansion/navigation/main_navigator.dart';
import 'package:x_mansion/networking/firebase_docs.dart';

class GradesForm extends ConsumerStatefulWidget {
  final Widget title;
  final String studentId;
  final String asignatureId;

  final Function(bool condition) onSucess;
  const GradesForm({
    required this.title,
    required this.onSucess,
    required this.studentId,
    required this.asignatureId,
  });
  @override
  _GradesForm createState() => _GradesForm();
}

class _GradesForm extends ConsumerState<GradesForm> {
  late TextEditingController _firstTermController;
  late TextEditingController _midTermController;
  late TextEditingController _finalTermController;
  StudentsDto? students;

  @override
  void initState() {
    _firstTermController = TextEditingController();
    _midTermController = TextEditingController();
    _finalTermController = TextEditingController();

    super.initState();
  }

  Future<StudentsDto> getStudent() async {
    try {
      StudentsRepository repository = StudentsRepository();

      final Future<StudentsDto> result =
          repository.getStudent(widget.studentId);
      return result;
    } catch (error) {
      throw Exception('Error while getting data $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return AlertDialog(
      title: widget.title,
      content: FutureBuilder(
          future: getStudent(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting)
              return Center(
                  child: Container(
                      height: 75,
                      width: 75,
                      child: CircularProgressIndicator()));
            if (snapshot.data != null) {
              final StudentsDto student = snapshot.data!;
              final List<GradesDto> gradesFilter = student.asignaturesGrades
                  .map((e) => GradesDto.fromJson(e))
                  .toList();

              final GradesDto grades = gradesFilter.firstWhere(
                  (element) => element.asignature == widget.asignatureId);
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 48),
                child: Container(
                  width: (width * 0.15) + 12,
                  height: 320,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Primer parcial'),
                      SizedBox(
                        height: 6,
                      ),
                      TextFieldContainer(
                        controller: _firstTermController,
                        hint: grades.firstTerm,
                      ),
                      SizedBox(height: 12),
                      Text('Segundo Parcial'),
                      SizedBox(
                        height: 6,
                      ),
                      TextFieldContainer(
                        controller: _midTermController,
                        hint: grades.midTerm,
                      ),
                      SizedBox(height: 12),
                      Text('Examen Final'),
                      SizedBox(
                        height: 6,
                      ),
                      TextFieldContainer(
                        controller: _finalTermController,
                        hint: grades.finalTerm,
                      ),
                      SizedBox(height: 12),
                      Center(
                        child: Row(
                          children: [
                            TextButton(
                                onPressed: () {
                                  mainNavigator.router.pop(context);
                                },
                                child: Text('Cancelar')),
                            TextButton(
                                onPressed: () async {
                                  await onSavePressed(student, context,
                                      widget.asignatureId, grades);
                                },
                                child: Text(
                                  'Guardar',
                                  style: GoogleFonts.montserrat(),
                                ))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            }
            return Container(
              child: Text(
                'Error while getting register form',
                style: GoogleFonts.montserrat(),
              ),
            );
          }),
    );
  }

  Future<void> onSavePressed(StudentsDto student, BuildContext context,
      String asignatureId, GradesDto gradesDto) async {
    final String firstTerm = _firstTermController.text.isNotEmpty
        ? _firstTermController.text
        : gradesDto.firstTerm;
    final String midTerm = _midTermController.text.isNotEmpty
        ? _midTermController.text
        : gradesDto.firstTerm;
    final String finalTerm = _finalTermController.text.isNotEmpty
        ? _finalTermController.text
        : gradesDto.firstTerm;
    final List<GradesDto> gradesList = student.asignaturesGrades
        .map((asignature) => GradesDto.fromJson(asignature))
        .toList();
    final gradesDtoData = gradesList.map((asignature) {
      GradesDto data = asignature;
      if (asignature.asignature == asignatureId)
        data = asignature.copyWith(
          finalTerm: finalTerm,
          midTerm: midTerm,
          firstTerm: firstTerm,
        );
      return data;
    }).toList();
    final studentData = student.copyWith(
        asignaturesGrades: gradesDtoData.map((e) => e.toJson()).toList());
    // students = StudentsDto(
    //     id: id,
    //     registeredDate: registeredDate,
    //     name: name,
    //     lastName: lastName,
    //     phone: phone,
    //     email: email,
    //     studentDescription: studentDescription,
    //     gender: gender!,
    //     asignaturesGrades: student.asignaturesGrades);
    StudentsRepository data = StudentsRepository();

    await data.updateStudent(studentData);

    widget.onSucess(true);

    mainNavigator.router.pop(context);
  }
}

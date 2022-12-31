import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:x_mansion/entities/students/students.dart';
import 'package:x_mansion/helper/constans.dart';
import 'package:x_mansion/helper/text_field_container.dart';
import 'package:x_mansion/navigation/main_navigator.dart';
import 'package:x_mansion/networking/firebase_docs.dart';

class EditFormBuilder extends ConsumerStatefulWidget {
  final Widget title;
  final String studentId;

  final Function(bool condition) onSucess;
  const EditFormBuilder({
    required this.title,
    required this.onSucess,
    required this.studentId,
  });
  @override
  _EditFormBuilder createState() => _EditFormBuilder();
}

class _EditFormBuilder extends ConsumerState<EditFormBuilder> {
  late TextEditingController _nameController;
  late TextEditingController _lastNameController;
  late TextEditingController _phoneController;
  late TextEditingController _emailController;
  late TextEditingController _descriptionController;
  StudentsDto? students;
  String? _gender;

  @override
  void initState() {
    _nameController = TextEditingController();
    _lastNameController = TextEditingController();
    _phoneController = TextEditingController();
    _emailController = TextEditingController();
    _descriptionController = TextEditingController();

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

  void dropdownCallback(String? selectedValue) {
    if (selectedValue is String) {
      setState(() {
        _gender = selectedValue;
      });
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
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 48),
                child: Container(
                  width: (width * 0.15) + 12,
                  height: 320,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          TextFieldContainer(
                            controller: _nameController,
                            hint: student.name,
                          ),
                          SizedBox(width: 12),
                          TextFieldContainer(
                            controller: _lastNameController,
                            hint: student.lastName,
                          ),
                        ],
                      ),
                      SizedBox(height: 12),
                      Row(
                        children: [
                          TextFieldContainer(
                            controller: _phoneController,
                            hint: student.phone,
                          ),
                          SizedBox(width: 12),
                          TextFieldContainer(
                            controller: _emailController,
                            hint: student.email,
                          ),
                        ],
                      ),
                      SizedBox(height: 12),
                      Container(
                        width: width * 0.075,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Color(0XFF7A7D81).withOpacity(.3))),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton(
                                hint: Text(
                                  student.gender,
                                  style: GoogleFonts.montserrat(),
                                ),
                                items: dropDownOptions
                                    .map<DropdownMenuItem<String>>(
                                        (String gender) {
                                  return DropdownMenuItem<String>(
                                      child: Text(gender), value: gender);
                                }).toList(),
                                value: _gender,
                                onChanged: dropdownCallback,
                                style: GoogleFonts.montserrat(
                                    color: Colors.black)),
                          ),
                        ),
                      ),
                      SizedBox(height: 12),
                      TextFieldContainer(
                        maxLines: 4,
                        width: (width * 0.15) + 12,
                        controller: _descriptionController,
                        hint: student.studentDescription,
                      ),
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
                                  onSavePressed(student, context);
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

  void onSavePressed(StudentsDto student, BuildContext context) {
    final String id = student.id;
    final DateTime registeredDate = student.registeredDate;
    final String name =
        _nameController.text.isNotEmpty ? _nameController.text : student.name;
    final String lastName = _lastNameController.text.isNotEmpty
        ? _lastNameController.text
        : student.lastName;
    final String phone = _phoneController.text.isNotEmpty
        ? _phoneController.text
        : student.phone;
    final String email = _emailController.text.isNotEmpty
        ? _emailController.text
        : student.email;
    final String studentDescription = _descriptionController.text.isNotEmpty
        ? _descriptionController.text
        : student.studentDescription;
    final String? gender =
        (_gender!.isNotEmpty) && _gender != null ? _gender : student.gender;

    students = StudentsDto(
        id: id,
        registeredDate: registeredDate,
        name: name,
        lastName: lastName,
        phone: phone,
        email: email,
        studentDescription: studentDescription,
        gender: gender!,
        asignaturesGrades: student.asignaturesGrades);
    StudentsRepository data = StudentsRepository();
    if (students != null) {
      data.updateStudent(students!);

      widget.onSucess(true);
    }

    mainNavigator.router.pop(context);
  }
}

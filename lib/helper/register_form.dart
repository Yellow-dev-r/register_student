import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:x_mansion/entities/students/students.dart';
import 'package:x_mansion/helper/constans.dart';
import 'package:x_mansion/helper/text_field_container.dart';
import 'package:x_mansion/navigation/main_navigator.dart';
import 'package:x_mansion/networking/firebase_docs.dart';

class RegisterFormBuilder extends ConsumerStatefulWidget {
  final Widget title;
  final Function(bool condition) onSucess;
  const RegisterFormBuilder({
    required this.title,
    required this.onSucess,
  });
  @override
  _RegisterFormBuilder createState() => _RegisterFormBuilder();
}

class _RegisterFormBuilder extends ConsumerState<RegisterFormBuilder> {
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
      content: Padding(
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
                    hint: 'Nombre',
                  ),
                  SizedBox(width: 12),
                  TextFieldContainer(
                    controller: _lastNameController,
                    hint: 'Apellidos',
                  ),
                ],
              ),
              SizedBox(height: 12),
              Row(
                children: [
                  TextFieldContainer(
                    controller: _phoneController,
                    hint: 'Telefono',
                  ),
                  SizedBox(width: 12),
                  TextFieldContainer(
                    controller: _emailController,
                    hint: 'Correo',
                  ),
                ],
              ),
              SizedBox(height: 12),
              Container(
                width: width * 0.075,
                decoration: BoxDecoration(
                    border:
                        Border.all(color: Color(0XFF7A7D81).withOpacity(.3))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                        hint: Text(
                          'Genero',
                          style: GoogleFonts.montserrat(),
                        ),
                        items: dropDownOptions
                            .map<DropdownMenuItem<String>>((String gender) {
                          return DropdownMenuItem<String>(
                              child: Text(gender), value: gender);
                        }).toList(),
                        value: _gender,
                        onChanged: dropdownCallback,
                        style: GoogleFonts.montserrat(color: Colors.black)),
                  ),
                ),
              ),
              SizedBox(height: 12),
              TextFieldContainer(
                maxLines: 4,
                width: (width * 0.15) + 12,
                controller: _descriptionController,
                hint: 'Descripcion',
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
                          registerStudent(context);
                        },
                        child: Text('Registrar'))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void registerStudent(BuildContext context) {
    
    if (_gender != null)
      students = StudentsDto(
        id: '',
        registeredDate: DateTime.now(),
        name: _nameController.text,
        lastName: _lastNameController.text,
        phone: _phoneController.text,
        email: _emailController.text,
        studentDescription: _descriptionController.text,
        gender: _gender!,
      );
    StudentsRepository data = StudentsRepository();
    if (students != null) {
      data.getStudentToDB(students!);
    
      widget.onSucess(true);
    } else
      showAboutDialog(
          useRootNavigator: false,
          context: context,
          applicationName: 'X-Mansion',
          children: [
            Text(
              'Error por favor verificar campos',
              style: GoogleFonts.montserrat(),
            )
          ]);
    
    mainNavigator.router.pop(context);
  }
}

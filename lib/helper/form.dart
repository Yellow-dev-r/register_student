import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:x_mansion/entities/students/students.dart';
import 'package:x_mansion/helper/text_field_container.dart';
import 'package:x_mansion/navigation/main_navigator.dart';
import 'package:x_mansion/networking/firebase_docs.dart';

class FormBuilder extends ConsumerStatefulWidget {
  final Widget title;
  final Function(bool condition) onSucess;
  const FormBuilder({required this.title, required this.onSucess});
  @override
  _FormBuilder createState() => _FormBuilder();
}

class _FormBuilder extends ConsumerState<FormBuilder> {
  late TextEditingController _nameController;
  late TextEditingController _lastNameController;
  late TextEditingController _phoneController;
  late TextEditingController _emailController;
  late TextEditingController _descriptionController;
  StudentsDto? students;
  String gender = '';

  @override
  void initState() {
    _nameController = TextEditingController();
    _lastNameController = TextEditingController();
    _phoneController = TextEditingController();
    _emailController = TextEditingController();
    _descriptionController = TextEditingController();

    super.initState();
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
              Padding(
                padding: const EdgeInsetsDirectional.only(end: 258),
                child: DropdownMenu(
                    onSelected: (value) {
                      if (value != null && value.isNotEmpty) gender = value;
                    },
                    width: 135,
                    textStyle: GoogleFonts.montserrat(),
                    hintText: 'Genero',
                    dropdownMenuEntries: [
                      DropdownMenuEntry<String>(value: 'M', label: 'M'),
                      DropdownMenuEntry<String>(value: 'F', label: 'F'),
                    ]),
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
                          students = StudentsDto(
                            id: '',
                            registeredDate: DateTime.now(),
                            name: _nameController.text,
                            lastName: _lastNameController.text,
                            phone: _phoneController.text,
                            email: _emailController.text,
                            studentDescription: _descriptionController.text,
                            gender: gender,
                          );
                          StudentsRepository data = StudentsRepository();
                          if (students != null) {
                            data.getStudentToDB(students!);

                            widget.onSucess(true);
                          }
                          ;
                          mainNavigator.router.pop(context);
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
}

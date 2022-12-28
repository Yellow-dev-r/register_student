import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:x_mansion/entities/students/students.dart';
import 'package:x_mansion/helper/constans.dart';
import 'package:x_mansion/navigation/main_navigator.dart';
import 'package:x_mansion/networking/firebase_docs.dart';

class FormBuilder extends ConsumerStatefulWidget {
  final Widget title;
  const FormBuilder({required this.title});
  @override
  ConsumerState<FormBuilder> createState() => _FormBuilder();
}

class _FormBuilder extends ConsumerState<FormBuilder> {
  StudentsDto studentsDto = StudentsDto(
      id: 'id',
      order: 'order',
      name: 'name',
      lastName: 'lastName',
      phone: 'phone',
      email: 'email',
      gender: 'gender');
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    // TODO: implement build
    return AlertDialog(
      title: widget.title,
      content: Card(
        elevation: 6,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(11.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Container(
            width: width * 0.2,
            height: 500,
            child: Column(
              children: registerList.map<Widget>((e) {
                    return Column(
                      children: [
                        SizedBox(
                          height: 6,
                        ),
                        Card(
                          elevation: 6,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(11.0),
                          ),
                          child: Container(
                            width: width * 0.15,
                            child: TextField(
                              onChanged: (value) {
                                if (e.toLowerCase() == 'nombre'.toLowerCase()) {
                                  setState(() {
                                    studentsDto =
                                        studentsDto.copyWith(name: value);
                                  });
                                }
                                if (e.toLowerCase() ==
                                    'apellido'.toLowerCase()) {
                                  setState(() {
                                    studentsDto =
                                        studentsDto.copyWith(lastName: value);
                                  });
                                }
                                if (e.toLowerCase() ==
                                    'Teléfono'.toLowerCase()) {
                                  setState(() {
                                    studentsDto =
                                        studentsDto.copyWith(phone: value);
                                  });
                                }
                                if (e.toLowerCase() == 'email'.toLowerCase()) {
                                  setState(() {
                                    studentsDto =
                                        studentsDto.copyWith(email: value);
                                  });
                                }
                                if (e.toLowerCase() == 'Género'.toLowerCase()) {
                                  setState(() {
                                    studentsDto =
                                        studentsDto.copyWith(gender: value);
                                  });
                                }
                              },
                              decoration: InputDecoration(
                                  hintText: e,
                                  isDense: true,
                                  filled: true,
                                  border: OutlineInputBorder(),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide.none)
                                  // borderSide: BorderSide(color: theme.secondary),
                                  // ),
                                  ),
                            ),
                          ),
                        ),
                      ],
                    );
                  }).toList() +
                  [
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
                                StudentsRepository data = StudentsRepository();
                                await data.getStudentToDB(studentsDto);
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
      ),
    );
  }
}

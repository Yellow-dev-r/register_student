import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:x_mansion/helper/constans.dart';
import 'package:x_mansion/navigation/app_router.gr.dart';
import 'package:x_mansion/navigation/main_navigator.dart';
import 'package:x_mansion/networking/firebase_docs.dart';
import 'package:x_mansion/ui/home/widgets/page_wrapper.dart';

class DesktopAttendancePage extends ConsumerStatefulWidget {
  @override
  _DesktopAttendancePage createState() => _DesktopAttendancePage();
}

class _DesktopAttendancePage extends ConsumerState<DesktopAttendancePage> {
  StudentsRepository data = StudentsRepository();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: PageWrapper(
        child: Column(
          children: [
            SizedBox(height: 12),
            Text(
              attendanceTitle,
              style: GoogleFonts.montserrat(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: assignatures
                  .map((assiganture) => InkWell(
                        onTap: () => mainNavigator.router
                            .push(AttendanceRoute(asignatureId: assiganture)),
                        child: Text(
                          assiganture,
                          style: GoogleFonts.montserrat(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ))
                  .toList(),
            )
          ],
        ),
      )),
    );
  }
}

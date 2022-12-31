import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:x_mansion/helper/constans.dart';
import 'package:x_mansion/ui/home/widgets/page_wrapper.dart';

class DesktopAttendancePage extends ConsumerStatefulWidget {
  @override
  _DesktopAttendancePage createState() => _DesktopAttendancePage();
}

class _DesktopAttendancePage extends ConsumerState<DesktopAttendancePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: PageWrapper(
        child: Column(
          children: [
            // DataTable(
            //   columns: grades.map((e) => DataColumn(label: Text(e, style: GoogleFonts.montserrat(),))).toList(),
            //   rows: rows,
            // ),
          ],
        ),
      )),
    );
  }
}

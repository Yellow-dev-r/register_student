import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:x_mansion/ui/home/widgets/page_wrapper.dart';

class MobileAttendancePage extends ConsumerStatefulWidget {
  @override
  _MobileAttendancePage createState() => _MobileAttendancePage();
}

class _MobileAttendancePage extends ConsumerState<MobileAttendancePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: PageWrapper(
          width: 900,
          child: Column(
            children: [
              SizedBox(height: 24),
              Text(
                'Asistencia',
                style: GoogleFonts.montserrat(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Image.asset(
                'assets/wip_image.png',
                width: 200,
                height: 200,
              ),
              Text(
                'La vista de asistencia no esta lista para celular',
                style: GoogleFonts.montserrat(
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

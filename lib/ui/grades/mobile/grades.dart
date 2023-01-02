import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:x_mansion/navigation/app_router.gr.dart';
import 'package:x_mansion/navigation/main_navigator.dart';
import 'package:x_mansion/ui/home/widgets/page_wrapper.dart';

class MobileGradesPage extends ConsumerStatefulWidget {
  @override
  _MobileGradesPage createState() => _MobileGradesPage();
}

class _MobileGradesPage extends ConsumerState<MobileGradesPage> {
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
                'Calificaciones',
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
                'La vista de calificaciones no esta lista para celular',
                style: GoogleFonts.montserrat(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

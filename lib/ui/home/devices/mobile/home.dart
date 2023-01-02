import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:x_mansion/navigation/app_router.gr.dart';
import 'package:x_mansion/navigation/main_navigator.dart';
import 'package:x_mansion/ui/home/widgets/page_wrapper.dart';

class MobileHomePage extends ConsumerStatefulWidget {
  _MobileHomeScreen createState() => _MobileHomeScreen();
}

class _MobileHomeScreen extends ConsumerState<MobileHomePage> {
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
                'Pagina de inicio',
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
                'La vista de la pagina de inicio no esta lista para celular',
                style: GoogleFonts.montserrat(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

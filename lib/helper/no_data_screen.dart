import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:x_mansion/helper/constans.dart';
import 'package:x_mansion/ui/home/widgets/page_wrapper.dart';

class NoDataScreen extends ConsumerStatefulWidget {

final String title;
const NoDataScreen({required this.title});


  _NoDataScreen createState() => _NoDataScreen();

}

class _NoDataScreen extends ConsumerState<NoDataScreen> {
  @override
  Widget build(BuildContext context) {
     return PageWrapper(
              child: Column(
                children: [
                  SizedBox(height: 24),
                  Text(
                    widget.title,
                    style: GoogleFonts.montserrat(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    noDataSubtitle,
                    style: GoogleFonts.montserrat(
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
            );
  }

}
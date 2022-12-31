import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:x_mansion/ui/home/widgets/page_wrapper.dart';

class MobileGradesPage extends ConsumerStatefulWidget {
  @override
  _MobileGradesPage createState() => _MobileGradesPage();
}

class _MobileGradesPage extends ConsumerState<MobileGradesPage> {
  @override
  Widget build(BuildContext context) {return Scaffold(
      body: SingleChildScrollView(
          child: PageWrapper(
        child: Column(
          children: [
            // DataTable(
            //   columns: columns,
            //   rows: rows,
            // ),
          ],
        ),
      )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
        child: Column(
          children: [
            // DataTable(
            //   columns: columns,
            //   rows: rows,
            // ),
          ],
        ),
      )),
    );  }
}

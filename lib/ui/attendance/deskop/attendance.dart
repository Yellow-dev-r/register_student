import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
          children: [],
        ),
      )),
    );
  }
}

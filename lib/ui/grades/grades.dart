import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:x_mansion/constants/constants.dart';
import 'package:x_mansion/ui/grades/deskop/grades.dart';
import 'package:x_mansion/ui/grades/mobile/grades.dart';

class GradesScreenView extends ConsumerStatefulWidget {
  _GradesScreenView createState() => _GradesScreenView();
}

class _GradesScreenView extends ConsumerState<GradesScreenView> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (builder, constraint) {
      if (constraint.maxWidth > mobileMaxWidth) {
        return DesktopGradesPage();
      } else {
        return MobileGradesPage();
      }
    });
  }
}

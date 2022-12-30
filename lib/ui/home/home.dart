import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:x_mansion/constants/constants.dart';
import 'package:x_mansion/ui/home/devices/desktop/home.dart';
import 'package:x_mansion/ui/home/devices/mobile/home.dart';

class HomeScreenView extends ConsumerStatefulWidget {
  _HomeScreenView createState() => _HomeScreenView();
}

class _HomeScreenView extends ConsumerState<HomeScreenView> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (builder, constraint) {
      if (constraint.maxWidth > mobileMaxWidth) {
        return DesktopHomePage();
      } else {
        return MobileHomePage();
      }
    });
  }
}

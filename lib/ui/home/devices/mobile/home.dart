import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:x_mansion/navigation/app_router.gr.dart';
import 'package:x_mansion/navigation/main_navigator.dart';

class MobileHomePage extends ConsumerStatefulWidget {
  _MobileHomeScreen createState() => _MobileHomeScreen();
}

class _MobileHomeScreen extends ConsumerState<MobileHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image.asset(
            'assets\wip_image.png',
            width: 200,
            height: 200,
          ),
          Text('Volver a la pagina de inicio'),
          IconButton(
              onPressed: () => mainNavigator.router.push(HomeScreenRoute()),
              icon: Icon(Icons.exit_to_app_outlined))
        ],
      ),
    );
  }
}
